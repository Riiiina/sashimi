.class public Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;
.source "RotationByModifier.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pRotation"    # F

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;-><init>(FF)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;)V
    .locals 0
    .param p1, "pRotationByModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueChangeModifier;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationByModifier;)V

    return-object v0
.end method

.method protected onChangeValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
    .locals 1
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pValue"    # F

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/andoop/android/engine/entity/shape/IShape;->getRotation()F

    move-result v0

    add-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/andoop/android/engine/entity/shape/IShape;->setRotation(F)V

    .line 47
    return-void
.end method
