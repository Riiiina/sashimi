.class public Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;
.super Ljava/lang/Object;
.source "IHRFavoriteButtonClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private controller:Lcom/clearchannel/iheartradio/controller/IHRController;

.field private dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

.field private dismissPopup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

.field private mFavoriteDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/app/AlertDialog;)V
    .locals 2
    .param p1, "controller"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "mFavoriteDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->context:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->controller:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 30
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 31
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->mFavoriteDialog:Landroid/app/AlertDialog;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/app/AlertDialog;Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V
    .locals 0
    .param p1, "controller"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "mFavoriteDialog"    # Landroid/app/AlertDialog;
    .param p3, "popup"    # Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/app/AlertDialog;)V

    .line 36
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dismissPopup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dismissPopup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dismissPopup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    .line 43
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v17

    .line 45
    .local v17, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->context:Landroid/content/Context;

    move-object v2, v0

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Add Favorite"

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 52
    .local v19, "stationId":Ljava/lang/Long;
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 53
    .local v16, "mediaId":Ljava/lang/Long;
    const-string v10, ""

    .line 54
    .local v10, "stationName":Ljava/lang/String;
    const-string v7, ""

    .line 55
    .local v7, "artist":Ljava/lang/String;
    const-string v6, ""

    .line 57
    .local v6, "title":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    .line 58
    .local v13, "callLettersPlayer":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v18

    .line 59
    .local v18, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/16 v2, 0xc

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 60
    if-eqz v19, :cond_1

    .line 61
    const/16 v2, 0xb

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v2, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationFavourited(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    const-string v2, "Add Station"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    if-eqz v17, :cond_2

    .line 74
    :try_start_1
    const-string v2, "MediaBaseId"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 79
    :goto_1
    if-eqz v16, :cond_2

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_2

    .line 80
    const-string v2, "artist"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 81
    const-string v2, "track"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->isSongFavourited(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 84
    const-string v2, "Add Song"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .end local v13    # "callLettersPlayer":Ljava/lang/String;
    .end local v18    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_2
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 98
    .local v3, "itemsArray":[Ljava/lang/CharSequence;
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->controller:Lcom/clearchannel/iheartradio/controller/IHRController;

    move-object v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;-><init>([Ljava/lang/CharSequence;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/clearchannel/iheartradio/controller/IHRController;)V

    invoke-virtual {v12, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->mFavoriteDialog:Landroid/app/AlertDialog;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;->mFavoriteDialog:Landroid/app/AlertDialog;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 104
    return-void

    .line 68
    .end local v3    # "itemsArray":[Ljava/lang/CharSequence;
    .restart local v13    # "callLettersPlayer":Ljava/lang/String;
    .restart local v18    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    :try_start_3
    const-string v2, "Remove Station"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 93
    .end local v13    # "callLettersPlayer":Ljava/lang/String;
    .end local v18    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :catch_0
    move-exception v2

    move-object v14, v2

    .line 94
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 75
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "callLettersPlayer":Ljava/lang/String;
    .restart local v18    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :catch_1
    move-exception v2

    move-object v14, v2

    .line 76
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "IHRFavouriteButtonClickListener"

    const-string v3, "mediaId is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v2, "Remove Song"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method
