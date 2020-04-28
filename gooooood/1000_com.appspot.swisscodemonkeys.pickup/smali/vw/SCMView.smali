.class public Lvw/SCMView;
.super Landroid/widget/FrameLayout;
.source "SCMView.java"

# interfaces
.implements Lcmn/SCMApp$ActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/SCMView$ViewResult;
    }
.end annotation


# static fields
.field private static final ADMOB_ADS:Ljava/lang/String; = "admobAds"

.field public static final ANIMATION_DURATION_MS:I = 0x1f4

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field public static EXTRA_KW:Ljava/lang/String; = null

.field private static final GOOGLE_ADS:Ljava/lang/String; = "gAds"

.field private static final MAX_AD_AGE_MS:I = 0x7530

.field private static final PROVIDER_REFRESH_INTERVAL:I = 0x258

.field private static lastAdResult:Lvw/SCMView$ViewResult;

.field private static lastAdTime:J

.field private static lastConfigRefresh:J

.field private static provider:Lvw/ViewProvider;

.field private static refreshIntervalS:I


# instance fields
.field private animationUtil:Lvw/AnimationHelper;

.field private handler:Landroid/os/Handler;

.field private hasAd:Z

.field private isGoogleAd:Z

.field private lastAdRefresh:J

.field private refreshTimer:Ljava/util/Timer;

.field private requestingAd:Z

