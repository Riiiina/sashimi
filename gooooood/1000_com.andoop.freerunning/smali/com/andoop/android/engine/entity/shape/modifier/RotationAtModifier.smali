.class public Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;
.source "RotationAtModifier.java"


# instance fields
.field private final mRotationCenterX:F

.field private final mRotationCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F

    .prologue
    .line 28
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 30
    iput p5, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 31
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 40
    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 41
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 42
    iput p5, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 43
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p7, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 47
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 48
    iput p5, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 49
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pFromRotation"    # F
    .param p3, "pToRotation"    # F
    .param p4, "pRotationCenterX"    # F
    .param p5, "pRotationCenterY"    # F
    .param p6, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 35
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 36
    iput p5, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;)V
    .locals 1
    .param p1, "pRotationAtModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;)V

    .line 53
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 54
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 55
    return-void
.end method


# virtual methods
.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 2
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/RotationModifier;->onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 68
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterX:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/RotationAtModifier;->mRotationCenterY:F

    invoke-interface {p1, v0, v1}, Lcom/andoop/android/engine/entity/shape/IShape;->setRotationCenter(FF)V

    .line 69
    return-void
.end method
