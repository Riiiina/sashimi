.class public Lcom/clearchannel/iheartradio/controller/IHRControllerList;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/clearchannel/iheartradio/controller/IHRController;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

.field mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method

.method public static assignLayout(Landroid/view/View;II)V
    .locals 2
    .param p0, "inView"    # Landroid/view/View;
    .param p1, "inHeight"    # I
    .param p2, "inViewType"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

.method public static replaceLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "inView"    # Landroid/view/View;
    .param p1, "inViewType"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 104
    .local v1, "layout":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    const/4 v3, -0x2

    move v0, v3

    .line 105
    .local v0, "height":I
    :goto_0
    if-nez v1, :cond_1

    const/4 v3, -0x1

    move v2, v3

    .line 107
    .local v2, "width":I
    :goto_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void

    .line 104
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v0, v3

    goto :goto_0

    .line 105
    .restart local v0    # "height":I
    :cond_1
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "inList":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 100
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 96
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    if-nez p1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 89
    .local v0, "parcel":Landroid/os/Parcelable;
    :goto_0
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 92
    :cond_0
    return-void

    .line 87
    .end local v0    # "parcel":Landroid/os/Parcelable;
    :cond_1
    const-string v1, "list_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "ioState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v0, "list_state"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    return-void
.end method

.method protected prepareListView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 30
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->createListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    :cond_1
    return-void
.end method

.method protected prepareView()V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    .line 43
    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 46
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->prepareListView()V

    .line 48
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 50
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 51
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDrawingCacheBackgroundColor(I)V

    .line 59
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "listType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 63
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "premium_accounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->getTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->setContentView(Landroid/view/View;)V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "inAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    return-void
.end method
