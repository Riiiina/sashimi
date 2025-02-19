.class public abstract Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;
.super Lcom/andoop/android/engine/entity/utils/FPSCounter;
.source "AverageFPSCounter.java"

# interfaces
.implements Lcom/andoop/android/engine/consts/TimeConstants;


# static fields
.field private static final AVERAGE_DURATION_DEFAULT:F = 5.0f


# instance fields
.field protected final mAverageDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;-><init>(F)V

    .line 29
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "pAverageDuration"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/utils/FPSCounter;-><init>()V

    .line 32
    iput p1, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mAverageDuration:F

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract onHandleAverageDurationElapsed(F)V
.end method

.method public onUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/utils/FPSCounter;->onUpdate(F)V

    .line 49
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mAverageDuration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->getFPS()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->onHandleAverageDurationElapsed(F)V

    .line 52
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mAverageDuration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mSecondsElapsed:F

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/AverageFPSCounter;->mFrames:I

    .line 55
    :cond_0
    return-void
.end method
