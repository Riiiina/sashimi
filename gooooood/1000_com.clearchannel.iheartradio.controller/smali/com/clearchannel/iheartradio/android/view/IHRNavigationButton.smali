.class public Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;
.super Landroid/widget/ImageButton;
.source "IHRNavigationButton.java"


# static fields
.field public static final kImageArrowLeft:I = 0x0

.field public static final kImageFill:I = 0x2

.field public static final kImageLeft:I = 0x1

.field public static final kImageRight:I = 0x3

.field private static sBitmaps:[Landroid/graphics/Bitmap;


# instance fields
.field private final kButtonHeight:I

.field private final kCapWidthRight:I

.field private final kDoubleLineFontSize:F

.field private final kDoubleLineTextLine1OffsetY:I

.field private final kDoubleLineTextLine2OffsetY:I

.field private final kFillWidth:I

.field private final kMaxTextWidth:I

.field private final kSingleLineFontSize:F

.field private final kSingleLineTextOffsetY:I

.field private final kTextMarginRight:F

.field private mCapWidthLeft:I

.field private final mFill:Landroid/graphics/Bitmap;

.field private mLeftCap:Landroid/graphics/Bitmap;

.field private final mRightCap:Landroid/graphics/Bitmap;

.field private mTextLine1:Ljava/lang/String;

.field private mTextLine1Width:F

.field private mTextLine2:Ljava/lang/String;

.field private mTextLine2Width:F

.field private mTextMarginLeft:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLeftNavButton"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v3, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v1, 0x1e

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kButtonHeight:I

    .line 35
    const/4 v1, 0x4

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kCapWidthRight:I

    .line 36
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kDoubleLineFontSize:F

    .line 37
    const/16 v1, 0xc

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kDoubleLineTextLine1OffsetY:I

    .line 38
    const/16 v1, 0x19

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kDoubleLineTextLine2OffsetY:I

    .line 39
    iput v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kFillWidth:I

    .line 40
    const/16 v1, 0x54

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kMaxTextWidth:I

    .line 41
    const/high16 v1, 0x41380000    # 11.5f

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kSingleLineFontSize:F

    .line 42
    const/16 v1, 0x13

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kSingleLineTextOffsetY:I

    .line 43
    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->kTextMarginRight:F

    .line 50
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    .line 54
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f020062

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 55
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f020064

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    .line 56
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f020063

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 57
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f020065

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 61
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mFill:Landroid/graphics/Bitmap;

    .line 62
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mRightCap:Landroid/graphics/Bitmap;

    .line 63
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mCapWidthLeft:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mWidth:I

    .line 64
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->setVisibility(I)V

    .line 66
    if-eqz p2, :cond_1

    .line 67
    const/16 v1, 0xe

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mCapWidthLeft:I

    .line 68
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mLeftCap:Landroid/graphics/Bitmap;

    .line 69
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mCapWidthLeft:I

    .line 72
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->sBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mLeftCap:Landroid/graphics/Bitmap;

    .line 73
    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    goto :goto_0
.end method

.method private getTextPaint(F)Landroid/graphics/Paint;
    .locals 4
    .param p1, "inFontSize"    # F

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xff

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    return-object v0

    .line 119
    :cond_0
    const/16 v1, 0x7f

    goto :goto_0
.end method


# virtual methods
.method public getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mWidth:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getWidth()I

    move-result v4

    .line 92
    .local v4, "width":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mLeftCap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mRightCap:Landroid/graphics/Bitmap;

    const/4 v6, 0x4

    sub-int v6, v4, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x1e

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .local v3, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mCapWidthLeft:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    sub-int v7, v4, v7

    const/16 v8, 0x1e

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v0, "dst":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mFill:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v3, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1:Ljava/lang/String;

    iget v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    const/high16 v7, 0x41980000    # 19.0f

    const/high16 v8, 0x41380000    # 11.5f

    invoke-direct {p0, v8}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getTextPaint(F)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    const/high16 v5, 0x41200000    # 10.0f

    :try_start_1
    invoke-direct {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getTextPaint(F)Landroid/graphics/Paint;

    move-result-object v2

    .line 106
    .local v2, "paint":Landroid/graphics/Paint;
    iget v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    int-to-float v6, v4

    sub-float/2addr v6, v10

    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1Width:F

    div-float/2addr v6, v9

    sub-float v1, v5, v6

    .line 107
    .local v1, "offsetX":F
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1:Ljava/lang/String;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    iget v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    int-to-float v6, v4

    sub-float/2addr v6, v10

    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2Width:F

    div-float/2addr v6, v9

    sub-float v1, v5, v6

    .line 110
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2:Ljava/lang/String;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "dst":Landroid/graphics/Rect;
    .end local v1    # "offsetX":F
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "src":Landroid/graphics/Rect;
    .end local v4    # "width":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "inTextLine1"    # Ljava/lang/String;
    .param p2, "inTextLine2"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x42a80000    # 84.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    .line 131
    if-nez p2, :cond_1

    const/high16 v4, 0x41380000    # 11.5f

    :goto_0
    invoke-direct {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getTextPaint(F)Landroid/graphics/Paint;

    move-result-object v1

    .line 133
    .local v1, "paint":Landroid/graphics/Paint;
    move-object v2, p1

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, p1

    .line 134
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    .local v0, "n":I
    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1Width:F

    cmpl-float v4, v4, v8

    if-gtz v4, :cond_2

    .line 141
    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1:Ljava/lang/String;

    .line 142
    iget v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    iget v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine1Width:F

    add-float/2addr v4, v5

    add-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mWidth:I

    .line 144
    move-object v3, p2

    if-eqz p2, :cond_0

    .line 145
    move-object v2, v3

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    :goto_2
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2Width:F

    cmpl-float v4, v4, v8

    if-gtz v4, :cond_3

    .line 153
    iget v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextMarginLeft:F

    iget v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2Width:F

    add-float/2addr v4, v5

    add-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 155
    iget v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mWidth:I

    if-le v0, v4, :cond_0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mWidth:I

    .line 158
    :cond_0
    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->mTextLine2:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->requestLayout()V

    .line 163
    return-void

    .line 131
    .end local v0    # "n":I
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_0

    .line 137
    .restart local v0    # "n":I
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 149
    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
