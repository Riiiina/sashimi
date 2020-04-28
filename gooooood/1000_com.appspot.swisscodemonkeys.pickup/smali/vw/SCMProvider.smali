.class public Lvw/SCMProvider;
.super Lvw/ViewProvider;
.source "SCMProvider.java"


# instance fields
.field private background:I

.field private endpoint:Ljava/lang/String;

.field private foreground:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "http://www.latest.androidpickup.appspot.com/request"

    iput-object v0, p0, Lvw/SCMProvider;->endpoint:Ljava/lang/String;

    .line 44
    const/high16 v0, -0x1000000

    iput v0, p0, Lvw/SCMProvider;->foreground:I

    const/high16 v0, 0x30000000

    iput v0, p0, Lvw/SCMProvider;->background:I

    .line 48
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lvw/SCMProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lvw/SCMProvider;->ping(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lvw/SCMProvider;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lvw/SCMProvider;->foreground:I

    return v0
.end method

.method static synthetic access$2(Lvw/SCMProvider;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lvw/SCMProvider;->background:I

    return v0
.end method

.method private ping(Ljava/lang/String;)V
    .locals 2
    .param p1, "pingUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvw/SCMProvider$1;

    invoke-direct {v1, p0, p1}, Lvw/SCMProvider$1;-><init>(Lvw/SCMProvider;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_0
    return-void
.end method

.method private retrieveJSON(Lcmn/AppProperties;Z)Lorg/json/JSONObject;
    .locals 23
    .param p1, "props"    # Lcmn/AppProperties;
    .param p2, "justIP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v19, "urlBuilder":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/SCMProvider;->endpoint:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/SCMProvider;->endpoint:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 94
    .local v9, "first":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v4

    .line 95
    .local v4, "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 96
    const-string v20, "justip"

    const-string v21, "1"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    const-string v20, "src"

    invoke-virtual/range {p1 .. p1}, Lcmn/AppProperties;->getAppName()Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v20, "ua"

    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lvw/SCMProvider;->getBrowserDetect(Landroid/content/Context;)Lcmn/BrowserDetect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcmn/BrowserDetect;->getAgent()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local p1    # "props":Lcmn/AppProperties;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_8

    .line 113
    const-string v7, ""

    .line 115
    .local v7, "contents":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 117
    .local v6, "conn":Ljava/net/URLConnection;
    const/16 v20, 0x2710

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 118
    const/16 v20, 0x2710

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 119
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 120
    .local v11, "in":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v5, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_a

    .line 130
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 131
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v13, "json":Lorg/json/JSONObject;
    const-string v20, "ip"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lvw/SCMProvider;->setIp(Ljava/lang/String;)V

    .line 135
    const/4 v10, 0x0

    .line 136
    .local v10, "gender":Ljava/lang/Boolean;
    const-string v20, "g"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 137
    const-string v20, "g"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 139
    :cond_1
    const/4 v3, 0x0

    .line 140
    .local v3, "age":Ljava/lang/String;
    const-string v20, "a"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 141
    const-string v20, "a"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    :cond_2
    invoke-static {v10, v3}, Lvw/SCMProvider;->setDemo(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 146
    const-string v20, "scmpconf"

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "newConfig":Ljava/lang/String;
    const-string v20, "scmset"

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, "newSettings":Ljava/lang/String;
    if-nez v16, :cond_3

    if-eqz v17, :cond_6

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 151
    .local v8, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v16, :cond_4

    .line 152
    const-string v20, "scmpconf"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    :cond_4
    if-eqz v17, :cond_5

    .line 155
    const-string v20, "scmset"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    :cond_5
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    invoke-static {}, Lcmn/AdConfig;->touchConfig()V

    .end local v8    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_6
    move-object/from16 v20, v13

    .line 162
    .end local v3    # "age":Ljava/lang/String;
    .end local v10    # "gender":Ljava/lang/Boolean;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v16    # "newConfig":Ljava/lang/String;
    .end local v17    # "newSettings":Ljava/lang/String;
    :goto_4
    return-object v20

    .line 93
    .end local v4    # "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "contents":Ljava/lang/String;
    .end local v9    # "first":Z
    .restart local p1    # "props":Lcmn/AppProperties;
    :cond_7
    const/16 v20, 0x1

    move/from16 v9, v20

    goto/16 :goto_0

    .line 101
    .end local p1    # "props":Lcmn/AppProperties;
    .restart local v4    # "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "first":Z
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 102
    .local v14, "key":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 103
    const-string v21, "?"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :goto_5
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v21, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 105
    :cond_9
    const-string v21, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 125
    .end local v14    # "key":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_a
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_2

    .line 162
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    :cond_b
    const/16 v20, 0x0

    goto :goto_4

    .line 127
    :catch_0
    move-exception v20

    goto/16 :goto_3
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
    .line 53
    invoke-super {p0, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    .line 54
    const-string v0, "endpoint"

    iget-object v1, p0, Lvw/SCMProvider;->endpoint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/SCMProvider;->endpoint:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getIP(Lcmn/AppProperties;)V
    .locals 2
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 84
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lvw/SCMProvider;->retrieveJSON(Lcmn/AppProperties;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 23
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 169
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lvw/SCMProvider;->retrieveJSON(Lcmn/AppProperties;Z)Lorg/json/JSONObject;

    move-result-object v19

    .line 170
    .local v19, "json":Lorg/json/JSONObject;
    if-eqz v19, :cond_3

    .line 171
    const-string v4, "url"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "url":Ljava/lang/String;
    const-string v4, "email"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "email":Ljava/lang/String;
    const-string v4, "contents"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "emailContents":Ljava/lang/String;
    const-string v4, "text"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, "text":Ljava/lang/String;
    const-string v4, "ninepatch"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 177
    .local v20, "ninepatch":Ljava/lang/String;
    const-string v4, "img"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 178
    .local v16, "image":Ljava/lang/String;
    const-string v4, "html"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "html":Ljava/lang/String;
    const-string v4, "pingurl"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "pingUrl":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 187
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 188
    .local v17, "imgUrl":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 189
    .local v14, "conn":Ljava/net/URLConnection;
    const/16 v4, 0x2710

    invoke-virtual {v14, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 190
    const/16 v4, 0x2710

    invoke-virtual {v14, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 191
    invoke-virtual {v14}, Ljava/net/URLConnection;->connect()V

    .line 192
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 195
    .local v18, "is":Ljava/io/InputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 200
    .end local v14    # "conn":Ljava/net/URLConnection;
    .end local v17    # "imgUrl":Ljava/net/URL;
    .end local v18    # "is":Ljava/io/InputStream;
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/16 v21, 0x0

    .line 201
    .local v21, "ninepatchDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_2

    .line 202
    invoke-static/range {v20 .. v20}, Lvw/Util;->getDrawableFromLocation(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 206
    :goto_1
    move-object/from16 v9, v21

    .line 208
    .local v9, "finalNinepatchDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 209
    .local v22, "spanned":Landroid/text/Spanned;
    if-eqz v7, :cond_0

    .line 210
    invoke-static {v7}, Lvw/Util;->prepareHTML(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    .line 212
    :cond_0
    move-object/from16 v8, v22

    .line 214
    .local v8, "finalSpanned":Landroid/text/Spanned;
    new-instance v3, Lvw/SCMProvider$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lvw/SCMProvider$2;-><init>(Lvw/SCMProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "result":Lvw/SCMView$ViewResult;
    move-object v4, v3

    .line 279
    .end local v3    # "result":Lvw/SCMView$ViewResult;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "email":Ljava/lang/String;
    .end local v7    # "html":Ljava/lang/String;
    .end local v8    # "finalSpanned":Landroid/text/Spanned;
    .end local v9    # "finalNinepatchDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "pingUrl":Ljava/lang/String;
    .end local v13    # "emailContents":Ljava/lang/String;
    .end local v16    # "image":Ljava/lang/String;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "ninepatch":Ljava/lang/String;
    .end local v21    # "ninepatchDrawable":Landroid/graphics/drawable/Drawable;
    .end local v22    # "spanned":Landroid/text/Spanned;
    :goto_2
    return-object v4

    .line 197
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "email":Ljava/lang/String;
    .restart local v7    # "html":Ljava/lang/String;
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v12    # "pingUrl":Ljava/lang/String;
    .restart local v13    # "emailContents":Ljava/lang/String;
    .restart local v16    # "image":Ljava/lang/String;
    .restart local v19    # "json":Lorg/json/JSONObject;
    .restart local v20    # "ninepatch":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 204
    .restart local v21    # "ninepatchDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    .line 276
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "email":Ljava/lang/String;
    .end local v7    # "html":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "pingUrl":Ljava/lang/String;
    .end local v13    # "emailContents":Ljava/lang/String;
    .end local v16    # "image":Ljava/lang/String;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "ninepatch":Ljava/lang/String;
    .end local v21    # "ninepatchDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 277
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 0
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 59
    iput p1, p0, Lvw/SCMProvider;->foreground:I

    .line 60
    iput p2, p0, Lvw/SCMProvider;->background:I

    .line 61
    return-void
.end method
