.class public Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;
.super Landroid/widget/AbsoluteLayout;
.source "IHRNavigationBar.java"


# instance fields
.field final kButtonHeight:I

.field final kButtonOffsetX:I

.field final kButtonOffsetY:I

.field final kTitleHeight:I

.field final kTitleOffsetY:I

.field public mBackground:Landroid/widget/ImageView;

.field public mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

.field public mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonHeight:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetX:I

    .line 25
    const/4 v0, 0x7

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetY:I

    .line 26
    const/16 v0, 0x16

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleHeight:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleOffsetY:I

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonHeight:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetX:I

    .line 25
    const/4 v0, 0x7

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetY:I

    .line 26
    const/16 v0, 0x16

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleHeight:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleOffsetY:I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonHeight:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetX:I

    .line 25
    const/4 v0, 0x7

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kButtonOffsetY:I

    .line 26
    const/16 v0, 0x16

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleHeight:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->kTitleOffsetY:I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mBackground:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mBackground:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x2d

    invoke-direct {v1, v4, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->addView(Landroid/view/View;)V

    .line 52
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-direct {v0, p1, v5}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->addView(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-direct {v0, p1, v3}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 113
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    .line 115
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->getWidth()I

    move-result v5

    .line 117
    .local v5, "width":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 125
    .local v0, "leftButtonWidth":I
    :goto_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 126
    const/4 v3, 0x0

    .line 136
    .local v3, "rightButtonWidth":I
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 137
    add-int/lit8 v3, v3, 0x4

    .line 139
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 140
    .local v4, "titleWidth":I
    add-int v6, v0, v3

    sub-int v1, v5, v6

    .line 142
    .local v1, "maxTitleWidth":I
    if-le v4, v1, :cond_3

    .line 143
    move v4, v1

    .line 158
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    const/16 v7, 0xa

    add-int v8, v0, v4

    const/16 v9, 0x20

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 159
    return-void

    .line 120
    .end local v0    # "leftButtonWidth":I
    .end local v1    # "maxTitleWidth":I
    .end local v3    # "rightButtonWidth":I
    .end local v4    # "titleWidth":I
    :cond_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getMeasuredWidth()I

    move-result v6

    add-int/lit8 v0, v6, 0x4

    .line 122
    .restart local v0    # "leftButtonWidth":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/16 v9, 0x25

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->layout(IIII)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getMeasuredWidth()I

    move-result v3

    .line 129
    .restart local v3    # "rightButtonWidth":I
    const/4 v6, 0x4

    sub-int v6, v5, v6

    sub-int v2, v6, v3

    .line 131
    .local v2, "offsetX":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    const/4 v7, 0x7

    add-int v8, v2, v3

    const/16 v9, 0x25

    invoke-virtual {v6, v2, v7, v8, v9}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->layout(IIII)V

    .line 133
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 144
    .end local v2    # "offsetX":I
    .restart local v1    # "maxTitleWidth":I
    .restart local v4    # "titleWidth":I
    :cond_3
    if-ge v4, v1, :cond_0

    .line 147
    div-int/lit8 v6, v5, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int v0, v6, v7

    .line 148
    add-int/2addr v0, v4

    .line 149
    sub-int/2addr v5, v3

    .line 151
    if-le v0, v5, :cond_4

    .line 152
    sub-int v6, v0, v5

    sub-int/2addr v0, v6

    .line 155
    :cond_4
    sub-int/2addr v0, v4

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v9, 0x1e

    const/16 v7, 0x8

    const/high16 v8, 0x40000000    # 2.0f

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 74
    .local v3, "width":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 84
    .local v0, "leftButtonWidth":I
    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 85
    const/4 v1, 0x0

    .line 94
    .local v1, "rightButtonWidth":I
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 95
    add-int/lit8 v1, v1, 0x4

    .line 97
    add-int v4, v0, v1

    sub-int/2addr v3, v4

    .line 98
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 100
    .local v2, "textWidth":I
    if-le v2, v3, :cond_0

    move v2, v3

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 104
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/16 v6, 0x16

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 107
    return-void

    .line 77
    .end local v0    # "leftButtonWidth":I
    .end local v1    # "rightButtonWidth":I
    .end local v2    # "textWidth":I
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getSuggestedMinimumWidth()I

    move-result v0

    .line 79
    .restart local v0    # "leftButtonWidth":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->measure(II)V

    .line 81
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->getSuggestedMinimumWidth()I

    move-result v1

    .line 89
    .restart local v1    # "rightButtonWidth":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->measure(II)V

    .line 91
    add-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method

.method public setLeftButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inTextLine1"    # Ljava/lang/String;
    .param p2, "inTextLine2"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonLeft:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inTextLine1"    # Ljava/lang/String;
    .param p2, "inTextLine2"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mButtonRight:Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRNavigationButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "inText"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNavigationBar;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void
.end method
