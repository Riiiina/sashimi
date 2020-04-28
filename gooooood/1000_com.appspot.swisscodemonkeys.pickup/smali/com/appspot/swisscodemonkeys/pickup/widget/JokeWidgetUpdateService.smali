.class public Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;
.super Landroid/app/Service;
.source "JokeWidgetUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static DEFAULT_RETRY_ERROR_S:I = 0x0

.field public static DEFAULT_RETRY_OK_S:I = 0x0

.field public static final RETRY_ERROR_PREF:Ljava/lang/String; = "retry_error"

.field public static final RETRY_OK_PREF:Ljava/lang/String; = "retry_ok"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mostRecentStartId:I

.field private mutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private processingThread:Ljava/lang/Thread;

.field private retryError_s:I

.field private retryOk_s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x1e

    sput v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->DEFAULT_RETRY_ERROR_S:I

    .line 35
    const v0, 0xa8c0

    sput v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->DEFAULT_RETRY_OK_S:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    return-void
.end method

.method private setAlarm()V
    .locals 8

    .prologue
    const-wide/32 v2, 0x36ee80

    const/4 v4, 0x0

    .line 143
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 146
    .local v6, "pending":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 148
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 150
    const/4 v1, 0x3

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method private updateWidgets()V
    .locals 24

    .prologue
    .line 154
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 156
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "retry_error"

    sget v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->DEFAULT_RETRY_ERROR_S:I

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->retryError_s:I

    .line 157
    const-string v3, "retry_ok"

    sget v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->DEFAULT_RETRY_OK_S:I

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->retryOk_s:I

    .line 159
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v19

    .line 160
    .local v19, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    .line 161
    const-class v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v22

    .line 163
    .local v22, "widgetIds":[I
    const-string v3, "us"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Got "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    array-length v0, v0

    move v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ids."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 166
    .local v7, "currentTime":J
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v19, v0

    .end local v19    # "manager":Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x0

    move/from16 v23, v3

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 209
    return-void

    .line 166
    :cond_0
    aget v21, v22, v23

    .line 168
    .local v21, "widgetId":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastupdate"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v9, 0x0

    invoke-interface {v5, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 169
    .local v16, "lastUpdate":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lasterr"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 170
    .local v15, "lastError":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastcat"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 171
    .local v18, "last_category":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "category"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "category":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 174
    const-string v3, "us"

    const-string v4, "Uninitialized widget found, skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    :goto_1
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    goto :goto_0

    .line 178
    :cond_2
    const/4 v12, 0x0

    .line 179
    .local v12, "cross2AM":Z
    const-string v3, "America/Los_Angeles"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 180
    .local v11, "cal":Ljava/util/Calendar;
    move-object v0, v11

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 181
    const-string v3, "America/Los_Angeles"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v20

    .line 182
    .local v20, "today":Ljava/util/Calendar;
    const/16 v3, 0xb

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 183
    const/16 v3, 0xb

    const/4 v4, 0x2

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 184
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    const/4 v12, 0x1

    .line 188
    :cond_3
    sub-long v3, v7, v16

    const-wide/16 v10, 0x3e8

    div-long v13, v3, v10

    .line 189
    .local v13, "delay_s":J
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->retryError_s:I

    move v3, v0

    int-to-long v3, v3

    cmp-long v3, v13, v3

    if-ltz v3, :cond_4

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->retryOk_s:I

    move v3, v0

    int-to-long v3, v3

    cmp-long v3, v13, v3

    if-gez v3, :cond_5

    .line 191
    :cond_4
    if-eqz v12, :cond_1

    .line 196
    :cond_5
    invoke-static {v9}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->fromString(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    move-result-object v3

    iget-object v3, v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;->getJokes(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    move-result-object v10

    .line 197
    .local v10, "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    move/from16 v6, v21

    .line 198
    .local v6, "fWidgetId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->handler:Landroid/os/Handler;

    move-object v11, v0

    .end local v11    # "cal":Ljava/util/Calendar;
    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;Landroid/content/SharedPreferences;IJLjava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V

    invoke-virtual {v11, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 52
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "open"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "widgetId"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 57
    .local v12, "widgetId":I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 58
    .local v8, "prefs":Landroid/content/SharedPreferences;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastmsg"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "message":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastsel"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 60
    .local v10, "sel":I
    if-eqz v7, :cond_0

    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    .line 62
    :try_start_0
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const/4 v13, 0x0

    invoke-direct {v9, v7, v13}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V

    .line 63
    .local v9, "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    iget-object v13, v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    array-length v13, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v10, v13, :cond_0

    .line 65
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v14, ".JokeCategoryActivity"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 66
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 65
    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v11, "viewIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v13, v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    aget-object v13, v13, v10

    iget-object v4, v13, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 73
    .local v4, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    if-eqz v4, :cond_0

    .line 74
    new-instance v5, Landroid/content/Intent;

    const-class v13, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v5, "detailsIntent":Landroid/content/Intent;
    const-string v13, "blurb"

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 76
    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-static/range {p0 .. p0}, Lvw/SCMAnalytics;->start(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v13

    const-string v14, "widget"

    const-string v15, "click"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v4    # "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .end local v5    # "detailsIntent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .end local v10    # "sel":I
    .end local v11    # "viewIntent":Landroid/content/Intent;
    .end local v12    # "widgetId":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "next"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "widgetId"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 96
    .restart local v12    # "widgetId":I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 97
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastmsg"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .restart local v7    # "message":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lastsel"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 99
    .restart local v10    # "sel":I
    if-eqz v7, :cond_1

    const/4 v13, -0x1

    if-eq v10, v13, :cond_1

    .line 101
    :try_start_2
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const/4 v13, 0x0

    invoke-direct {v9, v7, v13}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V

    .line 102
    .restart local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    iget-object v13, v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    array-length v13, v13

    if-nez v13, :cond_2

    .line 103
    const/4 v10, 0x0

    .line 107
    :goto_1
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v9

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .end local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->stopSelf()V

    .line 126
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "sel":I
    .end local v12    # "widgetId":I
    :goto_3
    return-void

    .line 82
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    .restart local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .restart local v10    # "sel":I
    .restart local v12    # "widgetId":I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 83
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    .line 84
    iget-object v14, v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    aget-object v14, v14, v10

    invoke-static {v14}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;->getURL(Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 83
    invoke-direct {v11, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 89
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :catch_1
    move-exception v13

    move-object v6, v13

    .line 90
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    :cond_2
    add-int/lit8 v13, v10, 0x1

    :try_start_4
    iget-object v14, v9, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    array-length v14, v14

    rem-int v10, v13, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 108
    .end local v9    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    :catch_2
    move-exception v13

    move-object v6, v13

    .line 109
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "sel":I
    .end local v12    # "widgetId":I
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->processingThread:Ljava/lang/Thread;

    move-object v13, v0

    if-nez v13, :cond_4

    .line 119
    new-instance v13, Ljava/lang/Thread;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->processingThread:Ljava/lang/Thread;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->processingThread:Ljava/lang/Thread;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mostRecentStartId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 123
    :catchall_0
    move-exception v13

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    throw v13
.end method

.method public run()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->setAlarm()V

    .line 130
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->updateWidgets()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->processingThread:Ljava/lang/Thread;

    .line 136
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mostRecentStartId:I

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->stopSelfResult(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    return-void

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    throw v0
.end method
