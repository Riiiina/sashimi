.class public Lvw/MultiProvider;
.super Lvw/ViewProvider;
.source "MultiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/MultiProvider$ProviderSettings;
    }
.end annotation


# static fields
.field public static final PROVIDER_CONFIG:Ljava/lang/String; = "pconf"

.field public static final PROVIDER_WEIGHT:Ljava/lang/String; = "pw"


# instance fields
.field public lastIPTry:J

.field private subProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvw/MultiProvider$ProviderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvw/MultiProvider;->lastIPTry:J

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvw/MultiProvider;->subProviders:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v4, "pw"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 109
    .local v3, "weights":Lorg/json/JSONArray;
    const-string v4, "pconf"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 110
    .local v0, "configs":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 116
    invoke-super {p0, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    .line 117
    return-void

    .line 111
    :cond_0
    new-instance v2, Lvw/MultiProvider$ProviderSettings;

    invoke-direct {v2}, Lvw/MultiProvider$ProviderSettings;-><init>()V

    .line 112
    .local v2, "settings":Lvw/MultiProvider$ProviderSettings;
    iget-object v4, p0, Lvw/MultiProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lvw/ViewProvider;->getFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lvw/ViewProvider;

    move-result-object v4

    iput-object v4, v2, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    .line 113
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lvw/MultiProvider$ProviderSettings;->weight:D

    .line 114
    iget-object v4, p0, Lvw/MultiProvider;->subProviders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 18
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 45
    const-wide/16 v10, 0x0

    .line 46
    .local v10, "weightSum":D
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lvw/MultiProvider;->subProviders:Ljava/util/List;

    move-object v12, v0

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v5, "provider_copy":Ljava/util/List;, "Ljava/util/List<Lvw/MultiProvider$ProviderSettings;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_0

    .line 89
    const/4 v12, 0x0

    :goto_1
    return-object v12

    .line 49
    :cond_0
    const-wide/16 v10, 0x0

    .line 50
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    .line 54
    .local v7, "r":D
    const/4 v4, 0x0

    .line 55
    .local v4, "index":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lt v4, v12, :cond_6

    .line 61
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lt v4, v12, :cond_2

    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int v4, v12, v13

    .line 66
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw/MultiProvider$ProviderSettings;

    iget-object v12, v3, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    invoke-virtual {v12}, Lvw/ViewProvider;->needsIP()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lvw/MultiProvider;->getIp()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    .line 67
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvw/MultiProvider;->lastIPTry:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x57e40

    sub-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lt v3, v12, :cond_7

    .line 77
    .end local v3    # "i":I
    :cond_3
    :goto_5
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw/MultiProvider$ProviderSettings;

    iget-object v12, v3, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lvw/ViewProvider;->getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;

    move-result-object v9

    .line 79
    .local v9, "result":Lvw/SCMView$ViewResult;
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw/MultiProvider$ProviderSettings;

    iget-object v12, v3, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    instance-of v12, v12, Lvw/SCMProvider;

    if-eqz v12, :cond_4

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvw/MultiProvider;->lastIPTry:J

    .line 83
    :cond_4
    if-eqz v9, :cond_9

    move-object v12, v9

    .line 84
    goto :goto_1

    .line 50
    .end local v4    # "index":I
    .end local v7    # "r":D
    .end local v9    # "result":Lvw/SCMView$ViewResult;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvw/MultiProvider$ProviderSettings;

    .line 51
    .local v6, "ps":Lvw/MultiProvider$ProviderSettings;
    iget-wide v13, v6, Lvw/MultiProvider$ProviderSettings;->weight:D

    add-double/2addr v10, v13

    goto :goto_2

    .line 56
    .end local v6    # "ps":Lvw/MultiProvider$ProviderSettings;
    .restart local v4    # "index":I
    .restart local v7    # "r":D
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw/MultiProvider$ProviderSettings;

    iget-wide v12, v3, Lvw/MultiProvider$ProviderSettings;->weight:D

    div-double/2addr v12, v10

    sub-double/2addr v7, v12

    .line 57
    const-wide/16 v12, 0x0

    cmpg-double v12, v7, v12

    if-ltz v12, :cond_1

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 70
    .restart local v3    # "i":I
    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvw/MultiProvider$ProviderSettings;

    iget-object v12, v6, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    instance-of v12, v12, Lvw/SCMProvider;

    if-eqz v12, :cond_8

    .line 71
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "i":I
    check-cast v3, Lvw/MultiProvider$ProviderSettings;

    iget-object v3, v3, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    check-cast v3, Lvw/SCMProvider;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lvw/SCMProvider;->getIP(Lcmn/AppProperties;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvw/MultiProvider;->lastIPTry:J

    goto :goto_5

    .line 69
    .restart local v3    # "i":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 86
    .end local v3    # "i":I
    .restart local v9    # "result":Lvw/SCMView$ViewResult;
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 3
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lvw/MultiProvider;->subProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    return-void

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw/MultiProvider$ProviderSettings;

    .line 95
    .local v0, "ps":Lvw/MultiProvider$ProviderSettings;
    iget-object v2, v0, Lvw/MultiProvider$ProviderSettings;->provider:Lvw/ViewProvider;

    invoke-virtual {v2, p1, p2}, Lvw/ViewProvider;->setPreferredColors(II)V

    goto :goto_0
.end method
