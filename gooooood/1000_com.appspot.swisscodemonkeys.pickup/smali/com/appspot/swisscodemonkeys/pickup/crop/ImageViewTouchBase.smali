.class abstract Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected lastMatrix:Landroid/graphics/Matrix;

.field protected final mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mLastXTouchPos:I

.field protected mLastYTouchPos:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;

.field protected final mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 54
    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMatrixValues:[F

    .line 60
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    .line 62
    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisWidth:I

    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisHeight:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->init()V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 54
    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMatrixValues:[F

    .line 60
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    .line 62
    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisWidth:I

    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisHeight:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 240
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->init()V

    .line 241
    return-void
.end method

.method private getProperBaseMatrix(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "bitmap"    # Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 263
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v8

    int-to-float v5, v8

    .line 264
    .local v5, "viewWidth":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v4, v8

    .line 266
    .local v4, "viewHeight":F
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getWidth()I

    move-result v8

    int-to-float v6, v8

    .line 267
    .local v6, "w":F
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 268
    .local v0, "h":F
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getRotation()I

    move-result v2

    .line 269
    .local v2, "rotation":I
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 273
    div-float v8, v5, v6

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 274
    .local v7, "widthScale":F
    div-float v8, v4, v0

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 275
    .local v1, "heightScale":F
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 277
    .local v3, "scale":F
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 278
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 281
    mul-float v8, v6, v3

    sub-float v8, v5, v8

    div-float/2addr v8, v10

    .line 282
    mul-float v9, v0, v3

    sub-float v9, v4, v9

    div-float/2addr v9, v10

    .line 280
    invoke-virtual {p2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 283
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->setRotation(I)V

    .line 138
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mRecycler:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mRecycler:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 190
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 231
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 196
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    .line 197
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 198
    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 196
    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 203
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 205
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 207
    .local v1, "deltaY":F
    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 209
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 210
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 218
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 220
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 221
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 229
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 230
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 211
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 212
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 213
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 222
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 223
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 224
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 225
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 145
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 290
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 291
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 301
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 302
    const/high16 v3, 0x3f800000    # 1.0f

    .line 308
    :goto_0
    return v3

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 306
    .local v1, "fw":F
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 307
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v2, v3, v4

    .local v2, "max":F
    move v3, v2

    .line 308
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomTo(F)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 82
    sub-int v1, p4, p2

    iput v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisWidth:I

    .line 83
    sub-int v1, p5, p3

    iput v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mThisHeight:I

    .line 84
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 85
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 87
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 91
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 93
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 401
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 402
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 396
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 397
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 153
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    .line 100
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->lastMatrix:Landroid/graphics/Matrix;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->requestLayout()V

    .line 102
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->invalidate()V

    .line 104
    :cond_1
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 160
    .local v0, "viewWidth":I
    if-gtz v0, :cond_0

    .line 161
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 171
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 177
    :goto_1
    if-eqz p2, :cond_1

    .line 178
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;)V
    .locals 0
    .param p1, "r"    # Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mRecycler:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$Recycler;

    .line 74
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 352
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomIn(F)V

    .line 353
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 360
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 368
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 370
    .local v1, "cy":F
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 371
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 356
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomOut(F)V

    .line 357
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .param p1, "rate"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 375
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 380
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 383
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 384
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 386
    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 391
    :goto_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 392
    invoke-virtual {p0, v6, v6}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 345
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 346
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 348
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 349
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 312
    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 313
    iget p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mMaxZoom:F

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 317
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 319
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 320
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 321
    invoke-virtual {p0, v3, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->center(ZZ)V

    .line 322
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 327
    .local v6, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 328
    .local v5, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 330
    .local v3, "startTime":J
    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method
