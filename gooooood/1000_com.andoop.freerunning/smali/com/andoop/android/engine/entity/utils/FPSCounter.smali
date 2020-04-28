.class public Lcom/andoop/android/engine/entity/utils/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# instance fields
.field protected mFrames:I

.field protected mSecondsElapsed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFPS()F
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mFrames:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mSecondsElapsed:F

    div-float/2addr v0, v1

    return v0
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 41
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mFrames:I

    .line 42
    iget v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mSecondsElapsed:F

    .line 43
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mFrames:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/utils/FPSCounter;->mSecondsElapsed:F

    .line 49
    return-void
.end method
