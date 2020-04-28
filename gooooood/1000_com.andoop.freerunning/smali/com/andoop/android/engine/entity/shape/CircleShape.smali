.class public Lcom/andoop/android/engine/entity/shape/CircleShape;
.super Lcom/andoop/android/engine/entity/shape/Shape;
.source "CircleShape.java"


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field public mRadius:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/RectF;)V
    .locals 2
    .param p1, "pCx"    # F
    .param p2, "pCy"    # F
    .param p3, "pRadius"    # F
    .param p4, "pColor"    # I
    .param p5, "pStyle"    # I
    .param p6, "pRestrictedBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 30
    sub-float v0, p1, p3

    sub-float v1, p2, p3

    invoke-direct {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;-><init>(FF)V

    .line 32
    iput p3, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    .line 33
    iput-object p6, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mBounds:Landroid/graphics/RectF;

    .line 35
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public collidesWith(Lcom/andoop/android/engine/entity/shape/IShape;)Z
    .locals 9
    .param p1, "pOtherShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    const/4 v8, 0x0

    .line 53
    instance-of v6, p1, Lcom/andoop/android/engine/entity/shape/CircleShape;

    if-eqz v6, :cond_1

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/andoop/android/engine/entity/shape/CircleShape;

    move-object v4, v0

    .line 55
    .local v4, "pOtherCircle":Lcom/andoop/android/engine/entity/shape/CircleShape;
    iget v6, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    iget v7, v4, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    add-float v5, v6, v7

    .line 56
    .local v5, "r":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/CircleShape;->getCenterX()F

    move-result v6

    invoke-virtual {v4}, Lcom/andoop/android/engine/entity/shape/CircleShape;->getCenterX()F

    move-result v7

    sub-float v2, v6, v7

    .line 57
    .local v2, "dx":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/CircleShape;->getCenterY()F

    move-result v6

    invoke-virtual {v4}, Lcom/andoop/android/engine/entity/shape/CircleShape;->getCenterY()F

    move-result v7

    sub-float v3, v6, v7

    .line 58
    .local v3, "dy":F
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float v1, v6, v7

    .line 60
    .local v1, "d2":F
    mul-float v6, v5, v5

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    .line 64
    .end local v1    # "d2":F
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "pOtherCircle":Lcom/andoop/android/engine/entity/shape/CircleShape;
    .end local v5    # "r":F
    :goto_0
    return v6

    .restart local v1    # "d2":F
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v4    # "pOtherCircle":Lcom/andoop/android/engine/entity/shape/CircleShape;
    .restart local v5    # "r":F
    :cond_0
    move v6, v8

    .line 60
    goto :goto_0

    .end local v1    # "d2":F
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "pOtherCircle":Lcom/andoop/android/engine/entity/shape/CircleShape;
    .end local v5    # "r":F
    :cond_1
    move v6, v8

    .line 64
    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 100
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mX:F

    sub-float v1, p1, v3

    .line 101
    .local v1, "dx":F
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mY:F

    sub-float v2, p2, v3

    .line 102
    .local v2, "dy":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 103
    .local v0, "d":F
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBaseHeight()F
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getBaseWidth()F
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mX:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mY:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 4
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 76
    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mX:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    return-void
.end method

.method public setCenter(FF)V
    .locals 1
    .param p1, "pCx"    # F
    .param p2, "pCy"    # F

    .prologue
    .line 48
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mX:F

    .line 49
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mRadius:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/CircleShape;->mY:F

    .line 50
    return-void
.end method
