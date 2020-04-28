.class public Lcom/clearchannel/iheartradio/controller/IHRControllerCities;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;
.source "IHRControllerCities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;
    }
.end annotation


# instance fields
.field protected mElements:[Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

.field protected mSearch:Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;-><init>()V

    return-void
.end method


# virtual methods
.method protected initElements()V
    .locals 8

    .prologue
    .line 36
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 37
    .local v0, "config":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchCityNames()Ljava/util/List;

    move-result-object v3

    .line 39
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    new-array v4, v2, [Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;->mElements:[Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 46
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;->mElements:[Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRComparator;->stringComparator()Lcom/clearchannel/iheartradio/model/IHRComparator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRQuicksort;->sort([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;)V

    .line 49
    return-void

    .line 42
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;->mElements:[Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

    new-instance v6, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x1d

    .line 72
    const/4 v1, 0x1

    .line 74
    .local v1, "result":Z
    if-lt p1, v3, :cond_0

    const/16 v2, 0x36

    if-gt p1, v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;

    .line 77
    .local v0, "adapter":Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;->mList:Landroid/widget/ListView;

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getPositionForLetter(C)I

    move-result v3

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 82
    .end local v0    # "adapter":Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;
    :goto_0
    return v1

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method
