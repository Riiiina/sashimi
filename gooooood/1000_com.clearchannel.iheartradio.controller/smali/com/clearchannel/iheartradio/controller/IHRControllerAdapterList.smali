.class public Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerList;
.source "IHRControllerAdapterList.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field protected mContents:Ljava/util/List;

.field protected mObserveDataSet:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getContents()Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mContents:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->getContents()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "contents":Ljava/util/List;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->getContents()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "contents":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "inPosition"    # I
    .param p2, "inConvertView"    # Landroid/view/View;
    .param p3, "inParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->getViewForString(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewByID(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "inID"    # I
    .param p2, "inExisting"    # Landroid/view/View;

    .prologue
    .line 83
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->inflateLayout(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getViewForString(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "inLabel"    # Ljava/lang/String;
    .param p2, "inExisting"    # Landroid/view/View;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Landroid/widget/TextView;
    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 90
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 98
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object v1

    .line 92
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    .end local v1    # "result":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v1    # "result":Landroid/widget/TextView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    .line 33
    :cond_0
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->onDestroy()V

    .line 34
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 44
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->onNewIntent(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "inObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 39
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "inObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method
