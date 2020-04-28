.class public Lcom/clearchannel/iheartradio/android/view/IHRViewTagged;
.super Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;
.source "IHRViewTagged.java"


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V
    .locals 0
    .param p1, "inContext"    # Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    .line 16
    return-void
.end method


# virtual methods
.method public addContextMenuItems(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTagged;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRViewTagged;
    check-cast p0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;

    .line 26
    .local v2, "cursor":Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 28
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    const/4 v6, 0x1

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->getStringForIndex(II)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "artist":Ljava/lang/String;
    const/4 v6, 0x0

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->getStringForIndex(II)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "track":Ljava/lang/String;
    const-string v6, "Delete tagged song"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 32
    .local v4, "item":Landroid/view/MenuItem;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "artist"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "track"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "action"

    const-string v8, "delete"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 34
    const-string v6, "Cancel"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 35
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "action"

    const-string v8, "cancel"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 36
    return-void
.end method
