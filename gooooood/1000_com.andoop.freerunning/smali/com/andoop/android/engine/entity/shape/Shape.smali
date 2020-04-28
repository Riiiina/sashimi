.class public abstract Lcom/andoop/android/engine/entity/shape/Shape;
.super Lcom/andoop/android/engine/entity/Entity;
.source "Shape.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/IShape;


# instance fields
.field protected mAccelerationX:F

.field protected mAccelerationY:F

.field protected mAlpha:F

.field protected mAngularVelocity:F

.field private final mBaseX:F

.field private final mBaseY:F

.field protected mBlue:F

.field protected mGreen:F

.field protected mRed:F

.field protected mRotation:F

.field protected mRotationCenterX:F

.field protected mRotationCenterY:F

.field protected mScaleCenterX:F

.field protected mScaleCenterY:F

.field protected mScaleX:F

.field protected mScaleY:F

.field protected final mSceneCenterCoords:[F

.field private mShapeModifierCount:I

.field private final mShapeModifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;",
            ">;"
        }
    .end annotation
.end field

.field protected mShapePaint:Landroid/graphics/Paint;

.field private mUpdatePhysics:Z

.field protected mVelocityX:F

.field protected mVelocityY:F

.field protected mX:F

.field protected mY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/Entity;-><init>()V

    .line 32
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    .line 33
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    .line 34
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    .line 35
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    .line 43
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 44
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 46
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 47
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 49
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    .line 51
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAngularVelocity:F

    .line 53
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterX:F

    .line 54
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterY:F

    .line 56
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    .line 57
    iput v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    .line 59
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterX:F

    .line 60
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterY:F

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mUpdatePhysics:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mSceneCenterCoords:[F

    .line 76
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseX:F

    .line 77
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseY:F

    .line 79
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 80
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    .line 83
    return-void
.end method

.method private final updateShapeModifiers(F)V
    .locals 6
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const/4 v5, 0x1

    .line 566
    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    .line 567
    .local v3, "shapeModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;>;"
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 568
    .local v2, "shapeModifierCount":I
    if-lez v2, :cond_0

    .line 569
    sub-int v0, v2, v5

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 578
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 570
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 571
    .local v1, "shapeModifier":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    invoke-interface {v1, p1, p0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 572
    invoke-interface {v1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->isRemoveWhenFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 574
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 569
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public accelerate(FF)V
    .locals 1
    .param p1, "pAccelerationX"    # F
    .param p2, "pAccelerationY"    # F

    .prologue
    .line 260
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 261
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 262
    return-void
.end method

.method public addShapeModifier(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 1
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 392
    return-void
.end method

.method public clearShapeModifiers()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 404
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    return-void
.end method

.method public getAccelerationX()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    return v0
.end method

.method public getAccelerationY()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    return v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    return v0
.end method

.method public getAngularVelocity()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAngularVelocity:F

    return v0
.end method

.method public getBaseX()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseX:F

    return v0
.end method

.method public getBaseY()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseY:F

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    return v0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    return v0
.end method

.method public getHeightScaled()F
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterX:F

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterY:F

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterX:F

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 409
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mSceneCenterCoords:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getWidth()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 410
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mSceneCenterCoords:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getHeight()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 411
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mSceneCenterCoords:[F

    return-object v0
.end method

.method public getVelocityX()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    return v0
.end method

.method public getWidthScaled()F
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    return v0
.end method

.method public inCamera(Lcom/andoop/android/engine/Camera;)Z
    .locals 7
    .param p1, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v2

    .line 552
    .local v2, "minX":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v3

    .line 553
    .local v3, "minY":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMaxX()F

    move-result v0

    .line 554
    .local v0, "maxX":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMaxY()F

    move-result v1

    .line 555
    .local v1, "maxY":F
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 556
    .local v4, "x":F
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 558
    .local v5, "y":F
    cmpl-float v6, v4, v2

    if-lez v6, :cond_0

    cmpg-float v6, v4, v0

    if-gez v6, :cond_0

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isUpdatePhysics()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mUpdatePhysics:Z

    return v0
.end method

.method public onAreaTouched(Lcom/andoop/android/engine/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lcom/andoop/android/engine/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 8
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const/4 v7, 0x0

    .line 431
    iget-boolean v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mUpdatePhysics:Z

    if-eqz v5, :cond_4

    .line 433
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 434
    .local v0, "accelerationX":F
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 435
    .local v1, "accelerationY":F
    cmpl-float v5, v0, v7

    if-nez v5, :cond_0

    cmpl-float v5, v1, v7

    if-eqz v5, :cond_1

    .line 436
    :cond_0
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    mul-float v6, v0, p1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 437
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    mul-float v6, v1, p1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 441
    :cond_1
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAngularVelocity:F

    .line 442
    .local v2, "angularVelocity":F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_2

    .line 443
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    mul-float v6, v2, p1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    .line 447
    :cond_2
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 448
    .local v3, "velocityX":F
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 449
    .local v4, "velocityY":F
    cmpl-float v5, v3, v7

    if-nez v5, :cond_3

    cmpl-float v5, v4, v7

    if-eqz v5, :cond_4

    .line 450
    :cond_3
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    mul-float v6, v3, p1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 451
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    mul-float v6, v4, p1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 452
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->onPositionChanged()V

    .line 456
    .end local v0    # "accelerationX":F
    .end local v1    # "accelerationY":F
    .end local v2    # "angularVelocity":F
    .end local v3    # "velocityX":F
    .end local v4    # "velocityY":F
    :cond_4
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/Shape;->updateShapeModifiers(F)V

    .line 457
    return-void
.end method

.method protected onPositionChanged()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public removeShapeModifier(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 2
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifierCount:I

    .line 399
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 523
    invoke-super {p0}, Lcom/andoop/android/engine/entity/Entity;->reset()V

    .line 525
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseX:F

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 526
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseY:F

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 527
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 528
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 529
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 530
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 531
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    .line 532
    iput v3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAngularVelocity:F

    .line 533
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    .line 534
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    .line 536
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->onPositionChanged()V

    .line 538
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    .line 539
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    .line 540
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    .line 541
    iput v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    .line 543
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapeModifiers:Ljava/util/ArrayList;

    .line 544
    .local v1, "shapeModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .end local p0    # "this":Lcom/andoop/android/engine/entity/shape/Shape;
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 547
    return-void

    .line 545
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {p0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setAcceleration(F)V
    .locals 0
    .param p1, "pAcceleration"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 255
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 256
    return-void
.end method

.method public setAcceleration(FF)V
    .locals 0
    .param p1, "pAccelerationX"    # F
    .param p2, "pAccelerationY"    # F

    .prologue
    .line 248
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 249
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 250
    return-void
.end method

.method public setAccelerationX(F)V
    .locals 0
    .param p1, "pAccelerationX"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationX:F

    .line 239
    return-void
.end method

.method public setAccelerationY(F)V
    .locals 0
    .param p1, "pAccelerationY"    # F

    .prologue
    .line 243
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAccelerationY:F

    .line 244
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "pAlpha"    # F

    .prologue
    .line 111
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    .line 113
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 0
    .param p1, "pAngularVelocity"    # F

    .prologue
    .line 281
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAngularVelocity:F

    .line 282
    return-void
.end method

.method public setBasePosition()V
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseX:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 190
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBaseY:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 191
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->onPositionChanged()V

    .line 192
    return-void
.end method

.method public setColor(FFF)V
    .locals 7
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 128
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    .line 129
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    .line 130
    iput p3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    .line 132
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 133
    .local v0, "a":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 134
    .local v3, "r":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 135
    .local v2, "g":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 137
    .local v1, "b":I
    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    return-void
.end method

.method public setColor(FFFF)V
    .locals 7
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 142
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    .line 143
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    .line 144
    iput p3, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    .line 145
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    .line 147
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 148
    .local v0, "a":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 149
    .local v3, "r":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 150
    .local v2, "g":I
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 152
    .local v1, "b":I
    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 118
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mAlpha:F

    .line 119
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRed:F

    .line 120
    const v0, 0xff00

    and-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mGreen:F

    .line 121
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mBlue:F

    .line 123
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mX:F

    .line 183
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mY:F

    .line 184
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->onPositionChanged()V

    .line 185
    return-void
.end method

.method public setPosition(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 2
    .param p1, "pOtherShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 177
    invoke-interface {p1}, Lcom/andoop/android/engine/entity/shape/IShape;->getX()F

    move-result v0

    invoke-interface {p1}, Lcom/andoop/android/engine/entity/shape/IShape;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 178
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "pRotation"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotation:F

    .line 272
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 0
    .param p1, "pRotationCenterX"    # F
    .param p2, "pRotationCenterY"    # F

    .prologue
    .line 306
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterX:F

    .line 307
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterY:F

    .line 308
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 0
    .param p1, "pRotationCenterX"    # F

    .prologue
    .line 296
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterX:F

    .line 297
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 0
    .param p1, "pRotationCenterY"    # F

    .prologue
    .line 301
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mRotationCenterY:F

    .line 302
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "pScale"    # F

    .prologue
    .line 332
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    .line 333
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    .line 334
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    .line 338
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    .line 339
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    .line 340
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 0
    .param p1, "pScaleCenterX"    # F
    .param p2, "pScaleCenterY"    # F

    .prologue
    .line 364
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterX:F

    .line 365
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterY:F

    .line 366
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 0
    .param p1, "pScaleCenterX"    # F

    .prologue
    .line 354
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterX:F

    .line 355
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 0
    .param p1, "pScaleCenterY"    # F

    .prologue
    .line 359
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleCenterY:F

    .line 360
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "pScaleX"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleX:F

    .line 323
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "pScaleY"    # F

    .prologue
    .line 327
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mScaleY:F

    .line 328
    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "pShader"    # Landroid/graphics/Shader;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 461
    return-void
.end method

.method public setUpdatePhysics(Z)V
    .locals 0
    .param p1, "pUpdatePhysicsSelf"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mUpdatePhysics:Z

    .line 376
    return-void
.end method

.method public setVelocity(F)V
    .locals 0
    .param p1, "pVelocity"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 217
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 218
    return-void
.end method

.method public setVelocity(FF)V
    .locals 0
    .param p1, "pVelocityX"    # F
    .param p2, "pVelocityY"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 223
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 224
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .param p1, "pVelocityX"    # F

    .prologue
    .line 206
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityX:F

    .line 207
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .param p1, "pVelocityY"    # F

    .prologue
    .line 211
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Shape;->mVelocityY:F

    .line 212
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->stopMoving()V

    .line 591
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->stopRotating()V

    .line 592
    return-void
.end method

.method public stopMoving()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, v0, v0}, Lcom/andoop/android/engine/entity/shape/Shape;->setVelocity(FF)V

    .line 582
    invoke-virtual {p0, v0, v0}, Lcom/andoop/android/engine/entity/shape/Shape;->setAcceleration(FF)V

    .line 583
    return-void
.end method

.method public stopRotating()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/entity/shape/Shape;->setAngularVelocity(F)V

    .line 587
    return-void
.end method
