.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;
.source "BaseTripleValueSpanModifier.java"


# instance fields
.field private final mFromValueC:F

.field private final mValueSpanC:F


# direct methods
.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pFromValueC"    # F
    .param p7, "pToValueC"    # F
    .param p8, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p9, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 32
    iput p6, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    .line 33
    sub-float v0, p7, p6

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    .line 34
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pFromValueC"    # F
    .param p7, "pToValueC"    # F
    .param p8, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 27
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

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;)V
    .locals 1
    .param p1, "pBaseTripleValueSpanModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;)V

    .line 38
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    .line 39
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    .line 40
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 1
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pValueA"    # F
    .param p3, "pValueB"    # F

    .prologue
    .line 55
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V

    .line 56
    return-void
.end method

.method protected abstract onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
.end method

.method protected onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
    .locals 6
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pValueA"    # F
    .param p4, "pValueB"    # F

    .prologue
    .line 60
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->mValueSpanC:F

    mul-float/2addr v1, p2

    add-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseTripleValueSpanModifier;->onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFFF)V

    .line 61
    return-void
.end method

.method protected abstract onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFFF)V
.end method
