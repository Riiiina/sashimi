.class public Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;
.super Ljava/lang/Object;
.source "FeaturedAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;,
        Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$MyWebChromeClient;
    }
.end annotation


# static fields
.field static final CONFIG_APP_CLICK_PARAMS:Ljava/lang/String; = "clkp"

.field static final CONFIG_APP_EVENT_TYPE:Ljava/lang/String; = "type"

.field static final CONFIG_APP_INSTALL_PARAMS:Ljava/lang/String; = "instp"

.field static final CONFIG_APP_PACKAGE:Ljava/lang/String; = "pkg"

.field static final CONFIG_APP_SENT:Ljava/lang/String; = "sent"

.field static final CONFIG_APP_TIME:Ljava/lang/String; = "t"

.field static final CONFIG_TYPE_CLICK:Ljava/lang/String; = "click"

.field static final CONFIG_TYPE_INSTALL:Ljava/lang/String; = "install"

.field static final CONFIG_TYPE_UNINSTALL:Ljava/lang/String; = "uninstall"

.field static final EVENT:Ljava/lang/String; = "event"

.field private static final JSON_INSTALLED:Ljava/lang/String; = "installed"

.field private static final JSON_SELECTED:Ljava/lang/String; = "selected"

.field static final KEY:Ljava/lang/String; = "key"

.field public static final jsonRpc:Lcmn/JsonRpc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcmn/JsonRpc;

    const-string v1, "http://p.appbrain.com"

    const-string v2, "/api/ad"

    const-string v3, "AppBrain"

    invoke-direct {v0, v1, v2, v3}, Lcmn/JsonRpc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->jsonRpc:Lcmn/JsonRpc;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureWebView(Landroid/content/Context;Landroid/webkit/WebView;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "app"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 176
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 177
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 178
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 179
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 180
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 181
    new-instance v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;

    invoke-direct {v0, p0, p2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;-><init>(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 182
    .local v0, "js":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;
    const-string v2, "adApi"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static createAppEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "installParams"    # Ljava/lang/String;
    .param p4, "clickParams"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 208
    const-string v2, "instp"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v2, "clkp"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "sent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method static createUrlParameters(Lcmn/AppProperties;)Ljava/lang/String;
    .locals 6
    .param p0, "props"    # Lcmn/AppProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, "urlParams":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v0

    .line 75
    .local v0, "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "src"

    invoke-virtual {p0}, Lcmn/AppProperties;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lvw/ViewProvider;->peekBrowserDetect()Lcmn/BrowserDetect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    const-string v3, "ua"

    invoke-static {}, Lvw/ViewProvider;->peekBrowserDetect()Lcmn/BrowserDetect;

    move-result-object v4

    invoke-virtual {v4}, Lcmn/BrowserDetect;->getAgent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0    # "props":Lcmn/AppProperties;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "key":Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createWebView(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .prologue
    .line 160
    iget-object v2, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 161
    .local v0, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "view":Landroid/webkit/WebView;
    invoke-static {p0, v1, v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->configureWebView(Landroid/content/Context;Landroid/webkit/WebView;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 163
    new-instance v2, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$MyWebChromeClient;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$MyWebChromeClient;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$MyWebChromeClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 164
    iget-object v2, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->webUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 165
    return-object v1
.end method

.method public static formatCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "price"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "FREE"

    .line 59
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v4

    .line 67
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    move v2, v4

    .line 69
    goto :goto_0
.end method

.method public static reportSelectedApp(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V
    .locals 9
    .param p0, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .prologue
    .line 220
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v2, "data":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .local v5, "selected":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    array-length v6, v6

    if-lt v4, v6, :cond_0

    .line 226
    const-string v6, "selected"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v1, "apps":Lorg/json/JSONObject;
    const-string v6, "installed"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 234
    sget-object v6, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->jsonRpc:Lcmn/JsonRpc;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "?action=select"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->extraUrlParameters:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 235
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selectParams:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-virtual {v6, v7, v8}, Lcmn/JsonRpc;->requestData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .end local v1    # "apps":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "selected":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 224
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "selected":Lorg/json/JSONArray;
    :cond_0
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    .restart local v1    # "apps":Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 232
    .local v0, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installed:Z

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    .end local v1    # "apps":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "selected":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 237
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 239
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static trackClick(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickParams:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->trackClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static trackClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installParams"    # Ljava/lang/String;
    .param p3, "clickParams"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v2, "click"

    invoke-static {p0, p1, v2, p2, p3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createAppEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "event":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appspot/swisscodemonkeys/featured/SendService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "event"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "click"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
.end method
