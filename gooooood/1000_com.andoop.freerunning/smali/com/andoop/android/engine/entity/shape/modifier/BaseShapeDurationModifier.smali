.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.source "BaseShapeDurationModifier.java"


# instance fields
.field protected final mDuration:F

.field private mTotalSecondsElapsed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 28
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "pDuration"    # F

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 32
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 36
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;)V
    .locals 2
    .param p1, "pBaseModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;

    .prologue
    .line 40
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    iget-object v1, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-direct {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    return v0
.end method

.method protected getTotalSecondsElapsed()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    return v0
.end method

.method protected abstract onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
.end method

.method protected abstract onManagedUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
.end method

.method public final onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 3
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 65
    iget-boolean v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mFinished:Z

    if-nez v1, :cond_1

    .line 66
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 71
    :cond_0
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 72
    move v0, p1

    .line 77
    .local v0, "secondsToElapse":F
    :goto_0
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    .line 78
    invoke-virtual {p0, v0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->onManagedUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 80
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 81
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    iput v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mFinished:Z

    .line 83
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-interface {v1, p0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;->onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 88
    .end local v0    # "secondsToElapse":F
    :cond_1
    return-void

    .line 74
    :cond_2
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mDuration:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    sub-float v0, v1, v2

    .restart local v0    # "secondsToElapse":F
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mFinished:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;->mTotalSecondsElapsed:F

    .line 93
    return-void
.end method
