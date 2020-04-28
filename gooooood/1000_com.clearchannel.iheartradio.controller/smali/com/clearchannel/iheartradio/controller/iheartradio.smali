.class public Lcom/clearchannel/iheartradio/controller/iheartradio;
.super Lcom/clearchannel/iheartradio/controller/IHRActivity;
.source "iheartradio.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# static fields
.field public static LAUNCH_COUNT_BEFORE_SIGNUPWALL:I

.field public static g:Lcom/clearchannel/iheartradio/controller/iheartradio;


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field private mApplicationStartTime:J

.field private mBackgroundDuration:J

.field protected mConnection:Landroid/os/IBinder;

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentModeTime:J

.field private mForegroundDuration:J

.field private mPaused:Z

.field protected mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field protected mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

.field private mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    sput v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->LAUNCH_COUNT_BEFORE_SIGNUPWALL:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;-><init>()V

    return-void
.end method

.method private connect()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->serviceTell(II)V

    .line 299
    invoke-virtual {p0, p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->unbindService(Landroid/content/ServiceConnection;)V

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public debugModePermitted()Z
    .locals 6

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 306
    .local v1, "pin":Ljava/lang/String;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 308
    .local v0, "data":[B
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/iheartradio;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    const-string v3, "000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "358279011305826"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    :cond_0
    const/4 v2, 0x1

    .line 318
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    array-length v3, v0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2

    .line 319
    const/4 v2, 0x1

    .line 322
    :cond_2
    return v2

    .line 314
    :cond_3
    const-string v3, "debug_android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clientType=Android&pin="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v3, 0x0

    .line 86
    sput-object p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    .line 88
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-direct {v0, p0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;-><init>(Landroid/os/Handler$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 96
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 98
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 100
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->connect()V

    .line 101
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    .line 104
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    .line 105
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentMode:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mApplicationStartTime:J

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 232
    sget-object v1, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    if-nez v1, :cond_0

    .line 233
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onDestroy()V

    .line 251
    :goto_0
    return-void

    .line 238
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    .line 239
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->disconnect()V

    .line 241
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->onDestroy()V

    .line 242
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->onDestroy()V

    .line 244
    const/4 v1, 0x0

    sput-object v1, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 245
    const/4 v1, 0x0

    sput-object v1, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    .line 246
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "iheartradio"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    .prologue
    .line 146
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onPause()V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 148
    .local v1, "now":J
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 150
    iput-wide v1, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentMode:Ljava/lang/String;

    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    iget-wide v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    iget-wide v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    sub-long v6, v1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    .line 155
    const-string v4, "background"

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentMode:Ljava/lang/String;

    .line 156
    iput-wide v1, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getChangingConfigurations()I

    move-result v0

    .line 163
    .local v0, "changes":I
    if-eqz v0, :cond_2

    const-string v4, "ccc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "configurations: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v4, :cond_4

    .line 166
    const-string v3, ""

    .line 167
    .local v3, "station":Ljava/lang/String;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    move-object v3, v4

    .line 170
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v5, Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;->BACKGROUND:Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackMode(Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;Ljava/lang/String;I)V

    .line 172
    .end local v3    # "station":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    .line 174
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 175
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRService;->shared()Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->showStationPlayingNotification()V

    .line 177
    :cond_5
    return-void

    .line 168
    .restart local v3    # "station":Ljava/lang/String;
    :cond_6
    const-string v4, ""

    move-object v3, v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 116
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onResume()V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRService;->shared()Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->removePlayingNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 123
    .local v0, "now":J
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 125
    iput-wide v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentMode:Ljava/lang/String;

    const-string v4, "foreground"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    iget-wide v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    .line 130
    const-string v3, "foreground"

    iput-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentMode:Ljava/lang/String;

    .line 131
    iput-wide v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 135
    const-string v2, ""

    .line 136
    .local v2, "station":Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    move-object v2, v3

    .line 139
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;->FOREGROUND:Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackMode(Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;Ljava/lang/String;I)V

    .line 142
    .end local v2    # "station":Ljava/lang/String;
    :cond_3
    return-void

    .line 137
    .restart local v2    # "station":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    move-object v2, v3

    goto :goto_1

    .line 119
    .end local v0    # "now":J
    .end local v2    # "station":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "inName"    # Landroid/content/ComponentName;
    .param p2, "inService"    # Landroid/os/IBinder;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IHRService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    .line 257
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    check-cast v0, Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;->getService()Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 262
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 264
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->serviceTell(I)V

    .line 266
    :cond_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "inName"    # Landroid/content/ComponentName;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IHRService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    .line 272
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 273
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 275
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->connect()V

    .line 277
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 180
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onStop()V

    .line 181
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v3, :cond_1

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 184
    .local v0, "now":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentMode:Ljava/lang/String;

    const-string v4, "background"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    iget-wide v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BACKGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-wide v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mBackgroundDuration:J

    div-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 191
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FOREGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-wide v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    div-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 193
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 196
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FIRST_STATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFirstStation:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 198
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    .line 205
    :goto_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->WIFI_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 207
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->DATA_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 209
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->OFFLINE_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 211
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 215
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    const-string v5, ""

    iget-wide v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mApplicationStartTime:J

    sub-long v6, v0, v6

    div-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackApplication(Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;Ljava/lang/String;I)V

    .line 217
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_3
    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 219
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    div-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 221
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v4, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v5, ""

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamPlayDelay:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 226
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 229
    .end local v0    # "now":J
    :cond_1
    return-void

    .line 187
    .restart local v0    # "now":J
    :cond_2
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    iget-wide v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mCurrentModeTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mForegroundDuration:J

    goto/16 :goto_0

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    goto/16 :goto_1

    .line 203
    :cond_4
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetworkTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    goto/16 :goto_1

    .line 211
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "station":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v6, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATION_SELECT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v6, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 217
    .end local v2    # "station":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    goto/16 :goto_3
.end method

.method public playingAlternateAudio(Z)V
    .locals 1
    .param p1, "inPause"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->isPlayRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->stop()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mPaused:Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mPaused:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->stop()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mPaused:Z

    goto :goto_0
.end method

.method public serviceTell(I)V
    .locals 1
    .param p1, "inCode"    # I

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(II)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # I

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(ILandroid/os/Parcel;)V
    .locals 3
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mConnection:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public serviceTell(ILjava/lang/String;)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method
