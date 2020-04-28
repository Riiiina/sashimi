.class public Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;
.super Landroid/widget/SeekBar;
.source "IHRVolumeSlider.java"


# instance fields
.field private leftCap:Landroid/graphics/Bitmap;

.field private leftFill:Landroid/graphics/Bitmap;

.field private rightCap:Landroid/graphics/Bitmap;

.field private thumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->leftCap:Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->leftFill:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->rightCap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->thumb:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method


# virtual methods
.method public getVolume()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getProgress()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    monitor-enter p0

    const/16 v8, 0x9

    .line 54
    .local v8, "kCapHeight":I
    const/4 v9, 0x5

    .line 55
    .local v9, "kCapWidth":I
    const/16 v10, 0x9

    .line 56
    .local v10, "kFillHeight":I
    const/4 v11, 0x1

    .line 57
    .local v11, "kFillWidth":I
    const/4 v12, 0x1

    .line 58
    .local v12, "kPaddingWidth":I
    const/16 v13, 0xb

    .line 59
    .local v13, "kThumbHeightHalf":I
    const/16 v14, 0x16

    .line 60
    .local v14, "kThumbWidth":I
    const/16 v15, 0xb

    .line 65
    .local v15, "kThumbWidthHalf":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getHeight()I

    move-result v20

    div-int/lit8 v18, v20, 0x2

    .line 66
    .local v18, "verticalCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getWidth()I

    move-result v19

    .line 67
    .local v19, "width":I
    const/16 v20, 0x4

    sub-int v5, v18, v20

    .line 69
    .local v5, "capTop":I
    const/16 v20, 0x16

    sub-int v7, v19, v20

    .line 70
    .local v7, "effectiveWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->getProgress()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v17, v20, 0xb

    .line 74
    .local v17, "thumbCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->leftCap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->rightCap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v19, v21

    const/16 v22, 0x5

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    new-instance v16, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v16, "src":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v20, 0x6

    add-int/lit8 v21, v5, 0x9

    move-object v0, v6

    move/from16 v1, v20

    move v2, v5

    move/from16 v3, v17

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v6, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->leftFill:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object v3, v6

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    sub-int v21, v17, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0xb

    sub-int v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 53
    .end local v5    # "capTop":I
    .end local v6    # "dst":Landroid/graphics/Rect;
    .end local v7    # "effectiveWidth":I
    .end local v16    # "src":Landroid/graphics/Rect;
    .end local v17    # "thumbCenter":I
    .end local v18    # "verticalCenter":I
    .end local v19    # "width":I
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 105
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 107
    .local v1, "w":I
    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 104
    .end local v0    # "h":I
    .end local v1    # "w":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "inPercent"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRVolumeSlider;->setProgress(I)V

    .line 45
    return-void
.end method
