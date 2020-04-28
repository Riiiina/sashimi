.class public Lcom/clearchannel/iheartradio/android/view/IHRViewFavorites;
.super Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;
.source "IHRViewFavorites.java"


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V
    .locals 0
    .param p1, "inContext"    # Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    .line 17
    return-void
.end method


# virtual methods
.method public addContextMenuItems(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewFavorites;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRViewFavorites;
    check-cast p0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;

    .line 28
    .local v3, "cursor":Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 29
    .local v4, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v7, v3, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;->mContents:Ljava/util/List;

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "callLetters":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->getAutoplayStation()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "autoplay":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .line 34
    .local v5, "isAutoplay":Z
    :goto_0
    if-eqz v5, :cond_2

    const-string v7, "Don\'t play automatically"

    :goto_1
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 35
    .local v6, "item":Landroid/view/MenuItem;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "callLetters"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "action"

    if-eqz v5, :cond_3

    const-string v9, "disable"

    :goto_2
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 37
    const-string v7, "Play station"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 38
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "callLetters"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "action"

    const-string v9, "play"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 40
    const-string v7, "Delete favorite station"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 41
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "callLetters"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "action"

    const-string v9, "delete"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 43
    const-string v7, "Cancel"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 44
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "action"

    const-string v9, "cancel"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 45
    return-void

    .line 32
    .end local v5    # "isAutoplay":Z
    .end local v6    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v7, 0x1

    move v5, v7

    goto :goto_0

    .line 34
    .restart local v5    # "isAutoplay":Z
    :cond_2
    const-string v7, "Play automatically"

    goto :goto_1

    .line 35
    .restart local v6    # "item":Landroid/view/MenuItem;
    :cond_3
    const-string v9, "enable"

    goto :goto_2
.end method
