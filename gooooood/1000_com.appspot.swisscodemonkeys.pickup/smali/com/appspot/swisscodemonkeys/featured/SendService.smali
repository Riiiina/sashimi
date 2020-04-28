.class public Lcom/appspot/swisscodemonkeys/featured/SendService;
.super Landroid/app/IntentService;
.source "SendService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "sync service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private static setAlarm(Landroid/content/Context;J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interval"    # J

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/appspot/swisscodemonkeys/featured/SendService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 59
    .local v6, "pending":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 61
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    const-wide/16 v8, 0x4

    div-long v8, p1, v8

    const-wide/32 v10, 0x493e0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 63
    add-long v2, v4, v8

    .line 65
    .local v2, "triggerAtTime":J
    const/4 v1, 0x1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 67
    .end local v2    # "triggerAtTime":J
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/featured/SendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    const-string v6, "event"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    const-string v6, "event"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "event":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "key":Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->saveEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v4

    .line 36
    .local v4, "props":Lcmn/AppProperties;
    :try_start_0
    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createUrlParameters(Lcmn/AppProperties;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "urlParams":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->reportEvents(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/appspot/swisscodemonkeys/featured/SendService;->setAlarm(Landroid/content/Context;J)V

    .line 46
    .end local v5    # "urlParams":Ljava/lang/String;
    :goto_0
    return-void

    .line 41
    .restart local v5    # "urlParams":Ljava/lang/String;
    :cond_1
    const-wide/32 v6, 0x1b7740

    invoke-static {v0, v6, v7}, Lcom/appspot/swisscodemonkeys/featured/SendService;->setAlarm(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v5    # "urlParams":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 44
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
