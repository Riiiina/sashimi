.class public Lcom/andoop/android/engine/entity/shape/Sprite;
.super Lcom/andoop/android/engine/entity/shape/RectangularShape;
.source "Sprite.java"


# instance fields
.field protected mDst:Landroid/graphics/RectF;

.field protected mSrc:Landroid/graphics/Rect;

.field protected mTexture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTexture"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    .line 34
    iput-object p3, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mTexture:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mWidth:F

    .line 36
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mHeight:F

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mSrc:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mWidth:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mHeight:F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mDst:Landroid/graphics/RectF;

    .line 40
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 6
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mX:F

    .line 48
    .local v0, "x":F
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mY:F

    .line 49
    .local v1, "y":F
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mDst:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 51
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mRotation:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mRotation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 54
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mRotation:F

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mRotationCenterX:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mRotationCenterY:F

    add-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 56
    :cond_1
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 57
    :cond_2
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleX:F

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleY:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleCenterX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mScaleCenterY:F

    add-float/2addr v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mSrc:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mDst:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/Sprite;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mSrc:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mDst:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/Sprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/Sprite;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    goto :goto_0
.end method
