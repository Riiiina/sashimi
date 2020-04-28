.class public Lcom/appspot/swisscodemonkeys/apps/model/AppItemParser;
.super Ljava/lang/Object;
.source "AppItemParser.java"


# static fields
.field public static final JSON_ASSET:Ljava/lang/String; = "asset"

.field public static final JSON_DOWNLOADS:Ljava/lang/String; = "dl"

.field public static final JSON_PRICE:Ljava/lang/String; = "price"

.field public static final JSON_RATING:Ljava/lang/String; = "r"

.field public static final JSON_RATING_COUNT:Ljava/lang/String; = "rc"

.field public static final JSON_SNIPPET:Ljava/lang/String; = "snippet"

.field public static final JSON_TIME:Ljava/lang/String; = "time"

.field public static final JSON_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromJson(Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "item"    # Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "app"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, "state":I
    :try_start_0
    const-string v4, "time"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 21
    .local v2, "time":J
    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setAppState(I)V

    .line 22
    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setTime(J)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setPackageName(Ljava/lang/String;)V

    .line 25
    const-string v4, "title"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setTitle(Ljava/lang/String;)V

    .line 26
    const-string v4, "dl"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setDownloads(Ljava/lang/String;)V

    .line 27
    const-string v4, "r"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setRating(D)V

    .line 28
    const-string v4, "rc"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setRatingCount(I)V

    .line 29
    const-string v4, "price"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setPrice(Ljava/lang/String;)V

    .line 31
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setVersion(I)V

    .line 32
    const-string v4, "asset"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setAssetId(Ljava/lang/String;)V

    .line 33
    const-string v4, "snippet"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->setSnippet(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 34
    .end local v2    # "time":J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 35
    .local v0, "jsonEx":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
