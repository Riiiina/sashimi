.class public Lcom/chartcross/gpstest/Help;
.super Landroid/app/Activity;
.source "Help.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/chartcross/gpstest/Help;->setContentView(I)V

    .line 18
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "fullscreen"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    .local v0, "FullScreen":Z
    invoke-virtual {p0}, Lcom/chartcross/gpstest/Help;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 21
    .local v2, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const/16 v3, -0x401

    invoke-virtual {v2, v3, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