.field private scmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 81
    sput-wide v1, Lvw/SCMView;->lastConfigRefresh:J

    .line 82
    const/16 v0, 0x1e

    sput v0, Lvw/SCMView;->refreshIntervalS:I

    .line 84
    sput-wide v1, Lvw/SCMView;->lastAdTime:J

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lvw/SCMView;->lastAdResult:Lvw/SCMView$ViewResult;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lvw/SCMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lvw/SCMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v7, p0, Lvw/SCMView;->requestingAd:Z

    .line 72
    iput-boolean v7, p0, Lvw/SCMView;->hasAd:Z

    .line 74
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lvw/SCMView;->lastAdRefresh:J

    .line 76
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lvw/SCMView;->handler:Landroid/os/Handler;

    .line 87
    iput-boolean v8, p0, Lvw/SCMView;->scmEnabled:Z

    .line 88
    iput-boolean v7, p0, Lvw/SCMView;->isGoogleAd:Z

    .line 92
    new-instance v5, Lvw/AnimationHelper;

    invoke-direct {v5, p0}, Lvw/AnimationHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v5, p0, Lvw/SCMView;->animationUtil:Lvw/AnimationHelper;

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 96
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "gAds"

    invoke-direct {p0, p1, v4, v5}, Lvw/SCMView;->getStringFromPrefsOrManifest(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "googleString":Ljava/lang/String;
    const-string v5, "admobAds"

    invoke-direct {p0, p1, v4, v5}, Lvw/SCMView;->getStringFromPrefsOrManifest(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "admobString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 99
    iput-boolean v7, p0, Lvw/SCMView;->scmEnabled:Z

    .line 101
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lvw/SCMView;->isGoogleAd:Z

    .line 102
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-static {p0, v3, v4}, Lvw/GoogleAds;->initGoogle(Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_0
    instance-of v5, p1, Lcmn/SCMApp;

    if-eqz v5, :cond_2

    .line 122
    check-cast p1, Lcmn/SCMApp;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, p0}, Lcmn/SCMApp;->addActivityListener(Lcmn/SCMApp$ActivityListener;)V

    .line 126
    :goto_1
    return-void

    .line 104
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 105
    .local v1, "ex":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1    # "ex":Lorg/json/JSONException;
    :cond_0
    if-eqz v0, :cond_1

    .line 109
    iput-boolean v7, p0, Lvw/SCMView;->scmEnabled:Z

    .line 111
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-static {p0, v3, v4}, Lvw/Admob;->initAdmob(Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 113
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 114
    .restart local v1    # "ex":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "ex":Lorg/json/JSONException;
    :cond_1
    iput-boolean v8, p0, Lvw/SCMView;->scmEnabled:Z

    .line 119
    invoke-direct {p0}, Lvw/SCMView;->init()V

    goto :goto_0

    .line 124
    :cond_2
    const-string v5, "scm"

    const-string v6, "View with context != SCMApp"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 84
    sget-wide v0, Lvw/SCMView;->lastAdTime:J

    return-wide v0
.end method

.method static synthetic access$1()Lvw/SCMView$ViewResult;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lvw/SCMView;->lastAdResult:Lvw/SCMView$ViewResult;

    return-object v0
.end method

.method static synthetic access$10(Lvw/SCMView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvw/SCMView;->refreshTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$11(Lvw/SCMView;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lvw/SCMView;->refreshTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$12(Lvw/SCMView;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lvw/SCMView;->refreshAd()V

    return-void
.end method

.method static synthetic access$2()Lvw/ViewProvider;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lvw/SCMView;->provider:Lvw/ViewProvider;

    return-object v0
.end method

.method static synthetic access$3(Lvw/SCMView$ViewResult;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lvw/SCMView;->lastAdResult:Lvw/SCMView$ViewResult;

    return-void
.end method

.method static synthetic access$4(J)V
    .locals 0

    .prologue
    .line 84
    sput-wide p0, Lvw/SCMView;->lastAdTime:J

    return-void
.end method

.method static synthetic access$5(Lvw/SCMView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lvw/SCMView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lvw/SCMView;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lvw/SCMView;->hasAd:Z

    return v0
.end method

.method static synthetic access$7(Lvw/SCMView;)Lvw/AnimationHelper;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lvw/SCMView;->animationUtil:Lvw/AnimationHelper;

    return-object v0
.end method

.method static synthetic access$8(Lvw/SCMView;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lvw/SCMView;->hasAd:Z

    return-void
.end method

.method static synthetic access$9(Lvw/SCMView;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lvw/SCMView;->requestingAd:Z

    return-void
.end method

.method private static checkProvider(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "currentTime":J
    sget-object v6, Lvw/SCMView;->provider:Lvw/ViewProvider;

    if-nez v6, :cond_2

    move v5, v11

    .line 217
    .local v5, "shouldRefresh":Z
    :goto_0
    :try_start_0
    sget-object v6, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    if-nez v5, :cond_3

    .line 219
    sget-wide v6, Lvw/SCMView;->lastConfigRefresh:J

    const-wide/32 v8, 0x927c0

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_3

    move v5, v10

    .line 220
    :goto_1
    if-nez v5, :cond_4

    invoke-static {}, Lcmn/AdConfig;->getLastConfigTouch()J

    move-result-wide v6

    sget-wide v8, Lvw/SCMView;->lastConfigRefresh:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    move v5, v10

    .line 222
    :goto_2
    if-eqz v5, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lvw/SCMView;->lastConfigRefresh:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    sget-object v6, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    if-eqz v5, :cond_1

    .line 230
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 231
    const-string v6, "scmset"

    .line 230
    invoke-static {p0, v6}, Lvw/SCMView;->getConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    .local v4, "settings":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    .line 233
    const-string v6, "scmpconf"

    .line 232
    invoke-static {p0, v6}, Lvw/SCMView;->getConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "providerConfig":Lorg/json/JSONObject;
    invoke-static {p0, v3}, Lvw/ViewProvider;->getFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lvw/ViewProvider;

    move-result-object v6

    sput-object v6, Lvw/SCMView;->provider:Lvw/ViewProvider;

    .line 236
    const-string v6, "refresh"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lvw/SCMView;->refreshIntervalS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .end local v3    # "providerConfig":Lorg/json/JSONObject;
    .end local v4    # "settings":Lorg/json/JSONObject;
    :goto_3
    :try_start_2
    sget-object v6, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lvw/SCMView;->lastConfigRefresh:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    sget-object v6, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 248
    :cond_1
    return-void

    .end local v5    # "shouldRefresh":Z
    :cond_2
    move v5, v10

    .line 215
    goto :goto_0

    .restart local v5    # "shouldRefresh":Z
    :cond_3
    move v5, v11

    .line 219
    goto :goto_1

    :cond_4
    move v5, v11

    .line 220
    goto :goto_2

    .line 225
    :catchall_0
    move-exception v6

    .line 226
    sget-object v7, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    throw v6

    .line 237
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 238
    .local v2, "jsonEx":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    new-instance v6, Lvw/ViewProvider$ShowNothingProvider;

    invoke-direct {v6, p0}, Lvw/ViewProvider$ShowNothingProvider;-><init>(Landroid/content/Context;)V

    sput-object v6, Lvw/SCMView;->provider:Lvw/ViewProvider;

    goto :goto_3

    .line 244
    .end local v2    # "jsonEx":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 245
    sget-object v7, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    throw v6
.end method

.method private static getConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 192
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 193
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 199
    const/16 v6, 0x80

    .line 198
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 201
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 202
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v5, v4

    .line 209
    :goto_0
    return-object v5

    .line 204
    .restart local v2    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, "e":Ljava/lang/Exception;
    move-object v5, v7

    .line 206
    goto :goto_0
.end method

.method private getStringFromPrefsOrManifest(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "prefName"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v3, ""

    invoke-interface {p2, p3, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "disabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 134
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 135
    const/16 v4, 0x80

    .line 134
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 138
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "disabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    .line 147
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 140
    .restart local v1    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v1}, Lvw/SCMView;->setFocusable(Z)V

    .line 172
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lvw/SCMView;->setDescendantFocusability(I)V

    .line 173
    invoke-virtual {p0, v1}, Lvw/SCMView;->setClickable(Z)V

    .line 180
    return-void
.end method

.method private refreshAd()V
    .locals 8

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, "t":J
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lvw/SCMView;->requestingAd:Z

    if-nez v2, :cond_0

    .line 253
    iget-wide v2, p0, Lvw/SCMView;->lastAdRefresh:J

    sget v4, Lvw/SCMView;->refreshIntervalS:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, p0, Lvw/SCMView;->requestingAd:Z

    .line 255
    invoke-static {}, Lcmn/UpdateChecker;->isBusyChecking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v2, 0x0

    iput-boolean v2, p0, Lvw/SCMView;->requestingAd:Z

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iput-wide v0, p0, Lvw/SCMView;->lastAdRefresh:J

    .line 261
    invoke-virtual {p0}, Lvw/SCMView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lvw/SCMView;->checkProvider(Landroid/content/Context;)V

    .line 263
    new-instance v2, Lvw/SCMView$1;

    invoke-direct {v2, p0, v0, v1}, Lvw/SCMView$1;-><init>(Lvw/SCMView;J)V

    .line 314
    invoke-virtual {v2}, Lvw/SCMView$1;->start()V

    goto :goto_0
.end method

.method static selectRandomN(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "origStr"    # Ljava/lang/String;
    .param p1, "n"    # I

    .prologue
    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v4, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_1

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 157
    .local v1, "first":Z
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 158
    .local v6, "r":Ljava/util/Random;
    const/4 v2, 0x0

    .end local p0    # "origStr":Ljava/lang/String;
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 152
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "first":Z
    .end local v2    # "i":I
    .end local v6    # "r":Ljava/util/Random;
    .restart local p0    # "origStr":Ljava/lang/String;
    :cond_1
    aget-object v5, v7, v9

    .line 153
    .local v5, "kw":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 159
    .end local v5    # "kw":Ljava/lang/String;
    .end local p0    # "origStr":Ljava/lang/String;
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "first":Z
    .restart local v2    # "i":I
    .restart local v6    # "r":Ljava/util/Random;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 160
    .local v3, "index":I
    if-nez v1, :cond_3

    .line 161
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_3
    const/4 v1, 0x0

    .line 164
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setRefreshTimer(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lvw/SCMView;->scmEnabled:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lvw/SCMView;->handler:Landroid/os/Handler;

    new-instance v1, Lvw/SCMView$2;

    invoke-direct {v1, p0, p1}, Lvw/SCMView$2;-><init>(Lvw/SCMView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvw/SCMView;->setRefreshTimer(Z)V

    .line 425
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 395
    const/16 v0, 0x32

    .line 398
    .local v0, "h":I
    invoke-virtual {p0}, Lvw/SCMView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const v2, 0x3f7fbe77    # 0.999f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 400
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 409
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lvw/SCMView;->isGoogleAd:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Lvw/GoogleAds;->pauseGoogle(Landroid/view/ViewGroup;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lvw/SCMView;->isGoogleAd:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0}, Lvw/GoogleAds;->resumeGoogle(Landroid/view/ViewGroup;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lvw/SCMView;->setRefreshTimer(Z)V

    .line 362
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 320
    iget-boolean v4, p0, Lvw/SCMView;->scmEnabled:Z

    if-eqz v4, :cond_0

    .line 328
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    .line 330
    .local v3, "originalVisiblity":I
    if-eq v3, p1, :cond_0

    .line 331
    invoke-virtual {p0}, Lvw/SCMView;->getChildCount()I

    move-result v1

    .line 333
    .local v1, "children":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    if-nez p1, :cond_2

    .line 341
    invoke-direct {p0}, Lvw/SCMView;->refreshAd()V

    .line 348
    .end local v1    # "children":I
    .end local v2    # "i":I
    .end local v3    # "originalVisiblity":I
    :cond_0
    :goto_1
    return-void

    .line 334
    .restart local v1    # "children":I
    .restart local v2    # "i":I
    .restart local v3    # "originalVisiblity":I
    :cond_1
    invoke-virtual {p0, v2}, Lvw/SCMView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lvw/SCMView;->removeAllViews()V

    .line 344
    invoke-virtual {p0}, Lvw/SCMView;->invalidate()V

    goto :goto_1
.end method
