.class public Lcmn/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/UpdateChecker$CheckMode;,
        Lcmn/UpdateChecker$VersionInfo;,
        Lcmn/UpdateChecker$VersionInfoHandler;
    }
.end annotation


# static fields
.field private static final LAST_FAILED_PREF:Ljava/lang/String; = "lastFailedCheck"

.field static final LAST_NOTIFICATION_SHOWN:Ljava/lang/String; = "lastNotification"

.field static final LAST_POPUP_SHOWN:Ljava/lang/String; = "lastPopup"

.field private static final LAST_UPDATE_PREF:Ljava/lang/String; = "lastUpdateCheck"

.field static final TESTING_MODE:Z = false

.field private static final UPDATE_FAILED_MINUTES:I = 0x3c

.field private static final UPDATE_HOST:Ljava/lang/String; = "http://swisscodemonkeys.appspot.com/"

.field private static final UPDATE_HOURS:I = 0x18

.field private static volatile busyChecking:Z

.field private static final changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final mutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private static thread:Ljava/lang/Thread;


# instance fields
.field private appProps:Lcmn/AppProperties;

.field private volatile checkMode:Lcmn/UpdateChecker$CheckMode;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private volatile hasError:Z

.field private volatile info:Lcmn/UpdateChecker$VersionInfo;

.field private volatile updateNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcmn/UpdateChecker;->changeListeners:Ljava/util/List;

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcmn/UpdateChecker;->busyChecking:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcmn/AppProperties;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appProps"    # Lcmn/AppProperties;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcmn/UpdateChecker;->handler:Landroid/os/Handler;

    .line 215
    iput-object p1, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcmn/UpdateChecker;->appProps:Lcmn/AppProperties;

    .line 217
    return-void
.end method

