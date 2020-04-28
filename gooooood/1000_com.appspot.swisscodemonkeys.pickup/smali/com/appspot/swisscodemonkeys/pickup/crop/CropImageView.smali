.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
.super Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

.field public rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotation:I

    .line 496
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V
    .locals 13
    .param p1, "hv"    # Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .prologue
    .line 689
    iget-object v1, p1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 691
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 692
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 694
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 695
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 697
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3f19999a    # 0.6f

    mul-float v6, v9, v10

    .line 698
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3f19999a    # 0.6f

    mul-float v7, v9, v10

    .line 700
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 701
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 702
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 704
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 705
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 706
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 707
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000    # 300.0f

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->zoomTo(FFFF)V

    .line 710
    .end local v0    # "coordinates":[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->ensureVisible(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    .line 711
    return-void
.end method

.method private ensureVisible(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V
    .locals 10
    .param p1, "hv"    # Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .prologue
    const/4 v9, 0x0

    .line 670
    iget-object v6, p1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 672
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 673
    .local v1, "panDeltaX1":I
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 675
    .local v2, "panDeltaX2":I
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 676
    .local v4, "panDeltaY1":I
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 678
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_2

    move v0, v1

    .line 679
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 681
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 682
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->panBy(FF)V

    .line 684
    :cond_1
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_2
    move v0, v2

    .line 678
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_3
    move v3, v5

    .line 679
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 558
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 564
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 575
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->invalidate()V

    .line 576
    return-void

    .line 559
    :cond_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 560
    .local v1, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setFocus(Z)V

    .line 561
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v1    # "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    :cond_2
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 566
    .restart local v1    # "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->getHit(FF)I

    move-result v0

    .line 567
    .local v0, "edge":I
    if-eq v0, v5, :cond_3

    .line 568
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    invoke-virtual {v1, v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setFocus(Z)V

    .line 570
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    goto :goto_2

    .line 564
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V
    .locals 1
    .param p1, "hv"    # Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->invalidate()V

    .line 724
    return-void
.end method

.method public cleanup(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "origBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 529
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 719
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 482
    invoke-super/range {p0 .. p5}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 483
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mBitmapDisplayed:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 492
    :cond_1
    return-void

    .line 484
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 485
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 486
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    .line 487
    iget-boolean v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 488
    invoke-direct {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->centerBasedOnHighlightView(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    .line 581
    .local v0, "cropImage":Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;
    iget-boolean v5, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 665
    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
    :goto_0
    return v5

    .line 585
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 650
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v10

    .line 665
    goto :goto_0

    .line 587
    :pswitch_0
    iget-boolean v5, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 588
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 590
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 591
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 592
    .local v2, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->getHit(FF)I

    move-result v1

    .line 593
    .local v1, "edge":I
    if-eq v1, v10, :cond_5

    .line 594
    iput v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionEdge:I

    .line 595
    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastX:F

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastY:F

    .line 598
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 599
    const/16 v6, 0x20

    if-ne v1, v6, :cond_4

    sget-object v6, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;->Move:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setMode(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;)V

    goto :goto_1

    .line 600
    :cond_4
    sget-object v6, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;->Grow:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;

    goto :goto_4

    .line 590
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 607
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    .end local v3    # "i":I
    :pswitch_1
    iget-boolean v5, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 608
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 627
    .end local v3    # "i":I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    goto :goto_1

    .line 609
    .restart local v3    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 610
    .restart local v2    # "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 611
    iput-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 612
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 618
    invoke-direct {p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->centerBasedOnHighlightView(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    .line 619
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
    check-cast p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    iput-boolean v6, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mWaitingToPick:Z

    move v5, v10

    .line 620
    goto/16 :goto_0

    .line 613
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
    :cond_8
    if-ne v4, v3, :cond_9

    .line 612
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 616
    :cond_9
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    invoke-virtual {v5, v10}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setHidden(Z)V

    goto :goto_8

    .line 608
    .end local v4    # "j":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 623
    .end local v2    # "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    .end local v3    # "i":I
    :cond_b
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    if-eqz v5, :cond_6

    .line 624
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->centerBasedOnHighlightView(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    .line 625
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    sget-object v6, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;->None:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setMode(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView$ModifyMode;)V

    goto :goto_6

    .line 630
    :pswitch_2
    iget-boolean v5, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_c

    .line 631
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 632
    :cond_c
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    if-eqz v5, :cond_1

    .line 633
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 634
    iget v9, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    .line 633
    invoke-virtual {v5, v6, v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->handleMotion(IFF)V

    .line 635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastX:F

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mLastY:F

    .line 644
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mMotionHighlightView:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->ensureVisible(Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;)V

    goto/16 :goto_1

    .line 652
    :pswitch_3
    invoke-virtual {p0, v10, v10}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 659
    :pswitch_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 660
    invoke-virtual {p0, v10, v10}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 650
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 553
    return-void

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 550
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 551
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public rotate(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "origBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 532
    iget v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotation:I

    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotation:I

    .line 534
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->cleanup(Landroid/graphics/Bitmap;)V

    .line 535
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotation:I

    invoke-static {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 537
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    invoke-super {p0, v2, v5}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 543
    return-void

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 540
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->resetImageRect(Landroid/graphics/Rect;)V

    .line 541
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 509
    invoke-super {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomIn()V

    .line 510
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    return-void

    .line 510
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 511
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 512
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 518
    invoke-super {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomOut()V

    .line 519
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    return-void

    .line 519
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 520
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 521
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 501
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    return-void

    .line 501
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 502
    .local v0, "hv":Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 503
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method
