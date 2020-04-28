.class public Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;
    }
.end annotation


# static fields
.field public static TAB_FAVORITES:Ljava/lang/String;

.field public static TAB_PLAYER:Ljava/lang/String;

.field public static TAB_STATION:Ljava/lang/String;

.field public static TAB_VIDEOS:Ljava/lang/String;


# instance fields
.field private ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private isFavoriteTabSelected:Z

.field private isVideoTabSelected:Z

.field private listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private listViewSearch:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private listViewVideos:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private player:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

.field private showStations:Z

.field private sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

.field private tabFavorites:Landroid/widget/TabHost$TabSpec;

.field private tabHost:Landroid/widget/TabHost;

.field private tabPlayer:Landroid/widget/TabHost$TabSpec;

.field public tabStation:Landroid/widget/TabHost$TabSpec;

.field private tabVideos:Landroid/widget/TabHost$TabSpec;

.field private tabView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isVideoTabSelected:Z

    .line 64
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isFavoriteTabSelected:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    .line 69
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewVideos:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Lcom/clearchannel/iheartradio/android/view/IHRListView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-void
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    return v0
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Lcom/clearchannel/iheartradio/android/view/IHRListView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-void
.end method

.method static synthetic access$8(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method public static setTabColor(Landroid/widget/TabHost;)V
    .locals 3
    .param p0, "tabhost"    # Landroid/widget/TabHost;

    .prologue
    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 649
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 650
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createFavoriteContent()Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 383
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    return-object v0
.end method

.method public createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 4
    .param p1, "callLetter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 575
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v0

    .line 576
    .local v0, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setRadioCover(Ljava/lang/String;)V

    .line 578
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    .line 579
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 580
    sput-boolean v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    .line 581
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v1, v3, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->displaySubscriptionMode(ZZ)V

    .line 583
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    return-object v1
.end method

.method public createPlayerSubscriptionContent()Landroid/widget/TabHost$TabSpec;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 497
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 498
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "archive"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "archive"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, v4

    .line 501
    .local v0, "archive":Ljava/util/ArrayList;
    :goto_0
    const-string v4, "channel"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "archive"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    const-string v5, "site"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->playPremiumItem(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 514
    :goto_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatusPlaying()V

    .line 519
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v3

    .line 520
    .local v3, "podcast":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v3, :cond_2

    .line 521
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setRadioCover(Ljava/lang/String;)V

    .line 526
    :cond_2
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    .line 528
    sput-boolean v6, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    .line 531
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 532
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, v6, v7}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->displaySubscriptionMode(ZZ)V

    .line 539
    :goto_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, v6}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setSeekBarVisible(Z)V

    .line 540
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    return-object v4

    .line 498
    .end local v0    # "archive":Ljava/util/ArrayList;
    .end local v3    # "podcast":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 508
    .restart local v0    # "archive":Ljava/util/ArrayList;
    :cond_4
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 509
    .local v2, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto :goto_1

    .line 536
    .end local v2    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v3    # "podcast":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_5
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, v7, v6}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->displaySubscriptionMode(ZZ)V

    goto :goto_2
.end method

.method public createStationListContent()Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 433
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    return-object v0
.end method

.method public displayFavorites()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesStations()V

    .line 720
    return-void
.end method

