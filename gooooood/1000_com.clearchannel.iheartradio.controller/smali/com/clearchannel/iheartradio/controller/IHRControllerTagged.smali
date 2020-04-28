.class public Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;
.source "IHRControllerTagged.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;->createHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewTagged;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewTagged;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;
    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushFavoritesList(Z)V

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 36
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 37
    const/4 v2, 0x4

    if-ne v2, p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    .line 40
    .local v0, "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;->finish()V

    .line 42
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->topController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    instance-of v2, v2, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->topController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 46
    :cond_0
    const/4 v1, 0x1

    .line 50
    .end local v0    # "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :cond_1
    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 14
    return-void
.end method
