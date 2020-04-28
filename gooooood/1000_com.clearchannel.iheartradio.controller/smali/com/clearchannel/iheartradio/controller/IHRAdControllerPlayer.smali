.class public Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRAdControllerPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final kKeyListenSecondsSinceLastGatewayAdShown:J = -0x51588841e93536dbL

.field public static final kKeyLoadsSinceLastGatewayAdShown:J = -0x1bf593cb2b6e0379L

.field protected static final kMessageCloseLargeAd:I


# instance fields
.field protected mAdClickURL:Ljava/lang/String;

.field protected mCallLetters:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mIgnoreMetadata:Z

.field protected mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field protected mPlayStationCalled:Z

.field protected mPlaying:Z

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSeekable:Z

.field protected mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field protected mURL:Ljava/lang/String;

.field protected mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field protected mVolumeAssigned:J

.field private shouldFireAd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ClLA"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->osType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kMessageCloseLargeAd:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 2
    .param p1, "viewPlayer"    # Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerPlayer:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 259
    :cond_0
    return-void
.end method

.method protected displayAd(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V
    .locals 9
    .param p1, "hash"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p2, "showGatewayAd"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    const-string v4, "IHRAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Display ad"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v2

    .line 160
    .local v2, "startup":Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    const-string v4, "ad_url"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mAdClickURL:Ljava/lang/String;

    .line 161
    const-string v4, "large_image"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 162
    .local v0, "largeBitmap":Landroid/graphics/Bitmap;
    const-string v4, "small_image"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 164
    .local v1, "smallBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 165
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mAdClickURL:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setSmallAd(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getSmallAd()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getSmallAd()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const-string v4, "IHRAd"

    const-string v5, "Set smallAd visible"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    .line 176
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->createAdpopup(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 179
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getAdPopup()Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mAdClickURL:Ljava/lang/String;

    if-eqz v5, :cond_2

    move v5, v8

    :goto_0
    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->setClickable(Z)V

    .line 181
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v4, p2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setAdPopupVisible(Z)V

    .line 183
    if-eqz p2, :cond_1

    iget-boolean v4, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayEnableUserAbort:Z

    if-nez v4, :cond_1

    .line 185
    const-wide v4, -0x51588841e93536dbL    # -6.040078258408625E-84

    invoke-static {v4, v5, v8}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setInteger(JI)V

    .line 186
    const-wide v4, -0x1bf593cb2b6e0379L    # -8.168915413984621E173

    invoke-static {v4, v5, v8}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setInteger(JI)V

    .line 187
    iput-boolean v7, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->shouldFireAd:Z

    .line 189
    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;)V

    .line 196
    .local v3, "task":Ljava/util/TimerTask;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v2

    .line 197
    const-string v4, "IHRAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Will display ad during "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iget v5, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 200
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    .line 203
    .end local v3    # "task":Ljava/util/TimerTask;
    :cond_1
    return-void

    :cond_2
    move v5, v7

    .line 179
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 220
    const-string v0, "IHRAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handle :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( Close="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kMessageCloseLargeAd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; AdAquired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/clearchannel/iheartradio/model/IHRAd;->kMessageAdAcquired:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kMessageCloseLargeAd:I

    if-ne v0, v1, :cond_1

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->setAdLargeHidden(ZZ)V

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 224
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/clearchannel/iheartradio/model/IHRAd;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRAd;->mContextPlayer:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdPlayer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->shouldFireAd:Z

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->displayAd(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "IHRAd"

    const-string v1, "Deprecated Callletters."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initAds()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kickoffAds()V

    .line 91
    return-void
.end method

.method public kickoffAds()V
    .locals 10

    .prologue
    .line 95
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v7

    if-nez v7, :cond_1

    .line 96
    const-string v7, "IHRAd"

    const-string v8, "Player is hidden, break."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v4, 0x0

    .line 106
    .local v4, "showGatewayAd":Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->shouldFireAd:Z

    .line 108
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 110
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v6

    .line 112
    .local v6, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->getAdsDisabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    const-string v7, "IHRAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ad enabled for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-result-object v5

    .line 117
    .local v5, "startup":Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    iget v7, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    if-lez v7, :cond_0

    .line 119
    iget v7, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayListenSeconds:I

    if-lez v7, :cond_3

    .line 120
    const-wide v7, -0x51588841e93536dbL    # -6.040078258408625E-84

    invoke-static {v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getInteger(J)I

    move-result v1

    .line 122
    .local v1, "listenMSecondsSinceLastGatewayShown":I
    div-int/lit16 v2, v1, 0x3e8

    .line 123
    .local v2, "listenSecondsSinceLastGatewayAdShown":I
    const-string v7, "IHRAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "listenSecondsSinceLastGatewayAdShown = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayListenSeconds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s limit)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v2, :cond_2

    iget v7, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayListenSeconds:I

    if-lt v2, v7, :cond_3

    .line 125
    :cond_2
    const/4 v4, 0x1

    .line 129
    .end local v1    # "listenMSecondsSinceLastGatewayShown":I
    .end local v2    # "listenSecondsSinceLastGatewayAdShown":I
    :cond_3
    if-nez v4, :cond_5

    iget v7, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayInterval:I

    if-lez v7, :cond_5

    .line 130
    const-wide v7, -0x1bf593cb2b6e0379L    # -8.168915413984621E173

    invoke-static {v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getInteger(J)I

    move-result v3

    .line 131
    .local v3, "loadsSinceLastGatewayAdShown":I
    const-string v7, "IHRAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadsSinceLastGatewayAdShown = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayInterval:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " times limit)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v3, :cond_4

    iget v7, v5, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayInterval:I

    if-le v3, v7, :cond_5

    .line 134
    :cond_4
    const/4 v4, 0x1

    .line 138
    .end local v3    # "loadsSinceLastGatewayAdShown":I
    :cond_5
    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->shouldFireAd:Z

    .line 140
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/clearchannel/iheartradio/model/IHRAd;->request(ILjava/lang/Object;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    .local v0, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v0, :cond_0

    .line 142
    const-string v7, "IHRAd"

    const-string v8, "Displayed ad without request."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v0, v4}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->displayAd(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 244
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 246
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.clearchannel.iheartradio.android.IHRActivity.receivedStationLogo"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void
.end method

.method public setAdLargeHidden(ZZ)V
    .locals 2
    .param p1, "hidden"    # Z
    .param p2, "allowClose"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isAdPopUpShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setAdPopupVisible(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isAdPopUpShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setAdPopupVisible(Z)V

    .line 213
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    goto :goto_0
.end method

.method public setCallLetters(Ljava/lang/String;)V
    .locals 3
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mCallLetters:Ljava/lang/String;

    .line 65
    const-string v0, "IHRAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callletters updated to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