.method static synthetic access$0(Lcmn/UpdateChecker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 553
    invoke-static {p0, p1}, Lcmn/UpdateChecker;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcmn/UpdateChecker;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcmn/UpdateChecker;->showUI()V

    return-void
.end method

.method static synthetic access$3(Lcmn/UpdateChecker;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcmn/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkForUpdates(Ljava/lang/Runnable;)V
    .locals 13
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    .local v6, "versionInfo":Lcmn/UpdateChecker$VersionInfo;
    const/4 v2, 0x0

    .line 227
    .local v2, "error":Z
    const/4 v0, 0x0

    .line 230
    .local v0, "currentVersion":I
    :try_start_0
    iget-object v8, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 231
    const/4 v10, 0x0

    .line 230
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 232
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v7, "versions":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    if-nez v2, :cond_1

    invoke-direct {p0, v0, v7}, Lcmn/UpdateChecker;->retrieveVersionInformation(ILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v11

    .line 239
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 245
    const/4 v4, 0x0

    .line 247
    .local v4, "updateNeeded":Z
    if-eqz v6, :cond_5

    .line 248
    iget-object v8, p0, Lcmn/UpdateChecker;->checkMode:Lcmn/UpdateChecker$CheckMode;

    sget-object v9, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    if-eq v8, v9, :cond_3

    iget v8, v6, Lcmn/UpdateChecker$VersionInfo;->currentVersion:I

    move v5, v8

    .line 250
    .local v5, "updateVersion":I
    :goto_3
    if-ge v0, v5, :cond_4

    move v4, v12

    .line 255
    .end local v5    # "updateVersion":I
    :goto_4
    iput-boolean v2, p0, Lcmn/UpdateChecker;->hasError:Z

    .line 256
    iput-object v6, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    .line 257
    iput-boolean v4, p0, Lcmn/UpdateChecker;->updateNeeded:Z

    .line 260
    iget-object v8, p0, Lcmn/UpdateChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v8, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 233
    .end local v4    # "updateNeeded":Z
    .end local v7    # "versions":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 234
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "versions":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    :cond_1
    move v2, v12

    .line 237
    goto :goto_1

    .line 239
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcmn/UpdateChecker$VersionInfo;

    .line 240
    .local v3, "info":Lcmn/UpdateChecker$VersionInfo;
    iget-object v9, v3, Lcmn/UpdateChecker$VersionInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    move-object v6, v3

    goto :goto_2

    .line 249
    .end local v3    # "info":Lcmn/UpdateChecker$VersionInfo;
    .restart local v4    # "updateNeeded":Z
    :cond_3
    iget v8, v6, Lcmn/UpdateChecker$VersionInfo;->prefCurrentVersion:I

    move v5, v8

    goto :goto_3

    .restart local v5    # "updateVersion":I
    :cond_4
    move v4, v11

    .line 250
    goto :goto_4

    .line 252
    .end local v5    # "updateVersion":I
    :cond_5
    const/4 v2, 0x1

    goto :goto_4
.end method

.method private static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v3, "intent://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    const-string v3, "intent://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 558
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 560
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "http://www.appbrain.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v3, v2

    .line 562
    goto :goto_0

    .line 565
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v3, v2

    .line 567
    goto :goto_0
.end method

.method private static fireChange()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    sget-object v1, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    sget-object v1, Lcmn/UpdateChecker;->changeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 92
    sget-object v1, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    return-void

    .line 88
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 89
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    .line 92
    sget-object v2, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    throw v1
.end method

.method private handleNotification()V
    .locals 9

    .prologue
    .line 437
    iget-object v0, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 438
    .local v8, "settings":Landroid/content/SharedPreferences;
    const-string v0, "lastNotification"

    const/4 v2, 0x0

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    .line 440
    .local v6, "lastNotification":J
    iget-object v0, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget v0, v0, Lcmn/UpdateChecker$VersionInfo;->notificationId:I

    int-to-long v2, v0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 445
    :cond_0
    const v1, 0x1080078

    .line 446
    .local v1, "iconId":I
    iget-object v0, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    instance-of v0, v0, Lcmn/SCMApp;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    check-cast v0, Lcmn/SCMApp;

    invoke-virtual {v0}, Lcmn/SCMApp;->getNotificationId()I

    move-result v1

    .line 449
    :cond_1
    iget-object v0, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget v2, v0, Lcmn/UpdateChecker$VersionInfo;->notificationId:I

    iget-object v0, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v3, v0, Lcmn/UpdateChecker$VersionInfo;->notificationTitle:Ljava/lang/String;

    iget-object v0, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v4, v0, Lcmn/UpdateChecker$VersionInfo;->text:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v5, v0, Lcmn/UpdateChecker$VersionInfo;->updateUrl:Ljava/lang/String;

    move-object v0, p0

    .line 449
    invoke-direct/range {v0 .. v5}, Lcmn/UpdateChecker;->showNotification(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isBusyChecking()Z
    .locals 2

    .prologue
    .line 119
    :try_start_0
    sget-object v0, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    sget-boolean v0, Lcmn/UpdateChecker;->busyChecking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-object v1, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    return v0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    sget-object v1, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 123
    throw v0
.end method

.method private static isUpdateNeeded(Landroid/content/Context;Lcmn/UpdateChecker$CheckMode;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkMode"    # Lcmn/UpdateChecker$CheckMode;

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 495
    sget-object v7, Lcmn/UpdateChecker;->thread:Ljava/lang/Thread;

    if-eqz v7, :cond_0

    sget-object v7, Lcmn/UpdateChecker;->thread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    sget-boolean v7, Lcmn/UpdateChecker;->busyChecking:Z

    if-eqz v7, :cond_2

    :cond_1
    move v7, v9

    .line 516
    :goto_0
    return v7

    .line 498
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 499
    .local v6, "settings":Landroid/content/SharedPreferences;
    const-string v7, "lastUpdateCheck"

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 500
    .local v4, "lastUpdate":J
    const-string v7, "lastFailedCheck"

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 501
    .local v2, "lastFailedUpdate":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 506
    .local v0, "currentTime":J
    add-long v7, v4, v12

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    move v7, v9

    .line 507
    goto :goto_0

    .line 510
    :cond_3
    sget-object v7, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    if-eq p1, v7, :cond_4

    .line 512
    add-long v7, v4, v12

    cmp-long v7, v0, v7

    if-lez v7, :cond_5

    .line 513
    const-wide/32 v7, 0x36ee80

    add-long/2addr v7, v2

    cmp-long v7, v0, v7

    if-lez v7, :cond_5

    .line 514
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    .line 516
    goto :goto_0
.end method

.method public static registerChangeListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "onChange"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    sget-object v0, Lcmn/UpdateChecker;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcmn/UpdateChecker;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    sget-object v0, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    sget-object v1, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    throw v0
.end method

.method public static retrieveFromPrefs(Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List",
            "<",
            "Lcmn/UpdateChecker$VersionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "versions":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 334
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 335
    const-string v4, "apps"

    const-string v5, ""

    .line 334
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcmn/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 336
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 337
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 338
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private retrieveVersionInformation(ILjava/util/List;)Z
    .locals 28
    .param p1, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcmn/UpdateChecker$VersionInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "versions":Ljava/util/List;, "Ljava/util/List<Lcmn/UpdateChecker$VersionInfo;>;"
    const/4 v13, 0x1

    .line 267
    .local v13, "ok":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v18

    .line 268
    .local v18, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v17

    .line 270
    .local v17, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    .line 271
    .local v22, "xr":Lorg/xml/sax/XMLReader;
    new-instance v21, Lcmn/UpdateChecker$VersionInfoHandler;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcmn/UpdateChecker$VersionInfoHandler;-><init>(Lcmn/UpdateChecker$VersionInfoHandler;)V

    .line 272
    .local v21, "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 275
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 276
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v23, "lastNotification"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v11, v0

    .line 278
    .local v11, "lastNotification":J
    const-string v9, "http://swisscodemonkeys.appspot.com/"

    .line 280
    .local v9, "host":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v8, "extraParameters":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->appProps:Lcmn/AppProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local p1    # "currentVersion":I
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_2

    .line 285
    new-instance v20, Ljava/net/URL;

    const-string v23, "%s%s.xml?silent=%d&nid=%d%s"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    const/16 v25, 0x1

    .line 286
    aput-object v15, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->checkMode:Lcmn/UpdateChecker$CheckMode;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcmn/UpdateChecker$CheckMode;->ordinal()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    .line 287
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 285
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 289
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 291
    .local v4, "conn":Ljava/net/URLConnection;
    new-instance v23, Lorg/xml/sax/InputSource;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 293
    invoke-virtual/range {v21 .. v21}, Lcmn/UpdateChecker$VersionInfoHandler;->getParsedData()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 297
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/ObjectOutputStream;

    invoke-direct {v14, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .local v14, "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v14}, Ljava/io/ObjectOutputStream;->close()V

    .line 301
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 302
    const-string v23, "apps"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcmn/Base64;->encode([B)Ljava/lang/String;

    move-result-object v24

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    const/16 v19, 0x0

    .line 306
    .local v19, "touchSCMView":Z
    move-object/from16 v0, v21

    iget-object v0, v0, Lcmn/UpdateChecker$VersionInfoHandler;->keyValues:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local p0    # "this":Lcmn/UpdateChecker;
    :cond_0
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_3

    .line 314
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    if-eqz v19, :cond_1

    .line 316
    invoke-static {}, Lcmn/AdConfig;->touchConfig()V

    .line 326
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "conn":Ljava/net/URLConnection;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "extraParameters":Ljava/lang/StringBuffer;
    .end local v9    # "host":Ljava/lang/String;
    .end local v11    # "lastNotification":J
    .end local v14    # "oos":Ljava/io/ObjectOutputStream;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v18    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v19    # "touchSCMView":Z
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    :goto_2
    return v13

    .line 281
    .restart local v8    # "extraParameters":Ljava/lang/StringBuffer;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v11    # "lastNotification":J
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v18    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v21    # "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    .restart local v22    # "xr":Lorg/xml/sax/XMLReader;
    .restart local p0    # "this":Lcmn/UpdateChecker;
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 282
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "&"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 319
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "extraParameters":Ljava/lang/StringBuffer;
    .end local v9    # "host":Ljava/lang/String;
    .end local v11    # "lastNotification":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v18    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v21    # "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    .end local p0    # "this":Lcmn/UpdateChecker;
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 320
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 321
    const/4 v13, 0x0

    goto :goto_2

    .line 306
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v8    # "extraParameters":Ljava/lang/StringBuffer;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v11    # "lastNotification":J
    .restart local v14    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v18    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v19    # "touchSCMView":Z
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    .restart local v22    # "xr":Lorg/xml/sax/XMLReader;
    :cond_3
    :try_start_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 307
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcmn/UpdateChecker$VersionInfoHandler;->keyValues:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v24, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcmn/UpdateChecker$VersionInfoHandler;->keyValues:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcmn/SCMLog;->e(Ljava/lang/String;)V

    .line 309
    const-string v24, "scmpconf"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 310
    const-string v24, "scmset"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    if-eqz v24, :cond_0

    .line 311
    :cond_4
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 322
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "conn":Ljava/net/URLConnection;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "extraParameters":Ljava/lang/StringBuffer;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "lastNotification":J
    .end local v14    # "oos":Ljava/io/ObjectOutputStream;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v18    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v19    # "touchSCMView":Z
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "versionInfoHandler":Lcmn/UpdateChecker$VersionInfoHandler;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 323
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private saveLastUpdateTime()V
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lcmn/UpdateChecker;->hasError:Z

    if-eqz v2, :cond_0

    .line 350
    const-string v2, "lastFailedCheck"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 354
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    return-void

    .line 352
    :cond_0
    const-string v2, "lastUpdateCheck"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showNotification(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "iconId"    # I
    .param p2, "notificationId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 525
    .local v12, "settings":Landroid/content/SharedPreferences;
    const-string v13, "lastNotification"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    int-to-long v6, v13

    .line 527
    .local v6, "lastNotification":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v13, v0

    cmp-long v13, v13, v6

    if-gtz v13, :cond_0

    .line 545
    :goto_0
    return-void

    .line 530
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 531
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    new-instance v9, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v0, v9

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 533
    .local v9, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcmn/UpdateChecker;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 535
    .local v8, "newIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 537
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 538
    iget v13, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v9, Landroid/app/Notification;->flags:I

    .line 539
    iget v13, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x3

    iput v13, v9, Landroid/app/Notification;->defaults:I

    .line 540
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 542
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 543
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "lastNotification"

    move-object v0, v5

    move-object v1, v13

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private showUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 358
    invoke-direct {p0}, Lcmn/UpdateChecker;->saveLastUpdateTime()V

    .line 360
    iget-boolean v3, p0, Lcmn/UpdateChecker;->hasError:Z

    if-eqz v3, :cond_1

    .line 361
    iget-object v3, p0, Lcmn/UpdateChecker;->checkMode:Lcmn/UpdateChecker$CheckMode;

    sget-object v4, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    if-ne v3, v4, :cond_0

    .line 362
    iget-object v3, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    const-string v4, "Error while checking for update. Please try again later."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_0
    :try_start_0
    sget-object v3, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    const/4 v3, 0x0

    sput-boolean v3, Lcmn/UpdateChecker;->busyChecking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    sget-object v3, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 407
    :goto_0
    return-void

    .line 368
    :catchall_0
    move-exception v3

    .line 369
    sget-object v4, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    throw v3

    .line 374
    :cond_1
    iget-boolean v3, p0, Lcmn/UpdateChecker;->updateNeeded:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcmn/UpdateChecker;->checkMode:Lcmn/UpdateChecker$CheckMode;

    sget-object v4, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    if-ne v3, v4, :cond_4

    .line 375
    iget-object v3, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v3, v3, Lcmn/UpdateChecker$VersionInfo;->noUpdateText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v3, v3, Lcmn/UpdateChecker$VersionInfo;->noUpdateText:Ljava/lang/String;

    move-object v2, v3

    .line 377
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v3, v3, Lcmn/UpdateChecker$VersionInfo;->noUpdateLink:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 378
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Ok"

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 401
    .end local v2    # "msg":Ljava/lang/String;
    :goto_2
    :try_start_1
    sget-object v3, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 402
    const/4 v3, 0x0

    sput-boolean v3, Lcmn/UpdateChecker;->busyChecking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    sget-object v3, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 376
    :cond_2
    const-string v3, "This version is up to date!"

    move-object v2, v3

    goto :goto_1

    .line 380
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v1, v3, Lcmn/UpdateChecker$VersionInfo;->noUpdateLink:Ljava/lang/String;

    .line 382
    .local v1, "gotoUrl":Ljava/lang/String;
    new-instance v0, Lcmn/UpdateChecker$1;

    invoke-direct {v0, p0, v1}, Lcmn/UpdateChecker$1;-><init>(Lcmn/UpdateChecker;Ljava/lang/String;)V

    .line 390
    .local v0, "click":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Continue"

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 391
    const-string v4, "Later"

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 393
    .end local v0    # "click":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "gotoUrl":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    iget-boolean v3, p0, Lcmn/UpdateChecker;->updateNeeded:Z

    if-eqz v3, :cond_5

    .line 394
    invoke-direct {p0}, Lcmn/UpdateChecker;->showUpdateAlert()V

    goto :goto_2

    .line 397
    :cond_5
    invoke-direct {p0}, Lcmn/UpdateChecker;->handleNotification()V

    goto :goto_2

    .line 404
    :catchall_1
    move-exception v3

    .line 405
    sget-object v4, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    throw v3
.end method

.method private showUpdateAlert()V
    .locals 10

    .prologue
    .line 410
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget v7, v8, Lcmn/UpdateChecker$VersionInfo;->updateId:I

    .line 411
    .local v7, "updateId":I
    iget-object v8, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 412
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v8, "lastPopup"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-le v7, v8, :cond_0

    .line 413
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 414
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "lastPopup"

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v2, v8, Lcmn/UpdateChecker$VersionInfo;->updateUrl:Ljava/lang/String;

    .line 418
    .local v2, "gotoUrl":Ljava/lang/String;
    new-instance v0, Lcmn/UpdateChecker$2;

    invoke-direct {v0, p0, v2}, Lcmn/UpdateChecker$2;-><init>(Lcmn/UpdateChecker;Ljava/lang/String;)V

    .line 426
    .local v0, "click":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->positiveButton:Ljava/lang/String;

    if-nez v8, :cond_1

    const-string v8, "Update"

    move-object v4, v8

    .line 427
    .local v4, "positive":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->negativeButton:Ljava/lang/String;

    if-nez v8, :cond_2

    const-string v8, "Cancel"

    move-object v3, v8

    .line 428
    .local v3, "negative":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->notificationTitle:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, "New version available"

    move-object v6, v8

    .line 431
    .local v6, "title":Ljava/lang/String;
    :goto_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v9, v9, Lcmn/UpdateChecker$VersionInfo;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 432
    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 434
    .end local v0    # "click":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "gotoUrl":Ljava/lang/String;
    .end local v3    # "negative":Ljava/lang/String;
    .end local v4    # "positive":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 426
    .restart local v0    # "click":Landroid/content/DialogInterface$OnClickListener;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "gotoUrl":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->positiveButton:Ljava/lang/String;

    move-object v4, v8

    goto :goto_0

    .line 427
    .restart local v4    # "positive":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->negativeButton:Ljava/lang/String;

    move-object v3, v8

    goto :goto_1

    .line 429
    .restart local v3    # "negative":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcmn/UpdateChecker;->info:Lcmn/UpdateChecker$VersionInfo;

    iget-object v8, v8, Lcmn/UpdateChecker$VersionInfo;->notificationTitle:Ljava/lang/String;

    move-object v6, v8

    goto :goto_2
.end method

.method public static testNotification(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 548
    new-instance v0, Lcmn/UpdateChecker;

    invoke-static {p0}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcmn/UpdateChecker;-><init>(Landroid/content/Context;Lcmn/AppProperties;)V

    .line 549
    .local v0, "checker":Lcmn/UpdateChecker;
    const v1, 0x1080078

    const-string v3, "apps for you"

    .line 550
    const-string v4, "check it out!"

    const-string v5, "intent://com.appspot.swisscodemonkeys.featured.OfferWall"

    move v2, p1

    .line 549
    invoke-direct/range {v0 .. v5}, Lcmn/UpdateChecker;->showNotification(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method


# virtual methods
.method public checkForUpdate(Lcmn/UpdateChecker$CheckMode;)V
    .locals 5
    .param p1, "checkMode"    # Lcmn/UpdateChecker$CheckMode;

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "doUpdate":Z
    :try_start_0
    sget-object v2, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    iget-object v2, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcmn/UpdateChecker;->isUpdateNeeded(Landroid/content/Context;Lcmn/UpdateChecker$CheckMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const/4 v2, 0x1

    sput-boolean v2, Lcmn/UpdateChecker;->busyChecking:Z

    .line 465
    const-string v2, "Starting update"

    invoke-static {v2}, Lcmn/SCMLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    const/4 v1, 0x1

    .line 469
    :cond_0
    sget-object v2, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    if-eqz v1, :cond_2

    .line 473
    iput-object p1, p0, Lcmn/UpdateChecker;->checkMode:Lcmn/UpdateChecker$CheckMode;

    .line 474
    sget-object v2, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    if-ne p1, v2, :cond_1

    .line 475
    iget-object v2, p0, Lcmn/UpdateChecker;->context:Landroid/content/Context;

    const-string v3, "Checking for update"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 477
    :cond_1
    new-instance v0, Lcmn/UpdateChecker$3;

    invoke-direct {v0, p0}, Lcmn/UpdateChecker$3;-><init>(Lcmn/UpdateChecker;)V

    .line 488
    .local v0, "check":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v2, Lcmn/UpdateChecker;->thread:Ljava/lang/Thread;

    .line 489
    sget-object v2, Lcmn/UpdateChecker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 491
    .end local v0    # "check":Ljava/lang/Runnable;
    :cond_2
    return-void

    .line 468
    :catchall_0
    move-exception v2

    .line 469
    sget-object v3, Lcmn/UpdateChecker;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 470
    throw v2
.end method

.method public checkForUpdate(Z)V
    .locals 1
    .param p1, "silentCheck"    # Z

    .prologue
    .line 454
    if-eqz p1, :cond_0

    sget-object v0, Lcmn/UpdateChecker$CheckMode;->SILENT_CHECK_FROM_APP:Lcmn/UpdateChecker$CheckMode;

    :goto_0
    invoke-virtual {p0, v0}, Lcmn/UpdateChecker;->checkForUpdate(Lcmn/UpdateChecker$CheckMode;)V

    .line 455
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    goto :goto_0
.end method
