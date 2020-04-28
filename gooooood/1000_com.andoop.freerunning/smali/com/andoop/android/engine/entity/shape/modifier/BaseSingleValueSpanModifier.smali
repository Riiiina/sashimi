.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;
.source "BaseSingleValueSpanModifier.java"


# instance fields
.field protected final mEaseFunction:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

.field private final mFromValue:F

.field private final mValueSpan:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F

    .prologue
    .line 29
    const/4 v4, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 37
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p5, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 41
    invoke-direct {p0, p1, p4}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 42
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 43
    sub-float v0, p3, p2

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 44
    iput-object p5, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .line 45
    return-void
.end method

.method public constructor <init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromValue"    # F
    .param p3, "pToValue"    # F
    .param p4, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 33
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;)V
    .locals 1
    .param p1, "pBaseSingleValueSpanModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;)V

    .line 49
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 50
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 51
    iget-object v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .line 52
    return-void
.end method


# virtual methods
.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 67
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->onSetInitialValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V

    .line 68
    return-void
.end method

.method protected onManagedUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 6
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->getTotalSecondsElapsed()F

    move-result v2

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mDuration:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->getPercentageDone(FFFF)F

    move-result v0

    .line 74
    .local v0, "percentageDone":F
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseSingleValueSpanModifier;->onSetValue(Lcom/andoop/android/engine/entity/shape/IShape;FF)V

    .line 75
    return-void
.end method

.method protected abstract onSetInitialValue(Lcom/andoop/android/engine/entity/shape/IShape;F)V
.end method

.method protected abstract onSetValue(Lcom/andoop/android/engine/entity/shape/IShape;FF)V
.end method