.method public displayPlayer(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 673
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 674
    .restart local v0    # "v":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displaySearch()V
    .locals 2

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    .line 726
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 728
    return-void
.end method

.method public displayStationTab()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 75
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 76
    .local v0, "res":I
    return v0
.end method

.method public getListViewFavorites()Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method public getListViewStations()Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method public getListViewVideos()Lcom/clearchannel/iheartradio/android/view/IHRListView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewVideos:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    return-object v0
.end method

.method public getSelectedTab()Ljava/lang/String;
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 768
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    .line 787
    const-string v1, ""

    :goto_0
    return-object v1

    .line 770
    :pswitch_0
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    goto :goto_0

    .line 774
    :pswitch_1
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    goto :goto_0

    .line 778
    :pswitch_2
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    goto :goto_0

    .line 782
    :pswitch_3
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    goto :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getShowStations()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    return v0
.end method

.method public getSortingType()Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    return-object v0
.end method

.method public isSortedByName()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    if-ne v0, v1, :cond_0

    .line 685
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public loadCategory(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->cleanTabViewControllers()V

    .line 443
    const-string v0, ""

    .line 445
    .local v0, "format":Ljava/lang/String;
    const-string v1, "sport"

    if-ne p1, v1, :cond_1

    .line 446
    const-string v0, "Sports"

    .line 447
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    const-string v1, "location"

    if-ne p1, v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayLocations()V

    goto :goto_0

    .line 460
    :cond_2
    const-string v1, "formats"

    if-ne p1, v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayGenres()V

    goto :goto_0

    .line 463
    :cond_3
    const-string v1, "personalities"

    if-ne p1, v1, :cond_4

    .line 464
    const-string v0, "Personalities"

    .line 465
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_4
    const-string v1, "news"

    if-ne p1, v1, :cond_5

    .line 468
    const-string v0, "News & Talk"

    .line 469
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_5
    const-string v1, "videos"

    if-ne p1, v1, :cond_6

    .line 472
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayGenres()V

    .line 473
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isVideoTabSelected:Z

    goto :goto_0

    .line 475
    :cond_6
    if-eqz p1, :cond_7

    const-string v1, "favorites"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 477
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayGenres()V

    .line 478
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isFavoriteTabSelected:Z

    goto :goto_0

    .line 480
    :cond_7
    if-eqz p1, :cond_8

    const-string v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 481
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewSearch:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 482
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showSearchResults(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_8
    const-string v1, "recent"

    if-ne p1, v1, :cond_9

    .line 485
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayRecent()V

    goto :goto_0

    .line 487
    :cond_9
    const-string v1, "magicmenu"

    if-ne p1, v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayMagicMenu()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f070048

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    .line 116
    const v4, 0x7f07004b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    .line 117
    const v4, 0x7f070049

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    .line 118
    const v4, 0x7f07004a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    .line 122
    :try_start_0
    new-instance v4, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 123
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->player:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    .line 124
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->player:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setPlayerView(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    .line 127
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f03002b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabView:Landroid/view/View;

    .line 128
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabView:Landroid/view/View;

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    .line 133
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 136
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    .line 137
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 139
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    .line 140
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_STATION:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 142
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabVideos:Landroid/widget/TabHost$TabSpec;

    .line 143
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabVideos:Landroid/widget/TabHost$TabSpec;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 145
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    .line 146
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 152
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createStationListContent()Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    .line 153
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 156
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$1;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 161
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabPlayer:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 169
    new-instance v4, Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, p0, v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewVideos:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 170
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabVideos:Landroid/widget/TabHost$TabSpec;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$2;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 180
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 185
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createFavoriteContent()Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    .line 186
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 188
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 215
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->setTabColor(Landroid/widget/TabHost;)V

    .line 220
    iget-boolean v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isVideoTabSelected:Z

    if-eqz v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "sourceOfContent":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "playerSubscription"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerSubscriptionContent()Landroid/widget/TabHost$TabSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v3    # "sourceOfContent":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void

    .line 223
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isFavoriteTabSelected:Z

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "IHRControllerTabView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "sourceOfContent":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_2

    :try_start_2
    const-string v4, "player"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 589
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 591
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    move v2, v5

    .line 639
    :goto_0
    return v2

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isAdPopUpShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getAdPopup()Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dismiss()V

    .line 599
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v2

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayEnableUserAbort:Z

    if-eqz v2, :cond_1

    move v2, v5

    .line 600
    goto :goto_0

    .line 604
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListType()Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-result-object v1

    .line 606
    .local v1, "last":Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    if-eqz v1, :cond_3

    .line 607
    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v1, v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_VIDEOS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :goto_1
    move v2, v5

    .line 614
    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    .line 612
    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayCurrentList()V

    goto :goto_1

    .line 616
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 619
    .end local v1    # "last":Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    :cond_4
    if-eq p1, v6, :cond_5

    const/16 v2, 0x19

    if-ne p1, v2, :cond_9

    .line 622
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getSelectedTab()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    if-ne v2, v3, :cond_7

    .line 624
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 625
    .local v0, "audio":Landroid/media/AudioManager;
    const/4 v2, 0x3

    if-ne v6, p1, :cond_6

    move v3, v5

    :goto_2
    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 627
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateVolume()V

    move v2, v5

    .line 628
    goto :goto_0

    .line 625
    :cond_6
    const/4 v3, -0x1

    goto :goto_2

    .line 630
    .end local v0    # "audio":Landroid/media/AudioManager;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 632
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 633
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateVolume()V

    :cond_8
    move v2, v4

    .line 635
    goto :goto_0

    .line 639
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    const-string v4, "callLetter"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "callLetter":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 259
    .local v1, "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v3

    .line 261
    .local v3, "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    invoke-virtual {v3, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 262
    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 266
    .end local v1    # "now":J
    .end local v3    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 732
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onResume()V

    .line 734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 737
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 738
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateVolume()V

    .line 740
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const-string v1, "PLAYER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Player view resumed with status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 745
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 751
    :cond_0
    return-void
.end method

.method public setFavoritesConnected()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->onCreate(Landroid/os/Bundle;)V

    .line 714
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayFavorites()V

    .line 715
    return-void
.end method

.method public setSortedByName(Z)V
    .locals 1
    .param p1, "sorted"    # Z

    .prologue
    .line 691
    if-eqz p1, :cond_0

    .line 692
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 695
    :goto_0
    return-void

    .line 694
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    goto :goto_0
.end method

.method public showSearchResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchKeywords"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    .line 317
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewSearch:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewSearch:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewSearch:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsSearch(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public showSongs()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    .line 304
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesSongs()V

    .line 305
    return-void
.end method

.method public showStations()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showStations:Z

    .line 309
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewFavorites:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesStations()V

    .line 310
    return-void
.end method

.method public sortByFreq()V
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 703
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayCurrentList()V

    .line 704
    return-void
.end method

.method public sortByStations()V
    .locals 1

    .prologue
    .line 707
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortingType:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 708
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->listViewStations:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayCurrentList()V

    .line 709
    return-void
.end method
