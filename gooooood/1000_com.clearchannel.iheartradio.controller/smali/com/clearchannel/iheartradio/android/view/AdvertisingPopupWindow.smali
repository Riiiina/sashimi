.class public Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AdvertisingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private advertisingImage:Landroid/widget/ImageView;

.field protected final anchor:Landroid/view/View;

.field private bitmapAd:Landroid/graphics/Bitmap;

.field private clickable:Z

.field private closingButton:Landroid/widget/ImageView;

.field private hash:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field private inflater:Landroid/view/LayoutInflater;

.field mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;IIZLcom/clearchannel/iheartradio/android/model/IHRHashtable;Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z
    .param p5, "hash"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p6, "mViewPlayer"    # Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 46
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->anchor:Landroid/view/View;

    .line 47
    iput-object p6, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 48
    iput-object p5, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->hash:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->onCreate()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->clickable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->hash:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    return-object v0
.end method


# virtual methods
.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 126
    int-to-float v1, p1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

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

    .line 127
    .local v0, "res":I
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    const-string v1, "layout_inflater"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->inflater:Landroid/view/LayoutInflater;

    .line 69
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->inflater:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->rootView:Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->advertisingImage:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->advertisingImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->hash:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "large_image"

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->advertisingImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;-><init>(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->closingButton:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->closingButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$2;-><init>(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;-><init>(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)V

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->setContentView(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->clickable:Z

    .line 105
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayEnableUserAbort:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(ZLandroid/widget/PopupWindow;Z)V

    .line 115
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->closingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->anchor:Landroid/view/View;

    const/16 v1, 0x30

    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dpToPix(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 123
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(ZLandroid/widget/PopupWindow;Z)V

    .line 119
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->closingButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
