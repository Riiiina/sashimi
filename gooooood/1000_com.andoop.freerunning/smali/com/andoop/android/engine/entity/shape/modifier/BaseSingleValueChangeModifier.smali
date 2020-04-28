.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;
.source "BaseSingleValueChangeModifier.java"


# instance fields
.field private final mValueChangePerSecond:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;-><init>(FFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 26
    return-void
.end method

.method public constructor <init>(FFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pValueChange"    # F
    .param p3, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p3}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 30
    div-float v0, p2, p1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;)V
    .locals 1
    .param p1, "pByModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;)V

    .line 35
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract onChangeValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
.end method

.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 51
    return-void
.end method

.method protected onManagedUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 55
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;->mValueChangePerSecond:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;->onChangeValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V

    .line 56
    return-void
.end method
