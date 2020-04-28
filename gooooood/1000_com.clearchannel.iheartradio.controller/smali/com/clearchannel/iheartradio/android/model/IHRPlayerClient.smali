.class public Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
.super Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
.source "IHRPlayerClient.java"


# static fields
.field private static mShared:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;


# instance fields
.field private ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private ihrViewMain:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

.field private lastPlayedStation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->lastPlayedStation:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    .line 37
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x29

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0x2a

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIhrViewMain()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrViewMain:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    return-object v0
.end method

.method public getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 2

    .prologue
    .line 64
    const/16 v0, 0x2b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchHashtable(ILandroid/os/Parcel;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()[I
    .locals 2

    .prologue
    .line 71
    const/16 v0, 0x17

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchIntegers(ILandroid/os/Parcel;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x31

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRStation;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x2c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x2d

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0x15

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchFloat(ILandroid/os/Parcel;)F

    move-result v0

    return v0
.end method

.method public incrementTimeCounter(J)V
    .locals 6
    .param p1, "time"    # J

    .prologue
    const-wide v4, -0x51588841e93536dbL    # -6.040078258408625E-84

    .line 129
    invoke-static {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getInteger(J)I

    move-result v1

    .line 130
    .local v1, "value":I
    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    .line 131
    invoke-static {v4, v5, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setInteger(JI)V

    .line 132
    const-string v2, "IHRAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Time counter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v4, v1, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v2

    iget v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayListenSeconds:I

    mul-int/lit16 v0, v2, 0x3e8

    .line 136
    .local v0, "limit":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    if-lez v0, :cond_0

    .line 138
    if-lt v1, v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getAdController()Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kickoffAds()V

    .line 140
    const-string v2, "IHRAd"

    const-string v3, "Reached listenning limits without ad."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public isPlayRequested()Z
    .locals 2

    .prologue
    .line 76
    const/16 v0, 0xe

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 75
    const/16 v0, 0xb

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v5, "action"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "action":Ljava/lang/String;
    const/4 v3, 0x0

    .line 95
    .local v3, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "actStatus":Ljava/lang/String;
    const-string v5, "playing"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setStatus(Z)V

    .line 126
    .end local v0    # "actStatus":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    const-string v5, "metadata"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_3

    .line 111
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v4, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>(Ljava/util/HashMap;)V

    .end local v3    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .local v4, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    move-object v3, v4

    .line 115
    .end local v4    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v3    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_3
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v5, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    goto :goto_0

    .line 120
    :cond_4
    const-string v5, "saveWallOnWheelTimer"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrViewMain:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrViewMain:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getDelegate()Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->saveWallOnScreenTimer()V

    .line 123
    const-wide/16 v5, 0x7530

    invoke-virtual {p0, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->incrementTimeCounter(J)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "inName"    # Landroid/content/ComponentName;
    .param p2, "inBinder"    # Landroid/os/IBinder;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 150
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.clearchannel.iheartradio.player"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public pauseForSeek(Z)V
    .locals 2
    .param p1, "inPause"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    const/16 v0, 0x12

    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 41
    const/16 v0, 0x3f4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public playStation(Lcom/clearchannel/iheartradio/model/IHRStation;)V
    .locals 1
    .param p1, "inStation"    # Lcom/clearchannel/iheartradio/model/IHRStation;

    .prologue
    .line 45
    const/16 v0, 0x3fe

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILjava/util/List;)V

    .line 46
    return-void
.end method

.method public playStation(Ljava/lang/String;)V
    .locals 4
    .param p1, "inStation"    # Ljava/lang/String;

    .prologue
    const-wide v2, -0x1bf593cb2b6e0379L    # -8.168915413984621E173

    .line 49
    const/16 v1, 0x3fd

    invoke-virtual {p0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILjava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->lastPlayedStation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getInteger(J)I

    move-result v0

    .line 53
    .local v0, "loadsSinceLastGatewayAdShown":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setInteger(JI)V

    .line 54
    const-string v1, "IHRAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incremented load since last ad ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    .line 57
    .end local v0    # "loadsSinceLastGatewayAdShown":I
    :cond_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->lastPlayedStation:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIhrViewMain(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V
    .locals 0
    .param p1, "ihrViewMain"    # Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrViewMain:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 32
    return-void
.end method

.method public setPlayerView(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 0
    .param p1, "ihrPlayerView"    # Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->ihrPlayerView:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 157
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "inMilliseconds"    # I

    .prologue
    .line 72
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(II)V

    return-void
.end method

.method public setStreamIsNew(J)V
    .locals 1
    .param p1, "inStartTime"    # J

    .prologue
    .line 73
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(IJ)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "inVolume"    # F

    .prologue
    .line 69
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(IF)V

    return-void
.end method

.method public setVolumeByKeycode(I)V
    .locals 1
    .param p1, "inKeyCode"    # I

    .prologue
    .line 70
    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(II)V

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 40
    const/16 v0, 0x3f3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public togglePlaying()V
    .locals 2

    .prologue
    .line 80
    const/16 v0, 0x3f6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(ILandroid/os/Parcel;)V

    .line 81
    return-void
.end method
