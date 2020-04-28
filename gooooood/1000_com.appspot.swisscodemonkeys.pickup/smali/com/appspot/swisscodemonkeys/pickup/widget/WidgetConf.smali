.class public Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "WidgetConf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CATEGORY_CONF:Ljava/lang/String; = "category"

.field public static final LAST_CATEGORY:Ljava/lang/String; = "lastcat"

.field public static final LAST_DATE:Ljava/lang/String; = "lastdate"

.field public static final LAST_ERROR:Ljava/lang/String; = "lasterr"

.field public static final LAST_MESSAGE:Ljava/lang/String; = "lastmsg"

.field public static final LAST_SEL_INDEX:Ljava/lang/String; = "lastsel"

.field public static final LAST_UPDATE_TIMESTAMP:Ljava/lang/String; = "lastupdate"

.field public static final TEXT_COLOR:[I

.field public static final THEME:[I

.field public static final THEME_CONF:Ljava/lang/String; = "theme"

.field public static final WIDGET_ID:Ljava/lang/String; = "widgetId"


# instance fields
.field private category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private mAppWidgetId:I

.field private preview:Landroid/widget/LinearLayout;

.field private theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->THEME:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->TEXT_COLOR:[I

    .line 43
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f020015
        0x7f02002a
        0x7f020003
        0x7f020018
        0x7f020019
        0x7f020009
        0x7f020016
    .end array-data

    .line 59
    :array_1
    .array-data 4
        -0x222223
        -0x555556
        -0xbbbbbc
        -0xbbbbbc
        -0xbbbbbc
        -0xbbbbbc
        -0xbbbbbc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    .line 68
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->clickListener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    return v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;I)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setLayout(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    return-void
.end method

.method private loadCategories(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "catSpinner"    # Landroid/widget/Spinner;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 120
    const-string v0, "Loading categories..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;

    invoke-direct {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;Landroid/widget/Spinner;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 160
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method private setLayout(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, -0x1

    .line 164
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    .line 165
    sget-object v5, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->THEME:[I

    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    aget v2, v5, v6

    .line 167
    .local v2, "res":I
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030012

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 168
    .local v4, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v5, 0x7f0b005d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 171
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    const v5, 0x7f0b005e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 174
    .local v3, "text":Landroid/widget/TextView;
    sget-object v5, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->TEXT_COLOR:[I

    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->preview:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->preview:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const v5, 0x7f0b005f

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    if-nez v6, :cond_0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getInstance()Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getWidgetCategory()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 192
    const-string v6, "You must select a category before adding the widget"

    .line 193
    const/4 v7, 0x1

    .line 192
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 193
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 198
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 199
    .local v4, "p":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 200
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 201
    .local v1, "conf":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "category"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "theme"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-static {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;->configureView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 206
    .local v5, "views":Landroid/widget/RemoteViews;
    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v0, v6, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 208
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v6

    const-string v7, "widget"

    const-string v8, "add"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "theme "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setConfigureResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->finish()V

    .line 213
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 200
    .end local v1    # "conf":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "views":Landroid/widget/RemoteViews;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getInstance()Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getWidgetCategory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f0b0061
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 81
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 83
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 84
    const-string v6, "appWidgetId"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    .line 88
    :cond_0
    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    if-nez v6, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->finish()V

    .line 116
    :goto_0
    return-void

    .line 92
    :cond_1
    const v6, 0x7f030013

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setContentView(I)V

    .line 93
    const v6, 0x7f0b0060

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 95
    .local v1, "catSpinner":Landroid/widget/Spinner;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getInstance()Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getWidgetCategory()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 96
    invoke-direct {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->loadCategories(Landroid/widget/Spinner;)V

    .line 102
    :goto_1
    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setConfigureResult(I)V

    .line 103
    const v6, 0x7f0b0061

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v6, 0x7f0b000f

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->preview:Landroid/widget/LinearLayout;

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 108
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "theme"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "category"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "jokeStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 111
    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->fromString(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    move-result-object v6

    iput-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->category:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    .line 113
    :cond_2
    iget v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->theme:I

    invoke-direct {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setLayout(I)V

    .line 114
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->preview:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 98
    .end local v0    # "b":Landroid/widget/Button;
    .end local v4    # "jokeStr":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 99
    const v6, 0x7f0b0054

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setConfigureResult(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->setResult(ILandroid/content/Intent;)V

    .line 185
    return-void
.end method
