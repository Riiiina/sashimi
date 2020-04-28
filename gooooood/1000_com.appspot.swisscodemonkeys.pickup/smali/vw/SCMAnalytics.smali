.class public Lvw/SCMAnalytics;
.super Ljava/lang/Object;
.source "SCMAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/SCMAnalytics$CustomVar;
    }
.end annotation


# static fields
.field private static final ANALYTICS_ID:Ljava/lang/String; = "analytics_id"

.field private static accountId:Ljava/lang/String;

.field private static volatile alreadyStarted:Z

.field private static changeListener:Ljava/lang/Runnable;

.field private static ctx:Landroid/content/Context;

.field private static customVars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvw/SCMAnalytics$CustomVar;",
            ">;"
        }
    .end annotation
.end field

.field private static dispatchPeriod:I

.field private static isInstalledTracked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lvw/SCMAnalytics;->alreadyStarted:Z

    .line 25
    sput-boolean v0, Lvw/SCMAnalytics;->isInstalledTracked:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvw/SCMAnalytics;->customVars:Ljava/util/List;

    .line 54
    new-instance v0, Lvw/SCMAnalytics$1;

    invoke-direct {v0}, Lvw/SCMAnalytics$1;-><init>()V

    sput-object v0, Lvw/SCMAnalytics;->changeListener:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lvw/SCMAnalytics;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lvw/SCMAnalytics;->parseCustomVarsFromPrefs(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private static getAnalyticsIdFromManifest(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 133
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 134
    const/16 v3, 0x80

    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 135
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 136
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "analytics_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v2

    .line 141
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "v":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static needsRestart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    sput-boolean v0, Lvw/SCMAnalytics;->isInstalledTracked:Z

    .line 127
    sput-boolean v0, Lvw/SCMAnalytics;->alreadyStarted:Z

    .line 128
    return-void
.end method

.method private static parseCustomVarsFromPrefs(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 37
    sget-object v4, Lvw/SCMAnalytics;->customVars:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    .line 50
    return-void

    .line 39
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ana_cust"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "cvar":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 41
    new-instance v0, Lvw/SCMAnalytics$CustomVar;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lvw/SCMAnalytics$CustomVar;-><init>(Lvw/SCMAnalytics$CustomVar;)V

    .line 42
    .local v0, "cv":Lvw/SCMAnalytics$CustomVar;
    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lvw/SCMAnalytics$CustomVar;->slot:I

    .line 43
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, v0, Lvw/SCMAnalytics$CustomVar;->name:Ljava/lang/String;

    .line 45
    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, v0, Lvw/SCMAnalytics$CustomVar;->value:Ljava/lang/String;

    .line 46
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lvw/SCMAnalytics$CustomVar;->scope:I

    .line 47
    sget-object v4, Lvw/SCMAnalytics;->customVars:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v0    # "cv":Lvw/SCMAnalytics$CustomVar;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lvw/SCMAnalytics;->ctx:Landroid/content/Context;

    .line 64
    sget-object v1, Lvw/SCMAnalytics;->accountId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    invoke-static {p0}, Lvw/SCMAnalytics;->getAnalyticsIdFromManifest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "id":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x14

    invoke-static {v0, v1, p0}, Lvw/SCMAnalytics;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 70
    return-void

    .line 67
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    sget-object v0, Lvw/SCMAnalytics;->accountId:Ljava/lang/String;

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private static start(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "dispatchPeriod"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 83
    sget-boolean v2, Lvw/SCMAnalytics;->alreadyStarted:Z

    if-eqz v2, :cond_0

    sget-object v2, Lvw/SCMAnalytics;->accountId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    sget v2, Lvw/SCMAnalytics;->dispatchPeriod:I

    if-eq p1, v2, :cond_1

    .line 85
    :cond_0
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lvw/SCMAnalytics;->parseCustomVarsFromPrefs(Landroid/content/SharedPreferences;)V

    .line 86
    sget-object v2, Lvw/SCMAnalytics;->changeListener:Ljava/lang/Runnable;

    invoke-static {v2}, Lcmn/UpdateChecker;->registerChangeListener(Ljava/lang/Runnable;)V

    .line 87
    sput-boolean v6, Lvw/SCMAnalytics;->alreadyStarted:Z

    .line 88
    sput-object p0, Lvw/SCMAnalytics;->accountId:Ljava/lang/String;

    .line 89
    sput p1, Lvw/SCMAnalytics;->dispatchPeriod:I

    .line 90
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    .line 92
    .local v1, "tracker":Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lvw/SCMAnalytics;->getAppVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setProductVersion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    const/4 v2, 0x5

    const-string v3, "phone"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 98
    invoke-static {p2}, Lvw/SCMAnalytics;->trackInstallEventIfNeeded(Landroid/content/Context;)V

    .line 100
    .end local v1    # "tracker":Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    :cond_1
    return-void

    .line 93
    .restart local v1    # "tracker":Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lvw/SCMAnalytics;->alreadyStarted:Z

    .line 104
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 105
    return-void
.end method

.method public static track(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvw/SCMAnalytics;->trackPageView(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static trackInstallEventIfNeeded(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    sget-boolean v0, Lvw/SCMAnalytics;->isInstalledTracked:Z

    if-eqz v0, :cond_0

    .line 200
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 148
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 149
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string p0, "cmn.refkey"

    .end local p0    # "context":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-interface {v4, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "ref":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    .line 151
    const-string p0, "cmn.reftracked"

    const/4 v0, 0x1

    invoke-interface {v4, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 152
    :cond_1
    const/4 p0, 0x1

    sput-boolean p0, Lvw/SCMAnalytics;->isInstalledTracked:Z

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    const-string p0, "&"

    invoke-virtual {v5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "params":[Ljava/lang/String;
    const/4 p0, 0x0

    .line 159
    .local p0, "campaign":Ljava/lang/String;
    const-string v0, ""

    .line 160
    .local v0, "label":Ljava/lang/String;
    const/4 v2, -0x1

    .line 161
    .local v2, "value":I
    const/4 v1, 0x0

    .line 162
    .local v1, "medium":Ljava/lang/String;
    array-length v7, v3

    const/4 v6, 0x0

    move v8, v6

    move v6, v2

    .end local v2    # "value":I
    .local v6, "value":I
    move-object v2, v1

    .end local v1    # "medium":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    move-object v1, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    :goto_1
    if-lt v8, v7, :cond_4

    .line 182
    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    .line 183
    move-object v0, v2

    .line 185
    .end local v1    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    :goto_2
    if-nez p0, :cond_a

    .line 186
    const-string p0, "none"

    .line 187
    move-object v0, v5

    .line 191
    :cond_3
    :goto_3
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    const-string v2, "market_install"

    .end local v2    # "medium":Ljava/lang/String;
    invoke-virtual {v1, v2, p0, v0, v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v0    # "label":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v6    # "value":I
    .end local p0    # "campaign":Ljava/lang/String;
    :goto_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 197
    .local p0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v0, "cmn.reftracked"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    const/4 p0, 0x1

    sput-boolean p0, Lvw/SCMAnalytics;->isInstalledTracked:Z

    goto :goto_0

    .line 162
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v2    # "medium":Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local v6    # "value":I
    .local p0, "campaign":Ljava/lang/String;
    :cond_4
    :try_start_1
    aget-object v0, v3, v8

    .line 163
    .local v0, "p":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "kv":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .line 162
    .end local v6    # "value":I
    .local v2, "value":I
    :goto_5
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v2

    .end local v2    # "value":I
    .restart local v6    # "value":I
    move-object v2, v1

    .end local v1    # "medium":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    move-object v1, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 167
    .local v0, "kv":[Ljava/lang/String;
    :cond_5
    const-string v9, "utm_campaign"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 168
    const/4 p0, 0x1

    aget-object p0, v0, p0

    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    goto :goto_5

    .line 169
    .local v0, "kv":[Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_6
    const-string v9, "rowindex"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_7

    .line 171
    const/4 v9, 0x1

    :try_start_2
    aget-object v0, v0, v9

    .end local v0    # "kv":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .end local v6    # "value":I
    .local v0, "value":I
    move-object v11, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v11, "medium":Ljava/lang/String;
    move v2, v0

    .end local v0    # "value":I
    .local v2, "value":I
    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v11

    .end local v11    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    goto :goto_5

    .line 172
    .end local v0    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :catch_0
    move-exception v0

    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    goto :goto_5

    .line 174
    .local v0, "kv":[Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_7
    :try_start_3
    const-string v9, "utm_term"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 175
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .end local v0    # "kv":[Ljava/lang/String;
    .end local v1    # "label":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v9, " "

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    goto :goto_5

    .line 176
    .local v0, "kv":[Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_8
    const-string v9, "utm_content"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 177
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    goto :goto_5

    .line 178
    .local v0, "kv":[Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_9
    const-string v9, "utm_medium"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 179
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v0, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    move-object v11, v0

    .end local v0    # "medium":Ljava/lang/String;
    .restart local v11    # "medium":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v11

    .end local v11    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    goto :goto_5

    .line 188
    .end local v1    # "medium":Ljava/lang/String;
    .local v2, "medium":Ljava/lang/String;
    .restart local v6    # "value":I
    :cond_a
    const-string v1, "pname:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    const-string p0, "packageName"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 193
    .end local v0    # "label":Ljava/lang/String;
    .end local v2    # "medium":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v6    # "value":I
    .end local p0    # "campaign":Ljava/lang/String;
    :catch_1
    move-exception p0

    goto/16 :goto_4

    .local v1, "label":Ljava/lang/String;
    .restart local v2    # "medium":Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local v6    # "value":I
    .restart local p0    # "campaign":Ljava/lang/String;
    :cond_b
    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    goto/16 :goto_2

    .local v0, "kv":[Ljava/lang/String;
    .restart local v1    # "label":Ljava/lang/String;
    :cond_c
    move-object v0, v1

    .end local v1    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "medium":Ljava/lang/String;
    .local v1, "medium":Ljava/lang/String;
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    goto/16 :goto_5
.end method

.method public static trackPageView(Ljava/lang/String;)V
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    .line 110
    .local v2, "tracker":Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    :try_start_0
    sget-object v3, Lvw/SCMAnalytics;->customVars:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 118
    :goto_1
    invoke-virtual {v2, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 119
    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvw/SCMAnalytics$CustomVar;

    .line 111
    .local v0, "cv":Lvw/SCMAnalytics$CustomVar;
    iget v4, v0, Lvw/SCMAnalytics$CustomVar;->slot:I

    iget-object v5, v0, Lvw/SCMAnalytics$CustomVar;->name:Ljava/lang/String;

    iget-object v6, v0, Lvw/SCMAnalytics$CustomVar;->value:Ljava/lang/String;

    iget v7, v0, Lvw/SCMAnalytics$CustomVar;->scope:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "cv":Lvw/SCMAnalytics$CustomVar;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 116
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
