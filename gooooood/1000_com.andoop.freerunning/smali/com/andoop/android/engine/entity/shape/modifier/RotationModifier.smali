.class public Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;
.source "RotationModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F

    .prologue
    .line 24
    const/4 v4, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 32
    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p5, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 28
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;)V
    .locals 0
    .param p1, "pRotationModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;)V

    return-object v0
.end method

.method protected onSetInitialValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pRotation"    # F

    .prologue
    .line 58
    invoke-interface {p1, p2}, Lcom/andoop/android/engine/entity/shape/IShape;->setRotation(F)V

    .line 59
    return-void
.end method

.method protected onSetValue(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pRotation"    # F

    .prologue
    .line 63
    invoke-interface {p1, p3}, Lcom/andoop/android/engine/entity/shape/IShape;->setRotation(F)V

    .line 64
    return-void
.end method
