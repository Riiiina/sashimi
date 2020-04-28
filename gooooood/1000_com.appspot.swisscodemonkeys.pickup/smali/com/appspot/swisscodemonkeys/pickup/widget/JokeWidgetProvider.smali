.class public Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "JokeWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static configureView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetId"    # I

    .prologue
    .line 52
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030012

    invoke-direct {v4, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v4, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "theme"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, "theme":I
    if-ltz v1, :cond_0

    sget-object v2, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->THEME:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 57
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 59
    .end local v1    # "theme":I
    .local v3, "theme":I
    :goto_0
    const v1, 0x7f0b005d

    sget-object v2, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->THEME:[I

    aget v2, v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastmsg"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading jokes..."

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V

    .line 65
    .local v1, "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "text":Ljava/lang/String;
    const-string v5, "lastsel"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, "index":I
    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    .end local v1    # "result":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    aget-object v0, v1, v0

    .end local v0    # "index":I
    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d

    if-le v1, v2, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v5, 0x78

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "msg":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0b005e

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "msg":Ljava/lang/String;
    :goto_1
    const v0, 0x7f0b005e

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->TEXT_COLOR:[I

    aget v1, v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "clickIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0b005c

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    const-class v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "clickIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .end local p1    # "widgetId":I
    move-result-object p0

    .line 90
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const p1, 0x7f0b005f

    invoke-virtual {v4, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    return-object v4

    .line 71
    .end local v0    # "clickIntent":Landroid/content/Intent;
    .local p0, "context":Landroid/content/Context;
    .restart local p1    # "widgetId":I
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const v0, 0x7f0b005e

    .line 74
    const-string v1, "The jokes could not be loaded. The program will retry later."

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .end local v3    # "theme":I
    .local v0, "prefs":Landroid/content/SharedPreferences;
    .local v1, "theme":I
    :cond_2
    move v3, v1

    .end local v1    # "theme":I
    .restart local v3    # "theme":I
    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;ILcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetId"    # I
    .param p2, "result"    # Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .param p3, "selected"    # I

    .prologue
    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-boolean v2, p2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->error:Z

    if-nez v2, :cond_0

    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastmsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastsel"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 48
    invoke-static {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;->configureView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 47
    invoke-virtual {v2, p1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-lt v1, v4, :cond_0

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void

    .line 30
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    aget v0, p3, v1

    .line 31
    .local v0, "appWidgetId":I
    invoke-static {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;->configureView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 32
    .local v3, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p2, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
