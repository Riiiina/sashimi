.class public Lcmn/NotificationBar;
.super Ljava/lang/Object;
.source "NotificationBar.java"


# static fields
.field private static final DEFAULT_BG_COLOR:I = -0xc229a

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final PREF_DATA:Ljava/lang/String; = "cmn.nbar"

.field private static final PREF_FIRST_SEEN:Ljava/lang/String; = "cmn.nbar.seen"

.field private static final PREF_LAST_ID:Ljava/lang/String; = "cmn.nbar.id"

.field static final PREF_STATS:Ljava/lang/String; = "cmn.nbar.stats"


# instance fields
.field private final activity:Lcmn/SCMApp;

.field private bgColor:I

.field private destinationUrl:Ljava/lang/String;

.field private isVisible:Z

.field private notificationBarView:Landroid/widget/LinearLayout;

.field private notificationText:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final props:Lcmn/AppProperties;

.field private textColor:I


# direct methods
.method public constructor <init>(Lcmn/SCMApp;Lcmn/AppProperties;)V
    .locals 1
    .param p1, "activity"    # Lcmn/SCMApp;
    .param p2, "props"    # Lcmn/AppProperties;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmn/NotificationBar;->isVisible:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcmn/NotificationBar;->notificationText:Ljava/lang/String;

    .line 40
    const v0, -0xc229a

    iput v0, p0, Lcmn/NotificationBar;->bgColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcmn/NotificationBar;->textColor:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcmn/NotificationBar;->destinationUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    .line 45
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    .line 46
    iput-object p2, p0, Lcmn/NotificationBar;->props:Lcmn/AppProperties;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcmn/NotificationBar;Z)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcmn/NotificationBar;->hideAndReportStats(Z)V

    return-void
.end method

.method static synthetic access$1(Lcmn/NotificationBar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcmn/NotificationBar;->destinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcmn/NotificationBar;)Lcmn/SCMApp;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    return-object v0
.end method

.method private hideAndReportStats(Z)V
    .locals 5
    .param p1, "userClickedCloseButton"    # Z

    .prologue
    .line 156
    iget-object v2, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "cmn.nbar.stats"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "stats":I
    if-eqz p1, :cond_0

    .line 160
    add-int/lit16 v1, v1, 0x2710

    .line 164
    :goto_0
    iget-object v2, p0, Lcmn/NotificationBar;->props:Lcmn/AppProperties;

    invoke-virtual {v2, v1}, Lcmn/AppProperties;->setNotificationStats(I)V

    .line 165
    iget-object v2, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cmn.nbar.seen"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "cmn.nbar.stats"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void

    .line 162
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcmn/NotificationBar;->isVisible:Z

    return v0
.end method

.method public readPrefs()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 124
    iput-boolean v12, p0, Lcmn/NotificationBar;->isVisible:Z

    .line 125
    iget-object v8, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "cmn.nbar"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v6, "json":Lorg/json/JSONObject;
    const-string v8, "bgColor"

    const v9, -0xc229a

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcmn/NotificationBar;->bgColor:I

    .line 132
    const-string v8, "textColor"

    const/high16 v9, -0x1000000

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcmn/NotificationBar;->textColor:I

    .line 133
    const-string v8, "text"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcmn/NotificationBar;->notificationText:Ljava/lang/String;

    .line 134
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcmn/NotificationBar;->destinationUrl:Ljava/lang/String;

    .line 135
    const-string v8, "durationSec"

    const v9, 0x15180

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "durationSec":I
    const-string v8, "id"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 137
    .local v5, "id":I
    iget-object v8, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "cmn.nbar.id"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 138
    .local v7, "lastId":I
    if-eqz v5, :cond_0

    if-lt v5, v7, :cond_0

    .line 140
    if-ne v5, v7, :cond_3

    .line 141
    iget-object v8, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "cmn.nbar.seen"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 142
    .local v3, "firstSeen":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v10, v1

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move v8, v13

    :goto_1
    iput-boolean v8, p0, Lcmn/NotificationBar;->isVisible:Z

    goto :goto_0

    .line 151
    .end local v1    # "durationSec":I
    .end local v3    # "firstSeen":J
    .end local v5    # "id":I
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "lastId":I
    :catch_0
    move-exception v8

    goto :goto_0

    .restart local v1    # "durationSec":I
    .restart local v3    # "firstSeen":J
    .restart local v5    # "id":I
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v7    # "lastId":I
    :cond_2
    move v8, v12

    .line 142
    goto :goto_1

    .line 145
    .end local v3    # "firstSeen":J
    :cond_3
    iget-object v8, p0, Lcmn/NotificationBar;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 146
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "cmn.nbar.seen"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string v8, "cmn.nbar.id"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcmn/NotificationBar;->isVisible:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method setContentViewWithNotification(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    .line 50
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    .line 51
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v5, "text":Landroid/widget/TextView;
    iget-object v6, p0, Lcmn/NotificationBar;->notificationText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget v6, p0, Lcmn/NotificationBar;->textColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v6, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-virtual {v6}, Lcmn/SCMApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .local v1, "density":F
    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 60
    .local v4, "padding":I
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 62
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    new-instance v6, Lcmn/NotificationBar$1;

    invoke-direct {v6, p0}, Lcmn/NotificationBar$1;-><init>(Lcmn/NotificationBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "close":Landroid/widget/ImageButton;
    const v6, 0x108005a

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 85
    new-instance v6, Lcmn/NotificationBar$2;

    invoke-direct {v6, p0}, Lcmn/NotificationBar$2;-><init>(Lcmn/NotificationBar;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    iget v7, p0, Lcmn/NotificationBar;->bgColor:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 94
    iget-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    invoke-direct {v7, v8, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 95
    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v6, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    invoke-direct {v6, v10, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 104
    invoke-virtual {v2, p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v6, p0, Lcmn/NotificationBar;->activity:Lcmn/SCMApp;

    invoke-virtual {v6, v2}, Lcmn/SCMApp;->setSuperContentView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public updateNotificationBarUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 115
    iget-object v0, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcmn/NotificationBar;->readPrefs()V

    .line 117
    iget-boolean v0, p0, Lcmn/NotificationBar;->isVisible:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcmn/NotificationBar;->notificationBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method
