.class public Lcom/clearchannel/iheartradio/android/view/IHRViewMain;
.super Landroid/view/ViewGroup;
.source "IHRViewMain.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static instance:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

.field public static kHeaderHeight:I


# instance fields
.field protected dismissEventLayerOnClick:Z

.field protected eventLayer:Landroid/view/View;

.field private lastNPButtonVisiblity:I

.field protected mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

.field protected mBannerClosedTime:J

.field protected mBannerDisplayed:Z

.field protected mBannerInterval:J

.field protected mBannerURL:Ljava/lang/String;

.field protected mBannerWanted:Z

.field protected mContent:Landroid/view/View;

.field protected mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

.field protected mHeader:Landroid/view/View;

.field protected mLogo:Landroid/widget/ImageButton;

.field protected mNowPlaying:Landroid/widget/ImageButton;

.field protected mOffline:Z

.field public mPlayerIntent:Landroid/content/Intent;

.field protected mSearching:Landroid/widget/ImageButton;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x32

    sput v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;)V
    .locals 4
    .param p1, "context"    # Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissEventLayerOnClick:Z

    .line 68
    sput-object p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->instance:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 70
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerBanner:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .line 73
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-direct {v0, p1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->addView(Landroid/view/View;)V

    .line 74
    const v0, 0x7f030008

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->addView(Landroid/view/View;)V

    .line 75
    const v0, 0x7f030002

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mLogo:Landroid/widget/ImageButton;

    .line 80
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mLogo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 86
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-direct {v0, p1, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/clearchannel/iheartradio/controller/IHRActivity;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    .line 90
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setVisibility(I)V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerInterval:J

    .line 93
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setIhrViewMain(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->instance:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    return-object v0
.end method


# virtual methods
.method public bannerClicked()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->openWebURL(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public bannerClosed()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setVisibility(I)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerDisplayed:Z

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerClosedTime:J

    .line 111
    return-void
.end method

.method public dismissPopupSearch()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->dismiss()V

    .line 546
    :cond_0
    return-void
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 435
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getContext()Landroid/content/Context;

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

    .line 436
    .local v0, "res":I
    return v0
.end method

.method public getDelegate()Lcom/clearchannel/iheartradio/controller/IHRActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    return-object v0
.end method

.method public getIHRControllerTabView()Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 7

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, "rController":Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->controllers()[Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 431
    return-object v2

    .line 426
    :cond_0
    aget-object v1, v3, v5

    .line 427
    .local v1, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    instance-of v6, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    if-eqz v6, :cond_1

    .line 428
    move-object v0, v1

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-object v2, v0

    .line 426
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getSearchPopupWindow()Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    return-object v0
.end method

.method public getmHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerWanted:Z

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->updateBanner(Landroid/view/View;Z)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public nowplayingalert()V
    .locals 3

    .prologue
    .line 196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 197
    .local v0, "altdlg":Landroid/app/AlertDialog;
    const-string v1, "Now Playing Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    const-string v1, "You don\'t have any station playing in Now Playing."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    const-string v1, "OK"

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 445
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;-><init>(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;JLcom/clearchannel/iheartradio/controller/IHRActivity;)V

    .line 448
    .local v0, "nowPlayingPopUpWindow":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {p0, v7, v1, v7}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(ZLandroid/widget/PopupWindow;Z)V

    .line 449
    invoke-virtual {v0, v6, v6}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->showLikeQuickAction(II)V

    .line 450
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->visibleController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->setPopup(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    .line 455
    .end local v0    # "nowPlayingPopUpWindow":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mLogo:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->popToRoot()V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->searchPopupWindow:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    sget v2, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->showLikeQuickAction(II)V

    .line 466
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v8, 0x32

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 380
    sub-int v0, p5, p3

    .line 381
    .local v0, "h":I
    sub-int v1, p4, p2

    .line 383
    .local v1, "w":I
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mHeader:Landroid/view/View;

    sget v4, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v2

    .local v2, "y":I
    invoke-virtual {v3, v6, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 388
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    add-int v5, v2, v0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_1
    :goto_0
    move v2, v0

    .line 402
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 403
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v6, v2, v1, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->layout(IIII)V

    .line 407
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 408
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v3, v6, v6, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 414
    :cond_3
    return-void

    .line 395
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "inMeasureWidth"    # I
    .param p2, "inMeasureHeight"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/16 v3, 0x32

    .line 345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 347
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setMeasuredDimension(II)V

    .line 349
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mHeader:Landroid/view/View;

    sget v2, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    .line 352
    sget v1, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->getVisibility()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 356
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->measure(II)V

    .line 358
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dpToPix(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 374
    :cond_3
    return-void
.end method

.method public pushPlayerIntent()V
    .locals 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mPlayerIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mPlayerIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    sget-object v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v3, "autoplay_letters"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushPlayer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IHRViewMain"

    const-string v2, "mplayerIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->nowplayingalert()V

    .line 187
    const-string v1, "IHRView.pushPlayerIntent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushPlayerIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActionButtonsVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    .line 519
    if-eqz p1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->lastNPButtonVisiblity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 528
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mSearching:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->lastNPButtonVisiblity:I

    .line 526
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wantsBanner"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->removeView(Landroid/view/View;)V

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    if-nez p1, :cond_1

    .line 261
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->updateBanner(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setEventLayerVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 482
    if-eqz p1, :cond_2

    .line 483
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissEventLayerOnClick:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 506
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_0
    :goto_1
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$3;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissEventLayerOnClick:Z

    .line 511
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public setEventLayerVisible(ZLandroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "p"    # Landroid/widget/PopupWindow;
    .param p3, "dismissOnClick"    # Z

    .prologue
    .line 473
    iput-boolean p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissEventLayerOnClick:Z

    .line 474
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->popupWindow:Landroid/widget/PopupWindow;

    .line 475
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(Z)V

    .line 476
    return-void
.end method

.method public setOffline(Z)V
    .locals 1
    .param p1, "inOffline"    # Z

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mOffline:Z

    if-eq p1, v0, :cond_0

    .line 121
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mOffline:Z

    .line 123
    :cond_0
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 2
    .param p1, "tabType"    # I

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 266
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushPrimaryList(Z)V

    .line 272
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushFavoritesList(Z)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushRandomizer()V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushSettings()V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setStatus(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->lastNPButtonVisiblity:I

    .line 539
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mNowPlaying:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateBanner(Landroid/view/View;Z)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wantsBanner"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 130
    iget-boolean v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mOffline:Z

    if-eqz v3, :cond_0

    .line 131
    const/4 p2, 0x0

    .line 134
    :cond_0
    iput-boolean p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerWanted:Z

    if-eqz p2, :cond_5

    .line 135
    iget-boolean v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerDisplayed:Z

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setVisibility(I)V

    .line 138
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 141
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v2

    .line 143
    .local v2, "startup":Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    if-eqz v2, :cond_3

    .line 144
    iget v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsBannerRefreshInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerInterval:J

    .line 150
    .end local v2    # "startup":Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    :cond_3
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerClosedTime:J

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 151
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/clearchannel/iheartradio/model/IHRAd;->request(ILjava/lang/Object;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 152
    .local v1, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_4

    move-object v0, v11

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v0, :cond_1

    .line 155
    iput-boolean v10, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerDisplayed:Z

    .line 156
    const-string v3, "ad_url"

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBannerURL:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->bringToFront()V

    .line 161
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    goto :goto_0

    .line 152
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const-string v3, "banner_image"

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, v3

    goto :goto_1

    .line 167
    .end local v1    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_5
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mBanner:Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewBanner;->setVisibility(I)V

    goto :goto_0
.end method
