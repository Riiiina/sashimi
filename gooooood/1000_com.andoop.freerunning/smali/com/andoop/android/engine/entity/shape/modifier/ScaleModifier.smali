.class public Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;
.source "ScaleModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F

    .prologue
    .line 24
    const/4 v4, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F

    .prologue
    .line 40
    const/4 v6, 0x0

    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 48
    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p7, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 32
    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p5, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 28
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;)V
    .locals 0
    .param p1, "pScaleModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;)V

    return-object v0
.end method

.method protected onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pScaleA"    # F
    .param p3, "pScaleB"    # F

    .prologue
    .line 74
    invoke-interface {p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/IShape;->setScale(FF)V

    .line 75
    return-void
.end method

.method protected onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pScaleA"    # F
    .param p4, "pScaleB"    # F

    .prologue
    .line 79
    invoke-interface {p1, p3, p4}, Lcom/andoop/android/engine/entity/shape/IShape;->setScale(FF)V

    .line 80
    return-void
.end method
