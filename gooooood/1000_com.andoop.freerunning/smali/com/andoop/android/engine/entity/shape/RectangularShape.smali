.class public Lcom/andoop/android/engine/entity/shape/RectangularShape;
.super Lcom/andoop/android/engine/entity/shape/Shape;
.source "RectangularShape.java"


# instance fields
.field protected mCollisonAreaColor:I

.field protected mHeight:F

.field protected mIsDrawCollisionArea:Z

.field private mOffsetBottom:F

.field private mOffsetLeft:F

.field private final mOffsetRectF:Landroid/graphics/RectF;

.field private mOffsetRight:F

.field private mOffsetTop:F

.field protected mWidth:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/Shape;-><init>(FF)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mIsDrawCollisionArea:Z

    .line 30
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mCollisonAreaColor:I

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetRectF:Landroid/graphics/RectF;

    .line 41
    iput p3, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    .line 42
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    .line 44
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 45
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    mul-float v0, p3, v3

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterX:F

    .line 48
    mul-float v0, p4, v3

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterY:F

    .line 50
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterX:F

    .line 51
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterY:F

    .line 53
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setCollisionArea(FFFF)V

    .line 54
    return-void
.end method


# virtual methods
.method public collidesWith(Lcom/andoop/android/engine/entity/shape/IShape;)Z
    .locals 3
    .param p1, "pOtherShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 196
    instance-of v2, p1, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    if-eqz v2, :cond_0

    .line 197
    move-object v0, p1

    check-cast v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    move-object v1, v0

    .line 199
    .local v1, "pOtherRectangularShape":Lcom/andoop/android/engine/entity/shape/RectangularShape;
    invoke-static {p0, v1}, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->checkCollision(Lcom/andoop/android/engine/entity/shape/RectangularShape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)Z

    move-result v2

    .line 201
    .end local v1    # "pOtherRectangularShape":Lcom/andoop/android/engine/entity/shape/RectangularShape;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 192
    invoke-static {p0, p1, p2}, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->checkContains(Lcom/andoop/android/engine/entity/shape/RectangularShape;FF)Z

    move-result v0

    return v0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .prologue
    .line 129
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCollisionArea()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 176
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetLeft:F

    add-float v1, v4, v5

    .line 177
    .local v1, "left":F
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetTop:F

    add-float v3, v4, v5

    .line 178
    .local v3, "top":F
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetRight:F

    add-float v2, v4, v5

    .line 179
    .local v2, "right":F
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetBottom:F

    add-float v0, v4, v5

    .line 180
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetRectF:Landroid/graphics/RectF;

    return-object v4
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    return v0
.end method

.method public inCamera(Lcom/andoop/android/engine/Camera;)Z
    .locals 9
    .param p1, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v3

    .line 221
    .local v3, "minX":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v4

    .line 222
    .local v4, "minY":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMaxX()F

    move-result v1

    .line 223
    .local v1, "maxX":F
    invoke-virtual {p1}, Lcom/andoop/android/engine/Camera;->getMaxY()F

    move-result v2

    .line 224
    .local v2, "maxY":F
    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    .line 225
    .local v5, "width":F
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    .line 226
    .local v0, "height":F
    iget v6, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    .line 227
    .local v6, "x":F
    iget v7, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    .line 229
    .local v7, "y":F
    cmpl-float v8, v6, v1

    if-gtz v8, :cond_0

    add-float v8, v6, v5

    cmpg-float v8, v8, v3

    if-ltz v8, :cond_0

    cmpl-float v8, v7, v2

    if-gtz v8, :cond_0

    add-float v8, v7, v0

    cmpg-float v8, v8, v4

    if-gez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isScaled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 233
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 10
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 63
    iget v6, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    .local v6, "x":F
    iget v7, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    .line 65
    .local v7, "y":F
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    .line 66
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    add-float v1, v6, v0

    .line 67
    .local v1, "x1":F
    move v3, v6

    .line 73
    .local v3, "x2":F
    :goto_0
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    .line 74
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    add-float v2, v7, v0

    .line 75
    .local v2, "y1":F
    move v4, v7

    .line 81
    .local v4, "y2":F
    :goto_1
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotation:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleX:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleY:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_6

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotation:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    .line 84
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotation:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterX:F

    add-float/2addr v5, v6

    iget v8, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterY:F

    add-float/2addr v8, v7

    invoke-virtual {p1, v0, v5, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 86
    :cond_1
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleX:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_2

    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleY:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    .line 87
    :cond_2
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleX:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleY:F

    iget v8, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterX:F

    add-float/2addr v8, v6

    iget v9, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterY:F

    add-float/2addr v9, v7

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 89
    :cond_3
    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    :goto_2
    return-void

    .line 69
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .end local v3    # "x2":F
    .end local v4    # "y2":F
    :cond_4
    move v1, v6

    .line 70
    .restart local v1    # "x1":F
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    add-float v3, v6, v0

    .restart local v3    # "x2":F
    goto :goto_0

    .line 77
    :cond_5
    move v2, v7

    .line 78
    .restart local v2    # "y1":F
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    add-float v4, v7, v0

    .restart local v4    # "y2":F
    goto :goto_1

    .line 93
    :cond_6
    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    goto :goto_2
.end method

.method protected onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 3
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 167
    iget-boolean v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mIsDrawCollisionArea:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 169
    .local v0, "color":I
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mCollisonAreaColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getCollisionArea()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 100
    invoke-super {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->reset()V

    .line 102
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getBaseWidth()F

    move-result v1

    .line 103
    .local v1, "baseWidth":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getBaseHeight()F

    move-result v0

    .line 105
    .local v0, "baseHeight":F
    mul-float v2, v1, v3

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterX:F

    .line 106
    mul-float v2, v0, v3

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterY:F

    .line 108
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterX:F

    .line 109
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mScaleCenterY:F

    .line 110
    return-void
.end method

.method public setCollisionArea(FFFF)V
    .locals 3
    .param p1, "pOffsetRatioLeft"    # F
    .param p2, "pOffsetRatioTop"    # F
    .param p3, "pOffsetRatioRight"    # F
    .param p4, "pOffsetRatioBottom"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getWidth()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetLeft:F

    .line 186
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getHeight()F

    move-result v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetTop:F

    .line 187
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getWidth()F

    move-result v0

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetRight:F

    .line 188
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getHeight()F

    move-result v0

    sub-float v1, v2, p4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mOffsetBottom:F

    .line 189
    return-void
.end method

.method public setCollisionAreaColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mCollisonAreaColor:I

    .line 164
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    return-void
.end method

.method public setDrawCollisionArea(Z)V
    .locals 0
    .param p1, "isDrawCollisionArea"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mIsDrawCollisionArea:Z

    .line 160
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "pHeight"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    .line 142
    return-void
.end method

.method public setPositionCenter(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 153
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mX:F

    .line 154
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mY:F

    .line 155
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onPositionChanged()V

    .line 156
    return-void
.end method

.method public setScaleByHeight(F)V
    .locals 1
    .param p1, "pHeight"    # F

    .prologue
    .line 149
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mHeight:F

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setScale(F)V

    .line 150
    return-void
.end method

.method public setScaleByWidth(F)V
    .locals 1
    .param p1, "pWidth"    # F

    .prologue
    .line 145
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setScale(F)V

    .line 146
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "pWidth"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 1
    .param p1, "pStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "pWidth"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/RectangularShape;->mWidth:F

    .line 138
    return-void
.end method
