.class public Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;
.source "DelayModifier.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pDuration"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(F)V

    .line 28
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;)V
    .locals 0
    .param p1, "pDelayModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeDurationModifier;)V

    .line 32
    return-void
.end method


# virtual methods
.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/DelayModifier;

    move-result-object v0

    return-object v0
.end method

.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 0
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 50
    return-void
.end method

.method protected onManagedUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 0
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 55
    return-void
.end method
