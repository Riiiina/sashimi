.class public Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;
.source "IHRStationsCursor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;-><init>()V

    return-void
.end method

.method public static cursorForIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    .local v2, "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    if-nez p0, :cond_2

    move-object v9, v12

    .line 23
    .local v9, "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    .line 25
    .local v1, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    if-nez v9, :cond_15

    .line 26
    if-nez p0, :cond_3

    move-object v8, v12

    .line 27
    .local v8, "source":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 29
    .local v7, "name":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, "primary"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 30
    :cond_0
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;-><init>()V

    .line 31
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    .line 109
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "source":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v2

    .line 22
    .end local v1    # "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    .end local v9    # "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v10, "stations"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v9, v10

    goto :goto_0

    .line 26
    .restart local v1    # "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    .restart local v9    # "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v10, "source"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_1

    .line 32
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "source":Ljava/lang/String;
    :cond_4
    const-string v10, "cities"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 33
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;-><init>()V

    .line 34
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchCityNames()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto :goto_2

    .line 35
    :cond_5
    const-string v10, "city"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    const-string v10, "name"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v1, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchCity(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRCity;

    move-result-object v0

    .line 40
    :cond_6
    if-nez v0, :cond_7

    const-string v10, "index"

    invoke-virtual {p0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchCity(I)Lcom/clearchannel/iheartradio/model/IHRCity;

    move-result-object v0

    .line 42
    :cond_7
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;-><init>()V

    .line 43
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v2, v0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto :goto_2

    .line 44
    .end local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    :cond_8
    const-string v10, "channels"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 45
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;-><init>()V

    .line 46
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchPremiumChannels()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto :goto_2

    .line 47
    :cond_9
    const-string v10, "premium"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 48
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    const-string v10, "site"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;-><init>(Ljava/lang/String;)V

    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    goto :goto_2

    .line 49
    :cond_a
    const-string v10, "premium_accounts"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 50
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    const-string v10, "site"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;-><init>(Ljava/lang/String;)V

    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    goto/16 :goto_2

    .line 51
    :cond_b
    const-string v10, "premium_register"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 53
    const-string v10, "premium_purchase"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 55
    const-string v10, "formats"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 56
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;-><init>()V

    .line 57
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchFormatNames()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 58
    :cond_c
    const-string v10, "format"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    const-string v10, "name"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    const-string v10, "search"

    if-eq v10, v7, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    invoke-virtual {v1, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchFormat(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRFormat;

    move-result-object v5

    .line 63
    :cond_d
    const-string v10, "search"

    if-ne v10, v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 66
    :try_start_0
    new-instance v4, Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v10, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->ctxt:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 67
    .local v4, "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .local v3, "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    :try_start_1
    const-string v10, "search"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectStationsBySearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 73
    .end local v3    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .end local v4    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    :cond_e
    :goto_3
    const-string v10, "search"

    if-eq v10, v7, :cond_1

    .line 74
    if-nez v5, :cond_f

    const-string v10, "index"

    invoke-virtual {p0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchFormat(I)Lcom/clearchannel/iheartradio/model/IHRFormat;

    move-result-object v5

    .line 76
    :cond_f
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 77
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRFormat;->copyStationList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 78
    .end local v5    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :cond_10
    const-string v10, "local"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 79
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchLocal()Lcom/clearchannel/iheartradio/model/IHRLocal;

    move-result-object v6

    .line 81
    .local v6, "local":Lcom/clearchannel/iheartradio/model/IHRLocal;
    if-eqz v6, :cond_1

    .line 86
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 87
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRLocal;->copyStationList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 90
    .end local v6    # "local":Lcom/clearchannel/iheartradio/model/IHRLocal;
    :cond_11
    const-string v10, "favorites"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 91
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;-><init>()V

    .line 92
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1, v11}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 93
    :cond_12
    const-string v10, "featured"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 94
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 95
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 96
    :cond_13
    const-string v10, "tagged"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 97
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;-><init>()V

    .line 98
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v1, v11}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 100
    :cond_14
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 101
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v2, v12}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 105
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "source":Ljava/lang/String;
    :cond_15
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 106
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    invoke-virtual {v2, v9}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->setContents(Ljava/util/List;)V

    goto/16 :goto_2

    .line 70
    .restart local v5    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "source":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_3

    .end local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .restart local v3    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .restart local v4    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :catch_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    .restart local v2    # "cursor":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    goto/16 :goto_3
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 2
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Ljava/lang/String;
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->mCursorCount:I

    if-ge p2, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->mContents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->getStringForObject(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public getStringForObject(ILjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "inColumn"    # I
    .param p2, "inObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, "result":Ljava/lang/String;
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 145
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .line 147
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-nez v2, :cond_2

    .line 148
    if-nez p1, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "inObject":Ljava/lang/Object;
    move-object v1, p2

    .line 166
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
    :cond_0
    :goto_0
    return-object v1

    .restart local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_1
    move-object v1, v5

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_1
    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 152
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_4
    instance-of v3, p2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    if-eqz v3, :cond_6

    .line 153
    if-nez p1, :cond_5

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_2
    goto :goto_0

    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_5
    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_2

    .line 154
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_6
    instance-of v3, p2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    if-eqz v3, :cond_8

    .line 155
    if-nez p1, :cond_7

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_3
    goto :goto_0

    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_7
    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_3

    .line 156
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_8
    instance-of v3, p2, Lcom/clearchannel/iheartradio/model/IHRStation;

    if-eqz v3, :cond_a

    .line 157
    if-nez p1, :cond_9

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_4
    goto :goto_0

    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_9
    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_4

    .line 158
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_a
    instance-of v3, p2, Lcom/clearchannel/iheartradio/model/IHRFormat;

    if-eqz v3, :cond_c

    .line 159
    if-nez p1, :cond_b

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRFormat;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRFormat;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_5
    goto :goto_0

    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_b
    move-object v1, v5

    goto :goto_5

    .line 160
    :cond_c
    instance-of v3, p2, Lcom/clearchannel/iheartradio/model/IHRCity;

    if-eqz v3, :cond_e

    .line 161
    if-nez p1, :cond_d

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRCity;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_6
    goto :goto_0

    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_d
    move-object v1, v5

    goto :goto_6

    .line 162
    :cond_e
    instance-of v3, p2, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 163
    if-nez p1, :cond_f

    check-cast p2, Ljava/util/List;

    .end local p2    # "inObject":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_7
    goto/16 :goto_0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_f
    move-object v1, v5

    goto :goto_7
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 114
    if-ltz p2, :cond_0

    iget v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->mCursorCount:I

    if-ge p2, v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->mContents:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 118
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .line 120
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-nez v2, :cond_1

    .line 121
    const-string v3, "source"

    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const-string v3, "video"

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->isUsingWiFi()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->getVideoURL(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 125
    :cond_3
    const-string v3, "station"

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 127
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_4
    instance-of v3, v1, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    if-eqz v3, :cond_5

    .line 128
    const-string v3, "premium"

    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v3, v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    if-eqz v3, :cond_6

    .line 130
    const-string v3, "station"

    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 131
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v3, v1, Lcom/clearchannel/iheartradio/model/IHRFormat;

    if-eqz v3, :cond_7

    .line 132
    const-string v3, "source"

    const-string v4, "format"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v3, "index"

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 134
    :cond_7
    instance-of v3, v1, Lcom/clearchannel/iheartradio/model/IHRCity;

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "source"

    const-string v4, "city"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "index"

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
