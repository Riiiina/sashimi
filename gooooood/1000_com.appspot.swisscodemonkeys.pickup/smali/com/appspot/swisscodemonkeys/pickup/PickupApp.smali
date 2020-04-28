.class public abstract Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.super Lcmn/SCMApp;
.source "PickupApp.java"


# static fields
.field private static final LOVE_THEME:Ljava/lang/String; = "love_theme"

.field protected static final PICKUP_NUM_DIALOGS:I = 0x1

.field protected static final PROGRESS_DIALOG:I = 0x1


# instance fields
.field protected oldPref:Z

.field protected orientationTimer:Ljava/util/Timer;

.field protected service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcmn/SCMApp;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->oldPref:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected addExtraMenuItems(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 96
    return-void
.end method

.method protected applyLoveTheme()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected applyTheme()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected getExtraEmailLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "Yeah baby!"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcmn/SCMApp;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "love_theme"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    .local v0, "pref":Z
    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->oldPref:Z

    if-eq v0, v1, :cond_0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->applyLoveTheme()V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->applyTheme()V

    .line 67
    const-string v1, "Updating theme"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->finish()V

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->startActivity(Landroid/content/Intent;)V

    .line 71
    :cond_0
    return-void

    .line 64
    :cond_1
    const v1, 0x1030005

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Lcmn/SCMApp;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->props:Lcmn/AppProperties;

    invoke-static {p0}, Lcmn/BrowserDetect;->getDetector(Landroid/content/Context;)Lcmn/BrowserDetect;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;-><init>(Ljava/lang/String;Lcmn/AppProperties;Lcmn/BrowserDetect;)V

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 40
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "love_theme"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->oldPref:Z

    .line 41
    const-string v1, "love"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "love_theme"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->applyLoveTheme()V

    .line 45
    :cond_0
    invoke-static {p0}, Lvw/SCMAnalytics;->start(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lvw/SCMAnalytics;->track(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 106
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    .line 110
    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcmn/SCMApp;->onStop()V

    .line 53
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 54
    return-void
.end method

.method protected readPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 87
    return-void
.end method

.method protected selectMenuItem(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 100
    return-void
.end method

.method protected writePreferences(Landroid/content/SharedPreferences$Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcmn/SCMApp;->writePreferences(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method
