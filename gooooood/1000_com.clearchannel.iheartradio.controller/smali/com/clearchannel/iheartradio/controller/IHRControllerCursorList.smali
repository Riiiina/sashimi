.class public Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerList;
.source "IHRControllerCursorList.java"


# instance fields
.field mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

.field mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

.field mStationCursor:Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

.field onListeningHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;-><init>()V

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->onListeningHeight:I

    .line 17
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 82
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {v5, v3, p3}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->prepareIntent(Landroid/content/Intent;I)V

    .line 92
    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 93
    instance-of v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 96
    .local v1, "count":I
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 109
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    const-string v5, "video"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 110
    const-string v5, "class"

    const-class v6, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->startController(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_2
    return-void

    .line 97
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    if-nez v5, :cond_0

    .line 102
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v4, "intentChild":Landroid/content/Intent;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {v5, v4, v2}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->prepareIntent(Landroid/content/Intent;I)V

    .line 105
    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "intentChild":Landroid/content/Intent;
    :cond_3
    const-string v5, "station"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 114
    const-string v5, "archive"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 116
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v6

    const-string v5, "archive"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 117
    const-string v5, "class"

    const-class v6, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v5, "category"

    const-string v6, "playerSubscription"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/controller/IHRController;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_5
    const-string v5, "class"

    const-class v6, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v5, "category"

    const-string v6, "playerSubscription"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 131
    :cond_6
    const-string v5, "class"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 132
    const-string v5, "class"

    const-class v6, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 137
    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->cursorForIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->setListCursor(Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;)V

    .line 47
    return-void
.end method

.method protected setListCursor(Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;)V
    .locals 3
    .param p1, "inCursor"    # Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    .prologue
    .line 27
    instance-of v1, p1, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    if-eqz v1, :cond_1

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    move-object v1, v0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mStationCursor:Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    .line 35
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 38
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mStationCursor:Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursorAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method
