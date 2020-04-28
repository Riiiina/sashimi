.class public Lcom/clearchannel/iheartradio/model/facebook/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;,
        Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect:cancel"

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "login"

.field protected static OAUTH_ENDPOINT:Ljava/lang/String; = null

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final TOKEN:Ljava/lang/String; = "access_token"

.field protected static UI_SERVER:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x24dbf9dbcdd12371L


# instance fields
.field public appId:Ljava/lang/String;

.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field public permisssions:[Ljava/lang/String;

.field public user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "https://graph.facebook.com/oauth/authorize"

    sput-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 63
    const-string v0, "https://www.facebook.com/connect/uiserver.php"

    sput-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 64
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 65
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    .line 69
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "permisssions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    .line 69
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    .line 135
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Facebook Applicaton ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .prologue
    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    array-length v1, p3

    if-lez v1, :cond_0

    .line 184
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 187
    const-string v1, "login"

    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;

    invoke-direct {v2, p0, p4}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;-><init>(Lcom/clearchannel/iheartradio/model/facebook/Facebook;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    .line 228
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .prologue
    .line 450
    const-string v2, "login"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    sget-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 452
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "type"

    const-string v3, "user_agent"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "redirect_uri"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_0
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v2, "sdk"

    const-string v3, "android"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "url":Ljava/lang/String;
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const-string v2, "Error"

    .line 467
    const-string v3, "Application requires permission to access the Internet"

    .line 466
    invoke-static {p1, v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_1
    return-void

    .line 455
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 456
    .restart local v0    # "endpoint":Ljava/lang/String;
    const-string v2, "method"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "next"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-direct {v2, p1, v1, p4}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->show()V

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .prologue
    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    .line 427
    return-void
.end method

.method public getAccessExpires()J
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermisssions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    return-object v0
.end method

.method public getmAccessExpires()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getmAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 477
    goto :goto_0
.end method

.method public loadMe()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 390
    .local v0, "data":Ljava/util/Hashtable;
    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v5, "sdk"

    const-string v6, "android"

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v5, "access_token"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/me"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "url":Ljava/lang/String;
    const-string v5, "GET"

    invoke-static {v4, v0, v5}, Lcom/clearchannel/iheartradio/model/facebook/Util;->simpleRequest(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 398
    .local v2, "jsObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    invoke-direct {v5, v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/clearchannel/iheartradio/model/facebook/FacebookError; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v2    # "jsObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 401
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 404
    .local v1, "e":Lcom/clearchannel/iheartradio/model/facebook/FacebookError;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;->printStackTrace()V

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/facebook/Util;->clearCookies(Landroid/content/Context;)V

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "auth.expireSession"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "response":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 254
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->setAccessExpires(J)V

    .line 255
    return-object v1
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 377
    .local v0, "url":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 519
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    .line 520
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 4
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 530
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->setAccessExpires(J)V

    .line 533
    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPermisssions([Ljava/lang/String;)V
    .locals 0
    .param p1, "permisssions"    # [Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUser(Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;)V
    .locals 0
    .param p1, "user"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    .line 130
    return-void
.end method

.method public setmAccessExpires(J)V
    .locals 0
    .param p1, "mAccessExpires"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessExpires:J

    .line 118
    return-void
.end method

.method public setmAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessToken"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public simpleRequest(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Hashtable;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {p2, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->simpleRequest(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
