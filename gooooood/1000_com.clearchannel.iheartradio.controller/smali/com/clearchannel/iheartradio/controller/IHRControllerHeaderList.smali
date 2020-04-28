.class public Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;
.source "IHRControllerHeaderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;
    }
.end annotation


# instance fields
.field private ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

.field public mHeader:Landroid/view/View;

.field public mLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;-><init>()V

    return-void
.end method


# virtual methods
.method protected createContainerView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected prepareHeaderView()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->createHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_1
    return-void
.end method

.method protected prepareView()V
    .locals 3

    .prologue
    .line 71
    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 72
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->prepareListView()V

    .line 73
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->prepareHeaderView()V

    .line 75
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    if-nez v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mList:Landroid/widget/ListView;

    .line 85
    .local v0, "content":Landroid/view/ViewGroup;
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V

    .line 86
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->getTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->setContentView(Landroid/view/View;)V

    .line 87
    return-void

    .line 78
    .end local v0    # "content":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->createContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mLayout:Landroid/view/ViewGroup;

    .line 79
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mLayout:Landroid/view/ViewGroup;

    .restart local v0    # "content":Landroid/view/ViewGroup;
    goto :goto_0
.end method
