.class public Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;
.source "ColorModifier.java"


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromRed"    # F
    .param p3, "pToRed"    # F
    .param p4, "pFromGreen"    # F
    .param p5, "pToGreen"    # F
    .param p6, "pFromBlue"    # F
    .param p7, "pToBlue"    # F

    .prologue
    .line 24
    const/4 v8, 0x0

    sget-object v9, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromRed"    # F
    .param p3, "pToRed"    # F
    .param p4, "pFromGreen"    # F
    .param p5, "pToGreen"    # F
    .param p6, "pFromBlue"    # F
    .param p7, "pToBlue"    # F
    .param p8, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 32
    sget-object v9, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromRed"    # F
    .param p3, "pToRed"    # F
    .param p4, "pFromGreen"    # F
    .param p5, "pToGreen"    # F
    .param p6, "pFromBlue"    # F
    .param p7, "pToBlue"    # F
    .param p8, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p9, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p9}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromRed"    # F
    .param p3, "pToRed"    # F
    .param p4, "pFromGreen"    # F
    .param p5, "pToGreen"    # F
    .param p6, "pFromBlue"    # F
    .param p7, "pToBlue"    # F
    .param p8, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 28
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;)V
    .locals 0
    .param p1, "pColorModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;)V

    .line 41
    return-void
.end method


# virtual methods
.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/ColorModifier;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pRed"    # F
    .param p3, "pGreen"    # F
    .param p4, "pBlue"    # F

    .prologue
    .line 58
    invoke-interface {p1, p2, p3, p4}, Lcom/andoop/android/engine/entity/shape/IShape;->setColor(FFF)V

    .line 59
    return-void
.end method

.method protected onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFFF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPerctentageDone"    # F
    .param p3, "pRed"    # F
    .param p4, "pGreen"    # F
    .param p5, "pBlue"    # F

    .prologue
    .line 63
    invoke-interface {p1, p3, p4, p5}, Lcom/andoop/android/engine/entity/shape/IShape;->setColor(FFF)V

    .line 64
    return-void
.end method
