.class public Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field mConnectivity:Landroid/net/ConnectivityManager;

.field mResume:Z

.field mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field mVideo:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onPause()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onResume()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 187
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mResume:Z

    .line 188
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->finish()V

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    const v1, -0xccccbc

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 59
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->setContentView(Landroid/view/View;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mResume:Z

    .line 65
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mConnectivity:Landroid/net/ConnectivityManager;

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 74
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 75
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 77
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 78
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    .line 192
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    const v1, -0xcd00

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 194
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->getContext()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->showToast(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->finish()V

    .line 196
    const/16 v0, 0x64

    if-eq v0, p2, :cond_0

    if-ne v4, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STALL:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 200
    :cond_1
    return v4
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "inView"    # Landroid/view/View;
    .param p2, "inCode"    # I
    .param p3, "inEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 182
    invoke-virtual {p0, p2, p3}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "inKey"    # I
    .param p2, "inEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    const/4 v1, 0x1

    .line 165
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 167
    .local v0, "action":I
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 169
    :sswitch_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :sswitch_1
    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onPause()V

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    if-nez p1, :cond_3

    const/4 v1, 0x0

    move-object v0, v1

    .line 84
    .local v0, "url":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 85
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parameters(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 90
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 92
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->START:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 94
    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mResume:Z

    .line 95
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mConnectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYWIFI:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 102
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 104
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 106
    :cond_2
    return-void

    .line 82
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    const-string v1, "video"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 98
    .restart local v0    # "url":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mConnectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYDATA:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 112
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 116
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getWidth()I

    move-result v1

    .line 205
    .local v1, "w":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getHeight()I

    move-result v0

    .line 206
    .local v0, "h":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 207
    .local v2, "x":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 210
    .local v3, "y":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getRootView()Landroid/view/View;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 213
    if-le v2, v1, :cond_0

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->offsetLeftAndRight(I)V

    .line 214
    :cond_0
    if-le v3, v0, :cond_1

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    sub-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->offsetTopAndBottom(I)V

    .line 215
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mResume:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 124
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->RESUME:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 126
    const-string v0, "video"

    const-string v1, "***** resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 129
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mConnectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYWIFI:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    .line 136
    :cond_2
    :goto_1
    const-string v0, "video"

    const-string v1, "***** started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->mConnectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYDATA:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "inView"    # Landroid/view/View;
    .param p2, "inEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 154
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return v1

    .line 155
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;->onClick(Landroid/view/View;)V

    .line 156
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
