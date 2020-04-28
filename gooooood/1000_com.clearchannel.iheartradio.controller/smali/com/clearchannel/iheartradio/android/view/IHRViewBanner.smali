.class public Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;
.super Landroid/widget/RelativeLayout;
.source "IHRViewBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final kBannerHeight:I = 0x32

.field public static final kBannerWidth:I = 0x12c


# instance fields
.field protected mBackground:Landroid/widget/ImageView;

.field protected mCloseButton:Landroid/widget/ImageView;

.field protected mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setWillNotDraw(Z)V

    .line 28
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->addView(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->addView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->bannerClicked()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->bannerClosed()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 63
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v2, "scale":F
    const/high16 v5, 0x43960000    # 300.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 65
    .local v1, "imageW":I
    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 67
    .local v0, "imageH":I
    sub-int v3, p4, p2

    .line 69
    .local v3, "w":I
    if-le v1, v3, :cond_0

    move v1, v3

    .line 71
    :cond_0
    sub-int v5, v3, v1

    div-int/lit8 v4, v5, 0x2

    .line 72
    .local v4, "x":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    add-int v6, v4, v1

    invoke-virtual {v5, v4, v7, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 74
    sub-int v5, v3, v1

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    sub-int v4, v5, v8

    .line 75
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mCloseButton:Landroid/widget/ImageView;

    add-int/lit8 v6, v4, 0x19

    invoke-virtual {v5, v4, v7, v6, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 76
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->mBackground:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 53
    return-void
.end method
