.class public Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
.super Landroid/widget/RelativeLayout;
.source "IHRViewInfoSeparator.java"


# instance fields
.field public mLeft:Landroid/widget/TextView;

.field public mRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->setWillNotDraw(Z)V

    .line 23
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->addView(Landroid/view/View;)V

    .line 24
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->addView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 27
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    const v0, 0x7f020047

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->setBackgroundResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 70
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 71
    .local v0, "res":I
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 47
    sub-int v1, p4, p2

    .line 49
    .local v1, "w":I
    sub-int v4, v1, v7

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    sub-int v2, v4, v8

    .line 50
    .local v2, "x":I
    int-to-float v4, v2

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 52
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 53
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v3, v4, v6

    .line 55
    .local v3, "y":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    add-int/lit8 v2, v2, 0x2

    add-int v5, v3, v0

    invoke-virtual {v4, v7, v3, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 57
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v3, v4, v6

    .line 60
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    add-int/lit8 v5, v2, 0x8

    sub-int v6, v1, v8

    add-int v7, v3, v0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->dpToPix(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 66
    return-void
.end method
