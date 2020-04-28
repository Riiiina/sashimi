.class public Lvw/DecktradeProvider;
.super Lvw/ViewProvider;
.source "DecktradeProvider.java"


# instance fields
.field private background:I

.field private foreground:I

.field private id:Ljava/lang/String;

.field private ninepatchURL:Ljava/lang/String;

.field private useUniqueID:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lvw/DecktradeProvider;->foreground:I

    const v0, -0x777778

    iput v0, p0, Lvw/DecktradeProvider;->background:I

    .line 35
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    .line 40
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/DecktradeProvider;->id:Ljava/lang/String;

    .line 41
    const-string v0, "ninepatch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/DecktradeProvider;->ninepatchURL:Ljava/lang/String;

    .line 42
    const-string v0, "unique"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lvw/DecktradeProvider;->useUniqueID:Z

    .line 43
    return-void
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 24
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lvw/DecktradeProvider;->getIp()Ljava/lang/String;

    move-result-object v16

    .local v16, "ip":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 57
    const/16 v21, 0x0

    .line 112
    .end local v16    # "ip":Ljava/lang/String;
    :goto_0
    return-object v21

    .line 60
    .restart local v16    # "ip":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/DecktradeProvider;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lvw/DecktradeProvider;->getBrowserDetect(Landroid/content/Context;)Lcmn/BrowserDetect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcmn/BrowserDetect;->getAgent()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "dt_ua":Ljava/lang/String;
    move-object/from16 v10, v16

    .line 63
    .local v10, "dt_ip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lvw/DecktradeProvider;->useUniqueID:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 64
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "decktrade"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "dt_id":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/DecktradeProvider;->id:Ljava/lang/String;

    move-object v8, v0

    .line 70
    .local v8, "dt_asid":Ljava/lang/String;
    const-string v11, "live"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .local v11, "dt_mode":Ljava/lang/String;
    :try_start_1
    const-string v21, "UTF-8"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    const-string v21, "UTF-8"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    const-string v21, "UTF-8"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 82
    :goto_2
    :try_start_2
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "http://ads.dt.mydas.mobi/getAd.php5?asid="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&auid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 83
    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&ua="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&uip="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 82
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "dt_url":Ljava/lang/String;
    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    .local v7, "contents":Ljava/lang/String;
    :try_start_3
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    .line 89
    .local v15, "in":Ljava/io/InputStream;
    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v17, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v5, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v21, 0x400

    move-object v0, v6

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 93
    .local v6, "buffer":Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "line":Ljava/lang/String;
    if-nez v18, :cond_2

    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    .line 102
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "isr":Ljava/io/InputStreamReader;
    .end local v18    # "line":Ljava/lang/String;
    .end local v20    # "url":Ljava/net/URL;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "<img"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 103
    const/16 v19, 0x0

    .line 108
    .local v19, "ninepatch":Landroid/graphics/drawable/Drawable;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/DecktradeProvider;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lvw/DecktradeProvider;->foreground:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lvw/DecktradeProvider;->background:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lvw/Util;->createViewResultFromHTML(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Lvw/SCMView$ViewResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v21

    goto/16 :goto_0

    .line 66
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "dt_asid":Ljava/lang/String;
    .end local v9    # "dt_id":Ljava/lang/String;
    .end local v11    # "dt_mode":Ljava/lang/String;
    .end local v13    # "dt_url":Ljava/lang/String;
    .end local v19    # "ninepatch":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v9, v16

    .restart local v9    # "dt_id":Ljava/lang/String;
    goto/16 :goto_1

    .line 94
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "dt_asid":Ljava/lang/String;
    .restart local v11    # "dt_mode":Ljava/lang/String;
    .restart local v13    # "dt_url":Ljava/lang/String;
    .restart local v15    # "in":Ljava/io/InputStream;
    .restart local v17    # "isr":Ljava/io/InputStreamReader;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_2
    :try_start_5
    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 97
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "isr":Ljava/io/InputStreamReader;
    .end local v18    # "line":Ljava/lang/String;
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v21

    move-object/from16 v14, v21

    .line 98
    .local v14, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 109
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "dt_asid":Ljava/lang/String;
    .end local v9    # "dt_id":Ljava/lang/String;
    .end local v10    # "dt_ip":Ljava/lang/String;
    .end local v11    # "dt_mode":Ljava/lang/String;
    .end local v12    # "dt_ua":Ljava/lang/String;
    .end local v13    # "dt_url":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "ip":Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v14, v21

    .line 110
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 105
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "dt_asid":Ljava/lang/String;
    .restart local v9    # "dt_id":Ljava/lang/String;
    .restart local v10    # "dt_ip":Ljava/lang/String;
    .restart local v11    # "dt_mode":Ljava/lang/String;
    .restart local v12    # "dt_ua":Ljava/lang/String;
    .restart local v13    # "dt_url":Ljava/lang/String;
    .restart local v16    # "ip":Ljava/lang/String;
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/DecktradeProvider;->ninepatchURL:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lvw/Util;->getDrawableFromLocation(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v19

    .restart local v19    # "ninepatch":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 79
    .end local v7    # "contents":Ljava/lang/String;
    .end local v13    # "dt_url":Ljava/lang/String;
    .end local v19    # "ninepatch":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v21

    goto/16 :goto_2
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 0
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 47
    iput p1, p0, Lvw/DecktradeProvider;->foreground:I

    .line 48
    iput p2, p0, Lvw/DecktradeProvider;->background:I

    .line 49
    return-void
.end method
