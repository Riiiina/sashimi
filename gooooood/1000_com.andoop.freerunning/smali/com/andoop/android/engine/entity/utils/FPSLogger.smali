.class public Lcom/andoop/android/engine/entity/utils/FPSLogger;
.super Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;
.source "FPSLogger.java"


# instance fields
.field protected mLongestFrame:F

.field protected mShortestFrame:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;-><init>()V

    .line 19
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    .line 28
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "pAverageDuration"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;-><init>(F)V

    .line 19
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    .line 32
    return-void
.end method


# virtual methods
.method protected onHandleAverageDurationElapsed(F)V
    .locals 1
    .param p1, "pFPS"    # F

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/utils/FPSLogger;->onLogFPS()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    .line 47
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    .line 48
    return-void
.end method

.method protected onLogFPS()V
    .locals 6

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 71
    const-string v0, "FPS: %.2f (MIN: %.0f ms | MAX: %.0f ms)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 72
    iget v3, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mFrames:I

    int-to-float v3, v3

    iget v4, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mSecondsElapsed:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 73
    iget v3, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 74
    iget v3, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->onUpdate(F)V

    .line 54
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    .line 55
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    .line 56
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->reset()V

    .line 62
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mShortestFrame:F

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSLogger;->mLongestFrame:F

    .line 64
    return-void
.end method
