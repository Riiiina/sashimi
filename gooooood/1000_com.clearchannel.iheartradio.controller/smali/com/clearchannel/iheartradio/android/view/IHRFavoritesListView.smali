.class public Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;
.super Landroid/widget/ListView;
.source "IHRFavoritesListView.java"


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V
    .locals 0
    .param p1, "inContext"    # Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method public addContextMenuItems(Landroid/view/ContextMenu;IJLandroid/view/View;)V
    .locals 0
    .param p1, "ioMenu"    # Landroid/view/ContextMenu;
    .param p2, "inPosition"    # I
    .param p3, "inID"    # J
    .param p5, "inTarget"    # Landroid/view/View;

    .prologue
    .line 20
    return-void
.end method

.method public addContextMenuItems(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "ioMenu"    # Landroid/view/ContextMenu;
    .param p2, "inDetails"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 23
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v7, v0

    .line 25
    .local v7, "details":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v3, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-wide v4, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-object v6, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;->addContextMenuItems(Landroid/view/ContextMenu;IJLandroid/view/View;)V

    .line 26
    return-void
.end method
