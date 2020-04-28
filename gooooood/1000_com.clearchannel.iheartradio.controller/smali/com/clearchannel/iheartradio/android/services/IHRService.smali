.class public Lcom/clearchannel/iheartradio/android/services/IHRService;
.super Landroid/app/Service;
.source "IHRService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "IHRService"

.field public static g:Lcom/clearchannel/iheartradio/android/services/IHRService; = null

.field public static final kConfiguration:I = 0x64

.field public static final kFetchStrings:I = 0x7

.field public static final kHalt:I = 0x2

.field public static final kMessageStop:Ljava/lang/String; = "com.clearchannel.iheartradio.service.stop"

.field public static final kNotificationID:I = 0xec

.field public static final kPerformOnThread:I = 0x3e8

.field public static final kPlayer:I = 0xa

.field public static final kQuit:I = 0x1

.field public static final kRestoreCache:I = 0x6

.field public static final kRunInBackground:I = 0x4

.field public static final kRunInForeground:I = 0x3

.field public static final kSeparator:Ljava/lang/String; = "\t"

.field public static final kWriteStrings:I = 0x8


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field private currentStatus:Ljava/lang/String;

.field public mBroadcaster:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

.field public mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

.field public mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

.field public mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/Notification;

.field public mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

.field mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private mWifi:Landroid/net/wifi/WifiManager$WifiLock;

.field private wasDisconnected:Z

.field private wasPlayerStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasPlayerStopped:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasDisconnected:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->currentStatus:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/services/IHRService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->currentStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/services/IHRService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->currentStatus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasDisconnected:Z

    return v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasPlayerStopped:Z

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasDisconnected:Z

    return-void
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->wasPlayerStopped:Z

    return v0
.end method

.method private preferencesValidate()V
    .locals 4

    .prologue
    .line 596
    const-string v0, "valid"

    .line 597
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 600
    .local v1, "valid":Z
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 603
    :goto_0
    if-nez v1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    .line 606
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 607
    const-string v2, "services"

    const-string v3, "Cleared preferences after failing to validate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    return-void

    .line 601
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/services/IHRService;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    return-object v0
.end method


