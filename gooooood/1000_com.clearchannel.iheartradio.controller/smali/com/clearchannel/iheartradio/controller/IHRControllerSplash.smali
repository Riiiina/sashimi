.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSplash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;
    }
.end annotation


# instance fields
.field public mAcquired:Z

.field public mSplashShown:Z

.field public mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method


# virtual methods
.method public askConfiguration()V
    .locals 6

    .prologue
    .line 116
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$1;

    const-string v2, "Choose configuration files to request from server:"

    const-string v3, "Production"

    const-string v4, "Staging"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public askContinue()V
    .locals 6

    .prologue
    .line 132
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$3;

    const-string v2, "Cannot fetch configuration files. You may have a problem with your network. Continue trying?"

    const-string v3, "Yes"

    const-string v4, "No"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public askOptimization()V
    .locals 6

    .prologue
    .line 126
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$2;

    const-string v2, "For optimal performance please close other applications before running iheartradio."

    const-string v3, "OK"

    const/4 v4, 0x0

    const-string v5, "Dont Show Again"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public askUpdate(ZLjava/lang/String;)V
    .locals 6
    .param p1, "inForced"    # Z
    .param p2, "inMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 138
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "An update is available."

    move-object p2, v0

    .line 142
    :cond_1
    :goto_0
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$4;

    const-string v3, "Update now"

    if-eqz p1, :cond_3

    const-string v1, "Quit"

    move-object v4, v1

    :goto_1
    if-eqz p1, :cond_4

    move-object v5, v2

    :goto_2
    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 139
    :cond_2
    const-string v0, "An update is available.  Would you like to download it?"

    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 142
    goto :goto_1

    :cond_4
    const-string v1, "Ignore"

    move-object v5, v1

    goto :goto_2
.end method

.method public configurationAcquired(Z)V
    .locals 2
    .param p1, "inOffline"    # Z

    .prologue
    const/4 v1, 0x1

    .line 95
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->setResult(I)V

    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 98
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mAcquired:Z

    .line 102
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->finish()V

    goto :goto_1
.end method

.method public configurationQuerying()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mAcquired:Z

    .line 106
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->animateLogo()V

    .line 107
    return-void
.end method

.method public informFinished()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$5;

    const-string v2, "Unable to continue."

    const-string v3, "Quit"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public informNoGPS()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 167
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$7;

    const-string v2, "No gps connection is currently available. Please try again when a gps connection is available."

    const-string v3, "Quit"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$7;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public informNoNetwork()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$6;

    const-string v2, "No network connection is currently available. Please try again when a network connection is available."

    const-string v3, "Quit"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$6;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->setContentView(Landroid/view/View;)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->restoreState(Landroid/os/Bundle;)V

    .line 29
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->setDelegate(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;)V

    .line 68
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 37
    const-string v1, "KeyDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 39
    .local v0, "consumed":Ljava/lang/Boolean;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->quit()V

    .line 41
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 43
    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 44
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onResume()V

    .line 56
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->setDelegate(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;)V

    .line 58
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mSplashShown:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mSplashShown:Z

    .line 60
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->splashShown()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "ioState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "iheartradio.splash_shown"

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mSplashShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v0, "iheartradio.splash_status"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const-string v0, "iheartradio.splash_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mSplashShown:Z

    .line 73
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    const-string v1, "iheartradio.splash_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mAcquired:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->finish()V

    .line 92
    :cond_0
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "inStatus"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->mViewSplash:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
