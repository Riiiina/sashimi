.class public Lcom/clearchannel/iheartradio/controller/IHRActivity;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
.source "IHRActivity.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
.implements Lcom/clearchannel/iheartradio/model/IHRListener;


# static fields
.field public static final kActionReceivedStationLogo:Ljava/lang/String; = "com.clearchannel.iheartradio.android.IHRActivity.receivedStationLogo"


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field mCurrentStationCallLetters:Ljava/lang/String;

.field mCurrentStationLogo:Landroid/graphics/Bitmap;

.field mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

.field mOffline:Z

.field mShowMain:Z

.field private mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 500
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 501
    .local v0, "res":I
    return v0
.end method

.method public declared-synchronized getCurrentStationLogo()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mCurrentStationLogo:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getmMainView()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 3

    .prologue
    .line 158
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 161
    .local v1, "network":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized httpFetchComplete(Lcom/clearchannel/iheartradio/model/IHRHTTP;)V
    .locals 3
    .param p1, "http"    # Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mCurrentStationCallLetters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getData()[B

    move-result-object v0

    .line 52
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mCurrentStationLogo:Landroid/graphics/Bitmap;

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.clearchannel.iheartradio.android.IHRActivity.receivedStationLogo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 2
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 149
    const-string v0, "endingOfflineMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v0

    const-string v1, "endingOfflineMode"

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->removeFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 151
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setOffline(Z)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushDashboard(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 326
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "action"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 330
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    const-string v5, "callLetters"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "letters":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 332
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeFavorite(Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    invoke-virtual {v5, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackFavorite(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushFavoritesList(Z)V

    .line 372
    .end local v3    # "letters":Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .line 337
    .restart local v3    # "letters":Ljava/lang/String;
    :cond_1
    const-string v5, "artist"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "artist":Ljava/lang/String;
    const-string v5, "track"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "track":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeTaggedSong(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushTagged()V

    goto :goto_0

    .line 343
    .end local v1    # "artist":Ljava/lang/String;
    .end local v3    # "letters":Ljava/lang/String;
    .end local v4    # "track":Ljava/lang/String;
    :cond_2
    const-string v5, "disable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 344
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeAutoplayStation()V

    .line 345
    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushFavoritesList(Z)V

    goto :goto_0

    .line 346
    :cond_3
    const-string v5, "enable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    const-string v6, "callLetters"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->setAutoplayStation(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushFavoritesList(Z)V

    goto :goto_0

    .line 349
    :cond_4
    const-string v5, "play"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 351
    const-string v5, "callLetters"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_5
    const-string v5, "listen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 356
    const-string v5, "category"

    const-string v6, "playerSubscription"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v5, "class"

    const-class v6, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 362
    :cond_6
    const-string v5, "suspend"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 363
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    const-string v6, "archive"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "site"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v9, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->cachePremiumItem(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_7
    const-string v5, "acquire"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 365
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    const-string v6, "archive"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "site"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->cachePremiumItem(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    const-string v5, "uncache"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 367
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    const-string v6, "archive"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->deletePremiumItem(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 368
    :cond_9
    const-string v5, "discard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v5

    const-string v6, "site"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "forget"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteDiscard(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onControllerResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inResult"    # I
    .param p3, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 488
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->showPrimaryController()V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->onNoController(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 168
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 169
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setResult(I)V

    .line 174
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setVolumeControlStream(I)V

    .line 197
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->needsLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushSplash()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->showPrimaryController()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 216
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onDestroy()V

    .line 219
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 446
    const/4 v0, 0x1

    .line 448
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 472
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    .line 452
    :pswitch_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->stop()V

    goto :goto_0

    .line 453
    :pswitch_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->togglePlaying()V

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNoController(Z)V
    .locals 1
    .param p1, "inCreating"    # Z

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setResult(I)V

    .line 482
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->finish()V

    .line 484
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/high16 v1, 0x400000

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 261
    :pswitch_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->popToRoot()V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushSettings()V

    goto :goto_0

    .line 270
    :pswitch_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRActivity$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 279
    :pswitch_4
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->quit()V

    goto :goto_0

    .line 284
    :pswitch_5
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 289
    :pswitch_6
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 228
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getmMainView()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    instance-of v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getmMainView()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    instance-of v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    if-nez v0, :cond_0

    .line 242
    const/16 v0, 0x68

    const-string v1, "Home"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 245
    :cond_0
    const/16 v0, 0x73

    const-string v1, "Settings"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 246
    const/16 v0, 0x71

    const-string v1, "Quit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 250
    :cond_1
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getmMainView()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getSearchPopupWindow()Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->kHeaderHeight:I

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->dpToPix(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->showLikeQuickAction(II)V

    .line 209
    const/4 v1, 0x1

    return v1
.end method

.method public openWebURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v0, "browse":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method protected prepareContent()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;-><init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 378
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mShowMain:Z

    .line 379
    return-void
.end method

.method public pushCitiesList()V
    .locals 3

    .prologue
    .line 87
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "city"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 88
    return-void
.end method

.method public pushDashboard(Z)V
    .locals 3
    .param p1, "inLeaveStack"    # Z

    .prologue
    .line 109
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "primary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "controller_stack_insert_order"

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public pushFavoritesList(Z)V
    .locals 7
    .param p1, "tabBarPushed"    # Z

    .prologue
    const/high16 v5, 0x10000000

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "tagged":Z
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 94
    .local v1, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 95
    const-string v4, "artist"

    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "artist":Ljava/lang/String;
    const-string v4, "track"

    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, "track":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->isSongTagged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 101
    .end local v0    # "artist":Ljava/lang/String;
    .end local v3    # "track":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 102
    const-class v4, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "source"

    const-string v6, "tagged"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    const-class v4, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "source"

    const-string v6, "favorites"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0
.end method

.method public pushPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callLetter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 78
    return-void
.end method

.method public pushPremiumList(Z)V
    .locals 3
    .param p1, "inOffline"    # Z

    .prologue
    .line 117
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x10000000

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "channels"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 118
    return-void

    .line 117
    :cond_0
    const/high16 v1, 0x4000000

    goto :goto_0
.end method

.method public pushPrimaryList(Z)V
    .locals 3
    .param p1, "inLeaveStack"    # Z

    .prologue
    .line 113
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "primary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "controller_stack_insert_order"

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public pushRandomizer()V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 73
    return-void
.end method

.method public pushSettings()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 69
    return-void
.end method

.method public pushSplash()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerForResult(Landroid/content/Intent;I)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 64
    return-void
.end method

.method public pushTagged()V
    .locals 3

    .prologue
    .line 81
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTagged;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "tagged"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 84
    return-void
.end method

.method public pushWebURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 122
    return-void
.end method

.method public pushing(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "inClass"    # Ljava/lang/String;

    .prologue
    .line 59
    const/high16 v0, 0x4000000

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public showPrimaryController()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushPlayer(Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->topController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->isOffline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushDashboard(Z)V

    goto :goto_0
.end method

.method protected swapController(Lcom/clearchannel/iheartradio/controller/IHRController;Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 8
    .param p1, "inNew"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "inOld"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 384
    if-nez p1, :cond_4

    const/4 v4, 0x0

    move-object v3, v4

    .line 385
    .local v3, "view":Landroid/view/View;
    :goto_0
    const/4 v2, 0x1

    .line 386
    .local v2, "orientation":I
    const/16 v1, 0x400

    .line 387
    .local v1, "flags_mask":I
    const/4 v0, 0x0

    .line 416
    .local v0, "flags":I
    instance-of v4, p1, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;

    if-eqz v4, :cond_0

    .line 417
    const/4 v2, 0x0

    .line 418
    const/16 v0, 0x400

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getRequestedOrientation()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 423
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setRequestedOrientation(I)V

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-eq v4, v0, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 431
    sget-object v4, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_5

    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/controller/iheartradio;->playingAlternateAudio(Z)V

    .line 434
    :cond_2
    instance-of v4, p1, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v4, :cond_3

    instance-of v4, p1, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;

    if-eqz v4, :cond_6

    .line 435
    :cond_3
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setContentView(Landroid/view/View;)V

    .line 436
    iput-boolean v7, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mShowMain:Z

    .line 442
    :goto_2
    return-void

    .line 384
    .end local v0    # "flags":I
    .end local v1    # "flags_mask":I
    .end local v2    # "orientation":I
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->content()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .restart local v0    # "flags":I
    .restart local v1    # "flags_mask":I
    .restart local v2    # "orientation":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_5
    move v5, v6

    .line 431
    goto :goto_1

    .line 438
    :cond_6
    iget-boolean v4, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mShowMain:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->setContentView(Landroid/view/View;)V

    .line 439
    :cond_7
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mMainView:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    if-nez p1, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v4, v3, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setContentView(Landroid/view/View;Z)V

    .line 440
    iput-boolean v6, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;->mShowMain:Z

    goto :goto_2

    .line 439
    :cond_8
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->wantsBanner()Z

    move-result v5

    goto :goto_3
.end method
