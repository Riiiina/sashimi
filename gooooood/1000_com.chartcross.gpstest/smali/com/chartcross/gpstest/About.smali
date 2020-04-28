.class public Lcom/chartcross/gpstest/About;
.super Landroid/app/Activity;
.source "About.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/chartcross/gpstest/About;->setContentView(I)V

    .line 22
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "fullscreen"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    .local v0, "FullScreen":Z
    invoke-virtual {p0}, Lcom/chartcross/gpstest/About;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 25
    .local v2, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 50
    :goto_0
    return-void

    .line 31
    :cond_0
    const/16 v3, -0x401

    invoke-virtual {v2, v3, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
