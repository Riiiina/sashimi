.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;
.source "BaseDoubleValueSpanModifier.java"


# instance fields
.field private final mFromValueB:F

.field private final mValueSpanB:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F

    .prologue
    .line 27
    const/4 v6, 0x0

    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 35
    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p7, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 39
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 40
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 41
    sub-float v0, p5, p4

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromValueA"    # F
    .param p3, "pToValueA"    # F
    .param p4, "pFromValueB"    # F
    .param p5, "pToValueB"    # F
    .param p6, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 31
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;)V
    .locals 1
    .param p1, "pBaseDoubleValueSpanModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;)V

    .line 46
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 47
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 48
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
    .locals 1
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pValueA"    # F

    .prologue
    .line 63
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FF)V

    .line 64
    return-void
.end method

.method protected abstract onSetInitialValues(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
.end method

.method protected onSetValue(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
    .locals 2
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p2, "pPercentageDone"    # F
    .param p3, "pValueA"    # F

    .prologue
    .line 68
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseDoubleValueSpanModifier;->onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V

    .line 69
    return-void
.end method

.method protected abstract onSetValues(Lcom/andoop/android/engine/entity/shape/IShape;FFF)V
.end method
