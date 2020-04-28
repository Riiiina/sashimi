.class public Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;
.source "AlphaModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F

    .prologue
    .line 25
    const/4 v4, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 26
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 33
    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p5, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromAlpha"    # F
    .param p3, "pToAlpha"    # F
    .param p4, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 29
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;)V
    .locals 0
    .param p1, "pAlphaModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;)V

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pAlpha"    # F

    .prologue
    .line 59
    invoke-interface {p1, p2}, Lcom/andoop/android/engine/entity/shape/IShape;->setAlpha(F)V

    .line 60
    return-void
.end method

.method protected onSetValue(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pAlpha"    # F

    .prologue
    .line 64
    invoke-interface {p1, p3}, Lcom/andoop/android/engine/entity/shape/IShape;->setAlpha(F)V

    .line 65
    return-void
.end method
