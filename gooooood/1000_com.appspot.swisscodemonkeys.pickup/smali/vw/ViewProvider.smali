.class public abstract Lvw/ViewProvider;
.super Ljava/lang/Object;
.source "ViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/ViewProvider$ShowNothingProvider;,
        Lvw/ViewProvider$ViewProviderFactory;
    }
.end annotation


# static fields
.field public static final CUSTOM_TYPE:Ljava/lang/String; = "Custom"

.field public static final DECKTRADE_TYPE:Ljava/lang/String; = "Deck"

.field private static final KEEP_IP_S:I = 0x258

.field public static final MULTI_TYPE:Ljava/lang/String; = "Multi"

.field public static final SCM_TYPE:Ljava/lang/String; = "SCM"

.field private static age:Ljava/lang/String;

.field private static browserDetect:Lcmn/BrowserDetect;

.field private static final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lvw/ViewProvider$ViewProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static gender:Ljava/lang/Boolean;

.field private static lastIp:Ljava/lang/String;

.field private static lastIpTime:J


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 36
    sput-object v0, Lvw/ViewProvider;->factories:Ljava/util/Map;

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lvw/ViewProvider;->lastIpTime:J

    .line 42
    sput-object v2, Lvw/ViewProvider;->lastIp:Ljava/lang/String;

    .line 43
    sput-object v2, Lvw/ViewProvider;->gender:Ljava/lang/Boolean;

    .line 44
    sput-object v2, Lvw/ViewProvider;->age:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lvw/ViewProvider;->context:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Lvw/ViewProvider;->getBrowserDetect(Landroid/content/Context;)Lcmn/BrowserDetect;

    .line 127
    return-void
.end method

.method public static addFactory(Ljava/lang/String;Lvw/ViewProvider$ViewProviderFactory;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "factory"    # Lvw/ViewProvider$ViewProviderFactory;

    .prologue
    .line 51
    sget-object v0, Lvw/ViewProvider;->factories:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public static getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lvw/ViewProvider;->age:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getBrowserDetect(Landroid/content/Context;)Lcmn/BrowserDetect;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v0, Lvw/ViewProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvw/ViewProvider;->browserDetect:Lcmn/BrowserDetect;

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcmn/BrowserDetect;->getDetector(Landroid/content/Context;)Lcmn/BrowserDetect;

    move-result-object v1

    sput-object v1, Lvw/ViewProvider;->browserDetect:Lcmn/BrowserDetect;

    .line 87
    :cond_0
    sget-object v1, Lvw/ViewProvider;->browserDetect:Lcmn/BrowserDetect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lvw/ViewProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "type":Ljava/lang/String;
    const-string v3, "Multi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v1, Lvw/MultiProvider;

    invoke-direct {v1, p0}, Lvw/MultiProvider;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "result":Lvw/ViewProvider;
    :goto_0
    invoke-virtual {v1, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    move-object v3, v1

    .line 166
    .end local v1    # "result":Lvw/ViewProvider;
    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 150
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "Deck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    new-instance v1, Lvw/DecktradeProvider;

    invoke-direct {v1, p0}, Lvw/DecktradeProvider;-><init>(Landroid/content/Context;)V

    .restart local v1    # "result":Lvw/ViewProvider;
    goto :goto_0

    .line 152
    .end local v1    # "result":Lvw/ViewProvider;
    :cond_1
    const-string v3, "SCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    new-instance v1, Lvw/SCMProvider;

    invoke-direct {v1, p0}, Lvw/SCMProvider;-><init>(Landroid/content/Context;)V

    .restart local v1    # "result":Lvw/ViewProvider;
    goto :goto_0

    .line 154
    .end local v1    # "result":Lvw/ViewProvider;
    :cond_2
    const-string v3, "Custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    new-instance v1, Lvw/CustProv;

    invoke-direct {v1, p0}, Lvw/CustProv;-><init>(Landroid/content/Context;)V

    .restart local v1    # "result":Lvw/ViewProvider;
    goto :goto_0

    .line 156
    .end local v1    # "result":Lvw/ViewProvider;
    :cond_3
    sget-object v3, Lvw/ViewProvider;->factories:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    sget-object v3, Lvw/ViewProvider;->factories:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvw/ViewProvider$ViewProviderFactory;

    invoke-interface {v3, p0}, Lvw/ViewProvider$ViewProviderFactory;->create(Landroid/content/Context;)Lvw/ViewProvider;

    move-result-object v1

    .restart local v1    # "result":Lvw/ViewProvider;
    goto :goto_0

    .line 160
    .end local v1    # "result":Lvw/ViewProvider;
    :cond_4
    new-instance v3, Lvw/ViewProvider$ShowNothingProvider;

    invoke-direct {v3, p0}, Lvw/ViewProvider$ShowNothingProvider;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, "jsonEx":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 166
    new-instance v3, Lvw/ViewProvider$ShowNothingProvider;

    invoke-direct {v3, p0}, Lvw/ViewProvider$ShowNothingProvider;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getGender()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lvw/ViewProvider;->gender:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lvw/ViewProvider;->lastIpTime:J

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 56
    sget-object v0, Lvw/ViewProvider;->lastIp:Ljava/lang/String;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFactoryRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lvw/ViewProvider;->factories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized peekBrowserDetect()Lcmn/BrowserDetect;
    .locals 2

    .prologue
    .line 94
    const-class v0, Lvw/ViewProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvw/ViewProvider;->browserDetect:Lcmn/BrowserDetect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDemo(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p0, "gender"    # Ljava/lang/Boolean;
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 68
    sput-object p0, Lvw/ViewProvider;->gender:Ljava/lang/Boolean;

    .line 69
    sput-object p1, Lvw/ViewProvider;->age:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static setIp(Ljava/lang/String;)V
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lvw/ViewProvider;->lastIpTime:J

    .line 64
    sput-object p0, Lvw/ViewProvider;->lastIp:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v2, "fg"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "fg":Ljava/lang/String;
    const-string v2, "bg"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "bg":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lvw/ViewProvider;->setPreferredColors(II)V

    .line 139
    :cond_0
    return-void
.end method

.method public abstract getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
.end method

.method protected handleClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :try_start_0
    iget-object v2, p0, Lvw/ViewProvider;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "vp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not start activity for click on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract needsIP()Z
.end method

.method public abstract setPreferredColors(II)V
.end method
