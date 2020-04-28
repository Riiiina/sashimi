.class public Lcom/andoop/android/engine/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/Camera$ChasingListener;
    }
.end annotation


# instance fields
.field protected mBounds:Landroid/graphics/RectF;

.field protected mChased:Z

.field protected mChasingAccelerateX:F

.field protected mChasingAccelerateY:F

.field protected mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

.field protected mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

.field protected mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

.field protected mChasingVelocityX:F

.field protected mChasingVelocityY:F

.field protected mIsChasing:Z

.field protected mMaxX:F

.field protected mMaxY:F

.field protected mMinX:F

.field protected mMinY:F

.field protected mScaleX:F

.field protected mScaleX1:F

.field protected mScaleY:F

.field protected mScaleY1:F

.field protected mSurfaceHeight:F

.field protected mSurfaceWidth:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 50
    add-float v0, p1, p3

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 51
    iput p2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 52
    add-float v0, p2, p4

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    .line 55
    return-void
.end method

.method private final cutToMaxVelocityX(FF)F
    .locals 1
    .param p1, "pValue"    # F
    .param p2, "pSecondsElapsed"    # F

    .prologue
    .line 340
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 341
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private final cutToMaxVelocityY(FF)F
    .locals 1
    .param p1, "pValue"    # F
    .param p2, "pSecondsElapsed"    # F

    .prologue
    .line 348
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 349
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityY:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityY:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private final scale(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    return-void
.end method

.method private final translate(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    return-void
.end method


# virtual methods
.method public final cameraToRealX(F)F
    .locals 2
    .param p1, "pX"    # F

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleX()F

    move-result v0

    .line 140
    .local v0, "scaleX":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v0

    .line 143
    :goto_0
    return v1

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public final cameraToRealY(F)F
    .locals 2
    .param p1, "pY"    # F

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleY()F

    move-result v0

    .line 152
    .local v0, "scaleY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v0

    .line 155
    :goto_0
    return v1

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCenterX()F
    .locals 3

    .prologue
    .line 84
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 85
    .local v0, "minX":F
    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    add-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    return v1
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 90
    .local v0, "minY":F
    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    add-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    return v1
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    return v0
.end method

.method protected getScaleX()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mScaleX:F

    return v0
.end method

.method protected getScaleY()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mScaleY:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .prologue
    .line 190
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 191
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 192
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 193
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 195
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 196
    return-void
.end method

.method public moveTo(FF)V
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 213
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    iget v3, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    sub-float v1, v2, v3

    .line 214
    .local v1, "width":F
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    iget v3, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    sub-float v0, v2, v3

    .line 215
    .local v0, "height":F
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 216
    add-float v2, p1, v1

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 217
    iput p2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 218
    add-float v2, p2, v0

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 220
    iget-object v2, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 221
    return-void
.end method

.method public moveToX(F)V
    .locals 3
    .param p1, "pX"    # F

    .prologue
    .line 224
    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    sub-float v0, v1, v2

    .line 225
    .local v0, "width":F
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 226
    add-float v1, p1, v0

    iput v1, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 228
    iget-object v1, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    invoke-virtual {v1, p1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 229
    return-void
.end method

.method public moveToY(F)V
    .locals 3
    .param p1, "pY"    # F

    .prologue
    .line 232
    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    sub-float v0, v1, v2

    .line 233
    .local v0, "height":F
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 234
    add-float v1, p1, v0

    iput v1, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 236
    iget-object v1, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 237
    return-void
.end method

.method public moveX(F)V
    .locals 2
    .param p1, "dX"    # F

    .prologue
    .line 199
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 200
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 202
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 203
    return-void
.end method

.method public moveY(F)V
    .locals 2
    .param p1, "dY"    # F

    .prologue
    .line 206
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 207
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 209
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 210
    return-void
.end method

.method public onUpdate(F)V
    .locals 14
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 290
    iget-boolean v12, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    if-eqz v12, :cond_2

    .line 292
    iget-object v9, p0, Lcom/andoop/android/engine/Camera;->mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

    .line 293
    .local v9, "shape":Lcom/andoop/android/engine/entity/shape/Shape;
    iget-object v8, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 294
    .local v8, "position":Lcom/badlogic/gdx/math/Vector2;
    if-eqz v9, :cond_3

    .line 295
    invoke-virtual {v9}, Lcom/andoop/android/engine/entity/shape/Shape;->getSceneCenterCoordinates()[F

    move-result-object v0

    .line 296
    .local v0, "coords":[F
    const/4 v12, 0x0

    aget v10, v0, v12

    .line 297
    .local v10, "targetCenterX":F
    const/4 v12, 0x1

    aget v11, v0, v12

    .line 308
    .end local v0    # "coords":[F
    .local v11, "targetCenterY":F
    :goto_0
    iget-boolean v12, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    if-nez v12, :cond_6

    .line 309
    iget v12, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    iget v12, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 310
    :cond_0
    iget v12, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    iget v13, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateX:F

    mul-float/2addr v13, p1

    add-float/2addr v12, v13

    iput v12, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    .line 311
    iget v12, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityY:F

    iget v13, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateY:F

    mul-float/2addr v13, p1

    add-float/2addr v12, v13

    iput v12, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityY:F

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterX()F

    move-result v1

    .line 314
    .local v1, "currentCenterX":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterY()F

    move-result v2

    .line 315
    .local v2, "currentCenterY":F
    sub-float v3, v10, v1

    .line 316
    .local v3, "dx":F
    sub-float v5, v11, v2

    .line 317
    .local v5, "dy":F
    invoke-direct {p0, v3, p1}, Lcom/andoop/android/engine/Camera;->cutToMaxVelocityX(FF)F

    move-result v4

    .line 318
    .local v4, "dx2":F
    invoke-direct {p0, v5, p1}, Lcom/andoop/android/engine/Camera;->cutToMaxVelocityY(FF)F

    move-result v6

    .line 319
    .local v6, "dy2":F
    cmpl-float v12, v3, v4

    if-nez v12, :cond_5

    cmpl-float v12, v5, v6

    if-nez v12, :cond_5

    .line 320
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    .line 321
    invoke-virtual {p0, v10, v11}, Lcom/andoop/android/engine/Camera;->setCenter(FF)V

    .line 323
    iget-object v7, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 324
    .local v7, "listener":Lcom/andoop/android/engine/Camera$ChasingListener;
    if-eqz v7, :cond_2

    .line 325
    invoke-interface {v7, v10, v11}, Lcom/andoop/android/engine/Camera$ChasingListener;->onChased(FF)V

    .line 326
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 337
    .end local v1    # "currentCenterX":F
    .end local v2    # "currentCenterY":F
    .end local v3    # "dx":F
    .end local v4    # "dx2":F
    .end local v5    # "dy":F
    .end local v6    # "dy2":F
    .end local v7    # "listener":Lcom/andoop/android/engine/Camera$ChasingListener;
    .end local v8    # "position":Lcom/badlogic/gdx/math/Vector2;
    .end local v9    # "shape":Lcom/andoop/android/engine/entity/shape/Shape;
    .end local v10    # "targetCenterX":F
    .end local v11    # "targetCenterY":F
    :cond_2
    :goto_1
    return-void

    .line 299
    .restart local v8    # "position":Lcom/badlogic/gdx/math/Vector2;
    .restart local v9    # "shape":Lcom/andoop/android/engine/entity/shape/Shape;
    :cond_3
    if-eqz v8, :cond_4

    .line 300
    iget v10, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 301
    .restart local v10    # "targetCenterX":F
    iget v11, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .restart local v11    # "targetCenterY":F
    goto :goto_0

    .line 304
    .end local v10    # "targetCenterX":F
    .end local v11    # "targetCenterY":F
    :cond_4
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getWidth()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v10, v12, v13

    .line 305
    .restart local v10    # "targetCenterX":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getHeight()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v11, v12, v13

    .restart local v11    # "targetCenterY":F
    goto :goto_0

    .line 330
    .restart local v1    # "currentCenterX":F
    .restart local v2    # "currentCenterY":F
    .restart local v3    # "dx":F
    .restart local v4    # "dx2":F
    .restart local v5    # "dy":F
    .restart local v6    # "dy2":F
    :cond_5
    add-float v12, v1, v4

    add-float v13, v2, v6

    invoke-virtual {p0, v12, v13}, Lcom/andoop/android/engine/Camera;->setCenter(FF)V

    goto :goto_1

    .line 334
    .end local v1    # "currentCenterX":F
    .end local v2    # "currentCenterY":F
    .end local v3    # "dx":F
    .end local v4    # "dx2":F
    .end local v5    # "dy":F
    .end local v6    # "dy2":F
    :cond_6
    invoke-virtual {p0, v10, v11}, Lcom/andoop/android/engine/Camera;->setCenter(FF)V

    goto :goto_1
.end method

.method public final prepare(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/Camera;->scale(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/Camera;->translate(Landroid/graphics/Canvas;)V

    .line 187
    return-void
.end method

.method public final prepareHUD(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 379
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mScaleX:F

    iget v1, p0, Lcom/andoop/android/engine/Camera;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 380
    return-void
.end method

.method public final realToCameraX(F)F
    .locals 3
    .param p1, "pX"    # F

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleX()F

    move-result v0

    .line 116
    .local v0, "scaleX":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 117
    div-float v1, p1, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v2

    add-float/2addr v1, v2

    .line 119
    :goto_0
    return v1

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public final realToCameraY(F)F
    .locals 3
    .param p1, "pY"    # F

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getScaleY()F

    move-result v0

    .line 128
    .local v0, "scaleY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 129
    div-float v1, p1, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v2

    add-float/2addr v1, v2

    .line 131
    :goto_0
    return v1

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 356
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    iget v3, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    sub-float v1, v2, v3

    .line 357
    .local v1, "width":F
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    iget v3, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    sub-float v0, v2, v3

    .line 359
    .local v0, "height":F
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 360
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 361
    iput v1, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 362
    iput v0, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 364
    iget-object v2, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 366
    iput-object v6, p0, Lcom/andoop/android/engine/Camera;->mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

    .line 367
    iget-object v2, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterX()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 368
    iget-object v2, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterY()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 369
    iput-boolean v5, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    .line 370
    iput-boolean v5, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    .line 371
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    .line 372
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    .line 373
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateX:F

    .line 374
    iput v4, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateY:F

    .line 375
    iput-object v6, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 376
    return-void
.end method

.method public setCenter(FF)V
    .locals 3
    .param p1, "pCenterX"    # F
    .param p2, "pCenterY"    # F

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterX()F

    move-result v2

    sub-float v0, p1, v2

    .line 95
    .local v0, "dX":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/Camera;->getCenterY()F

    move-result v2

    sub-float v1, p2, v2

    .line 97
    .local v1, "dY":F
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    .line 98
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    .line 99
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    .line 100
    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    .line 102
    iget-object v2, p0, Lcom/andoop/android/engine/Camera;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 103
    return-void
.end method

.method public setChasing(FFLcom/andoop/android/engine/Camera$ChasingListener;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pListener"    # Lcom/andoop/android/engine/Camera$ChasingListener;

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    .line 267
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 268
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    .line 270
    iput-object p3, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

    .line 272
    return-void
.end method

.method public setChasing(Lcom/andoop/android/engine/entity/shape/Shape;)V
    .locals 1
    .param p1, "pChasingShape"    # Lcom/andoop/android/engine/entity/shape/Shape;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andoop/android/engine/Camera;->setChasing(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/Camera$ChasingListener;)V

    .line 248
    return-void
.end method

.method public setChasing(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/Camera$ChasingListener;)V
    .locals 2
    .param p1, "pChasingShape"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p2, "pListener"    # Lcom/andoop/android/engine/Camera$ChasingListener;

    .prologue
    const/4 v1, 0x0

    .line 240
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    .line 241
    iput-object p1, p0, Lcom/andoop/android/engine/Camera;->mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

    .line 242
    iput-boolean v1, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    .line 243
    iput-object p2, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 244
    return-void

    :cond_0
    move v0, v1

    .line 240
    goto :goto_0
.end method

.method public setChasing(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "pChasingPosition"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andoop/android/engine/Camera;->setChasing(Lcom/badlogic/gdx/math/Vector2;Lcom/andoop/android/engine/Camera$ChasingListener;)V

    .line 263
    return-void
.end method

.method public setChasing(Lcom/badlogic/gdx/math/Vector2;Lcom/andoop/android/engine/Camera$ChasingListener;)V
    .locals 3
    .param p1, "pChasingPosition"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "pListener"    # Lcom/andoop/android/engine/Camera$ChasingListener;

    .prologue
    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 254
    iget-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 255
    iput-boolean v2, p0, Lcom/andoop/android/engine/Camera;->mChased:Z

    .line 256
    iput-object p2, p0, Lcom/andoop/android/engine/Camera;->mChasingListener:Lcom/andoop/android/engine/Camera$ChasingListener;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/engine/Camera;->mChasingShape:Lcom/andoop/android/engine/entity/shape/Shape;

    .line 259
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 251
    goto :goto_0
.end method

.method public setChasingAccelerate(FF)V
    .locals 0
    .param p1, "pAccelerateX"    # F
    .param p2, "pAccelerateY"    # F

    .prologue
    .line 279
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateX:F

    .line 280
    iput p2, p0, Lcom/andoop/android/engine/Camera;->mChasingAccelerateY:F

    .line 281
    return-void
.end method

.method public setChasingVelocity(FF)V
    .locals 0
    .param p1, "pVelocityX"    # F
    .param p2, "pVelocityY"    # F

    .prologue
    .line 274
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityX:F

    .line 275
    iput p2, p0, Lcom/andoop/android/engine/Camera;->mChasingVelocityY:F

    .line 276
    return-void
.end method

.method public stopChasing()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/Camera;->mIsChasing:Z

    .line 285
    return-void
.end method

.method public surfaceChanged(FF)V
    .locals 4
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 167
    iput p1, p0, Lcom/andoop/android/engine/Camera;->mSurfaceWidth:F

    .line 168
    iput p2, p0, Lcom/andoop/android/engine/Camera;->mSurfaceHeight:F

    .line 170
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mSurfaceWidth:F

    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxX:F

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinX:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mScaleX:F

    .line 171
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mSurfaceHeight:F

    iget v1, p0, Lcom/andoop/android/engine/Camera;->mMaxY:F

    iget v2, p0, Lcom/andoop/android/engine/Camera;->mMinY:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mScaleY:F

    .line 172
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mScaleX:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mScaleX1:F

    .line 173
    iget v0, p0, Lcom/andoop/android/engine/Camera;->mScaleY:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/andoop/android/engine/Camera;->mScaleY1:F

    .line 174
    return-void
.end method
