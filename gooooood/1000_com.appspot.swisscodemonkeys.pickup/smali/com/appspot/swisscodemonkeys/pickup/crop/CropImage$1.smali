.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 12
    .param p1, "f"    # Landroid/media/FaceDetector$Face;

    .prologue
    .line 340
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 342
    .local v7, "midPoint":Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 343
    .local v10, "r":I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 344
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v2

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 345
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v2

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 347
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 348
    .local v8, "midX":I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 350
    .local v9, "midY":I
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;-><init>(Landroid/view/View;)V

    .line 352
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 353
    .local v11, "width":I
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 355
    .local v6, "height":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 357
    .local v2, "imageRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v6, v9

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 358
    .end local v6    # "height":I
    .local v3, "faceRect":Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 359
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 360
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 363
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 364
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 367
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 368
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 371
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 372
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 373
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 372
    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 378
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 377
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 379
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->add(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    .line 380
    return-void

    .line 378
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 384
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;-><init>(Landroid/view/View;)V

    .line 386
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 387
    .local v9, "width":I
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 389
    .local v8, "height":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v13, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 392
    .local v2, "imageRect":Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 393
    .local v7, "cropWidth":I
    move v6, v7

    .line 395
    .local v6, "cropHeight":I
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    .line 397
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 403
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 404
    .local v10, "x":I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 406
    .local v11, "y":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v5, v10, v7

    int-to-float v5, v5

    add-int v12, v11, v6

    int-to-float v12, v12

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 408
    .local v3, "cropRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 409
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 408
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 410
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->add(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    .line 411
    return-void

    .line 399
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_1
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0

    .restart local v3    # "cropRect":Landroid/graphics/RectF;
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_2
    move v5, v13

    .line 409
    goto :goto_1
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 421
    const/high16 v0, 0x43800000    # 256.0f

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    .line 423
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 425
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 425
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "faceBitmap":Landroid/graphics/Bitmap;
    move-object v0, v7

    .line 427
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 431
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    .line 432
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 434
    .local v1, "faceBitmap":Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mScale:F

    .line 435
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$5(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 437
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    .line 436
    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 438
    .local v0, "detector":Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mNumFaces:I

    .line 441
    .end local v0    # "detector":Landroid/media/FaceDetector;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 442
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$6(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method