# virtual methods
.method public assignMode(I)V
    .locals 9
    .param p1, "inMode"    # I

    .prologue
    const/16 v3, 0xec

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "method":Ljava/lang/reflect/Method;
    if-ne v7, p1, :cond_0

    .line 266
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->wantsForeground()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const/4 p1, -0x1

    .line 271
    :cond_0
    if-lez p1, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    .line 274
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateNotification(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 278
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startForeground"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/app/Notification;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 284
    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->setForeground(Z)V

    .line 303
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->stopSelf()V

    .line 306
    :cond_3
    return-void

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    .line 287
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 291
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "stopForeground"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 297
    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/android/services/IHRService;->setForeground(Z)V

    .line 300
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    goto :goto_1

    .line 294
    :catch_0
    move-exception v2

    goto :goto_2

    .line 281
    .restart local v1    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public commit()Z
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mEditor:Landroid/content/SharedPreferences$Editor;

    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0
.end method

.method public createNotification()Landroid/app/Notification;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    .line 187
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 189
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/clearchannel/iheartradio/controller/TriggerActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x10000004

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 191
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 192
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.clearchannel.iheartradio.service.stop"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 193
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 194
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    const v3, 0x7f02004c

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 195
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->iconLevel:I

    .line 196
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->number:I

    .line 197
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 198
    const-string v0, ""

    .line 199
    .local v0, "contentText":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f07003d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->vibrate:[J

    .line 207
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 208
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    const-string v3, "iheartradio"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 211
    .end local v0    # "contentText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    return-object v2

    .line 204
    .restart local v0    # "contentText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "IHRService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected doCreate()V
    .locals 4

    .prologue
    .line 357
    sput-object p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 360
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 361
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRThreadable;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mBroadcaster:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    .line 362
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/model/IHRCache;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    .line 371
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRService$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRService$1;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.clearchannel.iheartradio.service.stop"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    :cond_0
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    .line 379
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    invoke-virtual {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->onCreate(Ljava/lang/Object;)V

    .line 381
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 382
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->onCreate(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    .line 384
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 385
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onCreate(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 392
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRService$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRService$2;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    :cond_1
    return-void
.end method

.method protected doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->destroy()V

    .line 495
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->destroy()V

    .line 497
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->onDestroy(Ljava/lang/Object;)V

    .line 498
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    .line 500
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onDestroy(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    .line 501
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 503
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->onDestroy()V

    .line 504
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 506
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 518
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->assignMode(I)V

    .line 525
    :cond_3
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    .line 527
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mBroadcaster:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    .line 528
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 529
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    .line 530
    sput-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 531
    return-void
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 645
    const-string v0, "com.clearchannel.iheratradio.services"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "inMessage"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x1

    .line 135
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x44c

    if-le v1, v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    if-nez v1, :cond_0

    move v0, v3

    .line 143
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 137
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f2

    if-le v1, v2, :cond_3

    .line 138
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    if-nez v1, :cond_2

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 139
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "result":Z
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v1, p1, v3, p4, p2}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IIILjava/lang/Object;)Z

    .line 129
    :goto_0
    return v0

    .line 107
    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    const/16 v1, 0xa

    if-le p1, v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 111
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-boolean v2, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->serviceStopped:Z

    .line 115
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iput-boolean v2, v1, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->serviceStopped:Z

    .line 116
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->stopSelf()V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->reset()V

    goto :goto_0

    .line 119
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->assignMode(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 120
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->assignMode(I)V

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->restoreDownloadsAfterLaunch()V

    goto :goto_0

    .line 123
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesCopyStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesWrite(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasConnectivity()Z
    .locals 4

    .prologue
    .line 147
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 148
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 150
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->updateNetworkStatus(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 162
    :goto_1
    return v2

    .line 155
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->updateNetworkStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public joinStrings([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "a"    # [Ljava/lang/String;

    .prologue
    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    if-lez v1, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    move-object v2, v3

    .local v2, "s":Ljava/lang/String;
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    return-object v2

    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0

    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public locateMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "inName"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 168
    .local v4, "result":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 169
    .local v3, "methods":[Ljava/lang/reflect/Method;
    if-nez v3, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 171
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 180
    :goto_2
    return-object v4

    .line 169
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    array-length v5, v3

    move v0, v5

    goto :goto_0

    .line 172
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    aget-object v2, v3, v1

    .line 174
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    move-object v4, v2

    .line 176
    goto :goto_2

    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public noticeStreaming(Z)V
    .locals 3
    .param p1, "inStreaming"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 240
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "iheartradio"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 251
    :cond_1
    :goto_1
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mWifi:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, "result":Landroid/os/IBinder;
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V

    .line 539
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 542
    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRService$3;

    .end local v0    # "result":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRService$3;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    .line 550
    .restart local v0    # "result":Landroid/os/IBinder;
    :cond_2
    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 571
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 575
    .local v0, "start":J
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesValidate()V

    .line 577
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 578
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 579
    new-instance v2, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time to validate preferences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->debug(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->removePlayingNotification()V

    .line 585
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V

    .line 586
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->doDestroy()V

    .line 591
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 593
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "inID"    # I

    .prologue
    .line 555
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 557
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V

    .line 558
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "inID"    # I

    .prologue
    .line 564
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V

    .line 566
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public preferencesCopyBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 684
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public preferencesCopyBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public preferencesCopyBytesUTF8(Ljava/lang/String;)[B
    .locals 3
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public preferencesCopyStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesCopyStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public preferencesCopyStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public preferencesGet(Ljava/lang/String;F)F
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # F

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public preferencesGet(Ljava/lang/String;I)I
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # I

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public preferencesGet(Ljava/lang/String;J)J
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # J

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public preferencesGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # Ljava/lang/String;

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preferencesGet(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # Z

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public preferencesPut(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # F

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # I

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Ljava/lang/String;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;Ljava/util/Collection;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 659
    .local p2, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Z

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # [B

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesPut(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->joinStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesRemove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public preferencesUnset(Ljava/lang/String;)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesRemove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # I

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Ljava/util/Collection;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Z

    .prologue
    .line 666
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public preferencesWrite(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    move-result v0

    return v0
.end method

.method public removePlayingNotification()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    .line 233
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRService;
    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0xec

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 234
    return-void
.end method

.method public showStationPlayingNotification()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->createNotification()Landroid/app/Notification;

    .line 227
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xec

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 229
    return-void
.end method

.method protected updateNetworkStatus(Ljava/lang/String;)V
    .locals 11
    .param p1, "networkStatus"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 614
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 615
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 616
    const-string p1, "wifi"

    .line 622
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "network":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 623
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 624
    .local v2, "now":J
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-object p1, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    .line 625
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-wide v2, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    .line 629
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 630
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v7, v7, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v7, v2, v7

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    .line 636
    :goto_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v5, Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;->CONNECTION:Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v7, v7, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v7, v2, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackNetwork(Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;Ljava/lang/String;I)V

    .line 638
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-wide v2, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    .line 639
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "offline"

    :goto_2
    iput-object v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    .line 642
    .end local v2    # "now":J
    :cond_2
    return-void

    .line 617
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v1    # "network":Landroid/net/NetworkInfo;
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    const-string p1, "data"

    goto :goto_0

    .line 631
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "network":Landroid/net/NetworkInfo;
    .restart local v2    # "now":J
    :cond_4
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v7, v7, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v7, v2, v7

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    goto :goto_1

    .line 634
    :cond_5
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v7, v7, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v7, v2, v7

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    goto :goto_1

    :cond_6
    move-object v5, p1

    .line 639
    goto :goto_2
.end method

.method public updateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inCaption"    # Ljava/lang/String;
    .param p2, "inContent"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 218
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 220
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xec

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    :cond_0
    return-void
.end method
