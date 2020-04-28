.class public Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;
.source "MoveModifier.java"


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F

    .prologue
    .line 24
    const/4 v6, 0x0

    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 32
    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p7, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromX"    # F
    .param p3, "pToX"    # F
    .param p4, "pFromY"    # F
    .param p5, "pToY"    # F
    .param p6, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 28
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;)V
    .locals 0
    .param p1, "pMoveModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;)V

    return-object v0
.end method

.method protected onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 58
    invoke-interface {p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/IShape;->setPosition(FF)V

    .line 59
    return-void
.end method

.method protected onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pX"    # F
    .param p4, "pY"    # F

    .prologue
    .line 63
    invoke-interface {p1, p3, p4}, Lcom/andoop/android/engine/entity/shape/IShape;->setPosition(FF)V

    .line 64
    return-void
.end method
