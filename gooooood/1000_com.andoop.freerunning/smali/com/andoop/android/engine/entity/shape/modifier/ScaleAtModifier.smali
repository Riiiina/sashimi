.class public Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;
.source "ScaleAtModifier.java"


# instance fields
.field private final mScaleCenterX:F

.field private final mScaleCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 7
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pScaleCenterX"    # F
    .param p5, "pScaleCenterY"    # F

    .prologue
    .line 28
    sget-object v6, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 9
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F

    .prologue
    .line 44
    sget-object v8, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F
    .param p8, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 52
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

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F
    .param p8, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p9, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 57
    iput p6, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterX:F

    .line 58
    iput p7, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterY:F

    .line 59
    return-void
.end method

.method public constructor <init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromScaleX"    # F
    .param p3, "pToScaleX"    # F
    .param p4, "pFromScaleY"    # F
    .param p5, "pToScaleY"    # F
    .param p6, "pScaleCenterX"    # F
    .param p7, "pScaleCenterY"    # F
    .param p8, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 48
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

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pScaleCenterX"    # F
    .param p5, "pScaleCenterY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 36
    sget-object v7, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 10
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pScaleCenterX"    # F
    .param p5, "pScaleCenterY"    # F
    .param p6, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p7, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p1, "pDuration"    # F
    .param p2, "pFromScale"    # F
    .param p3, "pToScale"    # F
    .param p4, "pScaleCenterX"    # F
    .param p5, "pScaleCenterY"    # F
    .param p6, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 32
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;)V
    .locals 1
    .param p1, "pScaleAtModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;)V

    .line 63
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterX:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterX:F

    .line 64
    iget v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterY:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterY:F

    .line 65
    return-void
.end method


# virtual methods
.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 2
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/ScaleModifier;->onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 78
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterX:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ScaleAtModifier;->mScaleCenterY:F

    invoke-interface {p1, v0, v1}, Lcom/andoop/android/engine/entity/shape/IShape;->setScaleCenter(FF)V

    .line 79
    return-void
.end method
