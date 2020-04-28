.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;
.super Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;
.source "IHRControllerPremiumArchives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRArchivesList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V
    .locals 0
    .param p2, "inContext"    # Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    .line 155
    invoke-direct {p0, p2}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-void
.end method


# virtual methods
.method public addContextMenuItems(Landroid/view/ContextMenu;IJLandroid/view/View;)V
    .locals 20
    .param p1, "ioMenu"    # Landroid/view/ContextMenu;
    .param p2, "inPosition"    # I
    .param p3, "inID"    # J
    .param p5, "inTarget"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v3

    .line 161
    .local v3, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    move-object v4, v0

    check-cast v4, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    .line 162
    .local v4, "cursor":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;
    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->premiumItemForPosition(I)Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    move-result-object v14

    .line 163
    .local v14, "show":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    if-nez v14, :cond_8

    const/16 v17, 0x0

    move-object/from16 v13, v17

    .line 164
    .local v13, "progress":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    move-object v0, v4

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v15

    .line 167
    .local v15, "site":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/view/ContextMenu;->size()I

    move-result v16

    .line 168
    .local v16, "size":I
    if-nez v13, :cond_9

    const/16 v17, 0x0

    move/from16 v10, v17

    .line 169
    .local v10, "offset":I
    :goto_1
    if-nez v13, :cond_a

    const/16 v17, 0x0

    move/from16 v9, v17

    .line 170
    .local v9, "length":I
    :goto_2
    if-nez v13, :cond_b

    const/16 v17, 0x0

    move/from16 v12, v17

    .line 172
    .local v12, "paused":Z
    :goto_3
    if-nez v14, :cond_0

    if-nez p2, :cond_2

    .line 177
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v17

    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 179
    :cond_1
    const-string v17, "Listen to Show"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 180
    .local v8, "item":Landroid/view/MenuItem;
    const v17, 0x1080024

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "action"

    const-string v19, "listen"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 183
    .local v6, "intent":Landroid/content/Intent;
    const-string v17, "site"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v17, "archive"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 186
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 203
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_2
    if-eqz v14, :cond_6

    .line 207
    sget-object v17, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 209
    add-int/lit8 v5, p2, 0x1

    .line 211
    .local v5, "i":I
    :goto_4
    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->premiumItemForPosition(I)Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    move-result-object v11

    .line 213
    .local v11, "pItem":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    if-nez v11, :cond_c

    .line 226
    if-nez v12, :cond_3

    if-nez v9, :cond_4

    .line 227
    :cond_3
    if-eqz v12, :cond_d

    const-string v17, "Resume Download"

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 228
    .restart local v8    # "item":Landroid/view/MenuItem;
    const v17, 0x1080081

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "action"

    const-string v19, "acquire"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "site"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "archive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 232
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_4
    if-nez v12, :cond_5

    if-ge v10, v9, :cond_5

    .line 233
    const-string v17, "Pause Download"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 234
    .restart local v8    # "item":Landroid/view/MenuItem;
    const v17, 0x1080023

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "action"

    const-string v19, "suspend"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "site"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "archive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 238
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_5
    if-lez v9, :cond_6

    .line 239
    const-string v17, "Delete Archive"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 240
    .restart local v8    # "item":Landroid/view/MenuItem;
    const v17, 0x108001d

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "action"

    const-string v19, "uncache"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "site"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "archive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 246
    .end local v5    # "i":I
    .end local v8    # "item":Landroid/view/MenuItem;
    .end local v11    # "pItem":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/view/ContextMenu;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 247
    const-string v17, "Cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 248
    .restart local v8    # "item":Landroid/view/MenuItem;
    const v17, 0x1080038

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 249
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v18, "action"

    const-string v19, "cancel"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 251
    .end local v8    # "item":Landroid/view/MenuItem;
    :cond_7
    return-void

    .line 163
    .end local v9    # "length":I
    .end local v10    # "offset":I
    .end local v12    # "paused":Z
    .end local v13    # "progress":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v15    # "site":Ljava/lang/String;
    .end local v16    # "size":I
    :cond_8
    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v17

    move-object/from16 v13, v17

    goto/16 :goto_0

    .line 168
    .restart local v13    # "progress":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v15    # "site":Ljava/lang/String;
    .restart local v16    # "size":I
    :cond_9
    const-string v17, "offset"

    const/16 v18, 0x0

    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v17

    move/from16 v10, v17

    goto/16 :goto_1

    .line 169
    .restart local v10    # "offset":I
    :cond_a
    const-string v17, "length"

    const/16 v18, 0x0

    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v17

    move/from16 v9, v17

    goto/16 :goto_2

    .line 170
    .restart local v9    # "length":I
    :cond_b
    const-string v17, "paused"

    const/16 v18, 0x0

    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v12, v17

    goto/16 :goto_3

    .line 216
    .restart local v5    # "i":I
    .restart local v11    # "pItem":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .restart local v12    # "paused":Z
    :cond_c
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v7, "intentChild":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->prepareIntent(Landroid/content/Intent;I)V

    .line 219
    sget-object v17, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 227
    .end local v7    # "intentChild":Landroid/content/Intent;
    :cond_d
    const-string v17, "Download"

    goto/16 :goto_5
.end method
