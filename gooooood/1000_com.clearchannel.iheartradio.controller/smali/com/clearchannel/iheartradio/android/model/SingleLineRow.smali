.class final Lcom/clearchannel/iheartradio/android/model/SingleLineRow;
.super Landroid/widget/RelativeLayout;
.source "IHRPrimaryCursor.java"


# instance fields
.field public mChevron:Landroid/widget/ImageView;

.field public mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mChevron:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->addView(Landroid/view/View;)V

    .line 129
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mChevron:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 134
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 135
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 149
    sub-int v0, p5, p3

    .line 150
    .local v0, "h":I
    sub-int v1, p4, p2

    .line 152
    .local v1, "w":I
    const/16 v4, 0x8

    sub-int v4, v1, v4

    const/16 v5, 0xa

    sub-int v2, v4, v5

    .line 153
    .local v2, "x":I
    const/16 v4, 0xd

    sub-int v4, v0, v4

    div-int/lit8 v3, v4, 0x2

    .line 155
    .local v3, "y":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mChevron:Landroid/widget/ImageView;

    add-int/lit8 v5, v2, 0xa

    add-int/lit8 v6, v3, 0xd

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 157
    add-int/lit8 v2, v2, -0x8

    .line 158
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v3, v4, 0x2

    .line 160
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 142
    const/16 v0, 0x24

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 143
    return-void
.end method
