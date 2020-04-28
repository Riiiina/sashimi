.class public Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;
.super Landroid/telephony/PhoneStateListener;
.source "IHRServicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final kCopyDescription:I = 0x29

.field public static final kCopyIdentifier:I = 0x2a

.field public static final kCopyMetadata:I = 0x2b

.field public static final kCopyStation:I = 0x31

.field public static final kCopyStatus:I = 0x2c

.field public static final kCopyURL:I = 0x2d

.field public static final kGetBufferPercent:I = 0x16

.field public static final kGetPosition:I = 0x17

.field public static final kGetVolume:I = 0x15

.field public static final kIsBuffering:I = 0xd

.field public static final kIsPlayRequested:I = 0xe

.field public static final kIsPlaying:I = 0xb

.field public static final kIsStopped:I = 0xc

.field public static final kMessagePlayer:Ljava/lang/String; = "com.clearchannel.iheartradio.player"

.field public static final kNotifyNamePlayer:Ljava/lang/String; = "player"

.field public static final kOpenFileURL:I = 0x3ff

.field public static final kOpenStreamURL:I = 0x400

.field public static final kPause:I = 0x3f5

.field public static final kPlay:I = 0x3f4

.field public static final kPlayStation:I = 0x3fe

.field public static final kPlayStationByLetters:I = 0x3fd

.field public static final kRetry:I = 0x3fb

.field public static final kSeekPause:I = 0x12

.field public static final kSeekUnpause:I = 0x13

.field public static final kSetDescription:I = 0x1f

.field public static final kSetIdentifier:I = 0x20

.field public static final kSetPosition:I = 0x23

.field public static final kSetStation:I = 0x27

.field public static final kSetVolume:I = 0x21

.field public static final kSetVolumeByKeycode:I = 0x22

.field public static final kStateClosed:I = 0x8

.field public static final kStateError:I = 0x9

.field public static final kStateFinished:I = 0x7

.field public static final kStateIdle:I = 0x0

.field public static final kStateNetworkError:I = 0xa

.field public static final kStateOpening:I = 0x1

.field public static final kStatePaused:I = 0x5

.field public static final kStatePlaying:I = 0x4

.field public static final kStatePrepared:I = 0x3

.field public static final kStatePreparing:I = 0x2

.field public static final kStateStopped:I = 0x6

.field public static final kStateThreading:I = 0x1

.field public static final kStatusBuffered:Ljava/lang/String; = "buffered"

.field public static final kStatusBuffering:Ljava/lang/String; = "buffering"

.field public static final kStatusConnectionFailed:Ljava/lang/String; = "connectionfailed"

.field public static final kStatusError:Ljava/lang/String; = "error"

.field public static final kStatusFailed:Ljava/lang/String; = "failed"

.field public static final kStatusFinished:Ljava/lang/String; = "finished"

.field public static final kStatusIdle:Ljava/lang/String; = ""

.field public static final kStatusNoNetwork:Ljava/lang/String; = "nonetwork"

.field public static final kStatusOpening:Ljava/lang/String; = "opening"

.field public static final kStatusPlaying:Ljava/lang/String; = "playing"

.field public static final kStatusPrepared:Ljava/lang/String; = "prepared"

.field public static final kStatusPreparing:Ljava/lang/String; = "preparing"

.field public static final kStatusStopped:Ljava/lang/String; = "stopped"

.field public static final kStop:I = 0x3f3

.field public static final kStreamIsNew:I = 0x32

.field public static final kTimerWallOnWheelLength:I = 0x1e0

.field public static final kTimerWallOnWheelTicks:J = 0x7530L

.field public static final kTogglePlaying:I = 0x3f6

.field public static final kVolumeSteps:F = 16.0f

.field private static millisUntilFinished:J = 0x0L

.field public static final playRetryTimes:I = 0x5

.field private static shouldDisplayLoginPopup:Z = false

.field public static final simplePlayerStatePause:I = 0x65

.field public static final simplePlayerStatePlay:I = 0x64

.field public static final simplePlayerStateStop:I = 0x66

.field public static stationLaunchCount:J


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field protected mBufferPercent:I

.field protected mDescription:Ljava/lang/String;

.field private mHandlerMetadata:Landroid/os/Handler;

.field public mIdentifier:Ljava/lang/String;

.field protected mIgnoreThroughputMessages:Z

.field protected mMediaVault:Ljava/lang/String;

.field protected mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field protected mOpenAttemptCount:I

.field protected mPhoneStatePaused:I

.field protected mPlayPaused:Z

.field protected mPlayRequested:Z

.field protected mPlayState:I

.field protected mPlayer:Landroid/media/MediaPlayer;

.field protected mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

.field mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field protected mSite:Ljava/lang/String;

.field private mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

.field protected mStatus:Ljava/lang/String;

.field protected mStreamURL:Ljava/lang/String;

.field protected mStreaming:Z

.field private mThroughput:I

.field private mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field protected mVolume:F

.field protected mVolumeUnmuted:F

.field public serviceStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1146
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->stationLaunchCount:J

    .line 1150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->shouldDisplayLoginPopup:Z

    .line 1151
    const-wide/32 v0, 0x1b77400

    sput-wide v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->millisUntilFinished:J

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->serviceStopped:Z

    .line 1298
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mHandlerMetadata:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method public static getMillisUntilFinished()J
    .locals 2

    .prologue
    .line 1173
    sget-wide v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->millisUntilFinished:J

    return-wide v0
.end method

.method public static setMillisUntilFinished(J)V
    .locals 2
    .param p0, "millisUntilFinished"    # J

    .prologue
    .line 1177
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1178
    const-wide/32 v0, 0x1b77400

    sput-wide v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->millisUntilFinished:J

    .line 1183
    :goto_0
    return-void

    .line 1181
    :cond_0
    sput-wide p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->millisUntilFinished:J

    goto :goto_0
.end method

.method public static shouldDisplayLoginPopup()Z
    .locals 1

    .prologue
    .line 1169
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->shouldDisplayLoginPopup:Z

    return v0
.end method


# virtual methods
.method protected declared-synchronized begin(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inStream"    # Z

    .prologue
    .line 239
    monitor-enter p0

    const/4 v4, 0x0

    .line 243
    .local v4, "deviceID":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIgnoreThroughputMessages:Z

    .line 245
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 251
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 252
    const-string v0, "nonetwork"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->setProhibitNewConnections(Z)V

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 266
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 267
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 269
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 270
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 274
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    if-eqz p2, :cond_3

    .line 287
    :try_start_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->deviceID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mSite:Ljava/lang/String;

    invoke-static {p1, v4, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->resolveMediaVault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    :cond_1
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-nez v0, :cond_2

    .line 293
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mSite:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;-><init>(Ljava/net/URI;Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 294
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->getRTSPURL()Ljava/lang/String;

    move-result-object p1

    .line 301
    :cond_2
    :goto_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 337
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->setProhibitNewConnections(Z)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 339
    .local v6, "dns":Ljava/net/UnknownHostException;
    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 239
    .end local v6    # "dns":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->resolveRedirects(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 309
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 310
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 312
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 317
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 320
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 325
    :cond_5
    if-eqz p2, :cond_6

    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-nez v0, :cond_6

    .line 326
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->logPrepared()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "message":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateThroughput(Ljava/lang/String;Z)V

    .line 331
    .end local v8    # "message":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onPrepared(Landroid/media/MediaPlayer;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 340
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 341
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abort "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    const-string v2, "stream "

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->setProhibitNewConnections(Z)V

    goto/16 :goto_0

    .line 341
    :cond_7
    const-string v2, "file "
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method protected declared-synchronized cease()V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    const-string v0, "PLAYER"

    const-string v1, "cease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 196
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 197
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 199
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 200
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 201
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->close()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_2
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 3
    .param p1, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IHRPlayer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getmService()Lcom/clearchannel/iheartradio/android/services/IHRService;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "inMessage"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1024
    const/4 v0, 0x1

    .line 1026
    .local v0, "result":Z
    const-string v1, "IHRServicePlayer"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1066
    :cond_0
    :goto_0
    return v0

    .line 1030
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    .line 1031
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    goto :goto_0

    .line 1037
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    goto :goto_0

    .line 1040
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->pause(Z)V

    goto :goto_0

    .line 1044
    :sswitch_3
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->pause(Z)V

    goto :goto_0

    .line 1048
    :sswitch_4
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    goto :goto_0

    .line 1053
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStation(Ljava/util/List;)V

    goto :goto_0

    .line 1054
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStation(Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStreamURL(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1056
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStreamURL(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1058
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSetVolume(F)V

    goto :goto_0

    .line 1059
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSetVolumeByKeycode(I)V

    goto :goto_0

    .line 1060
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->setStreamIsNew(J)V

    goto :goto_0

    .line 1028
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x32 -> :sswitch_b
        0x3f3 -> :sswitch_0
        0x3f4 -> :sswitch_1
        0x3f5 -> :sswitch_2
        0x3f6 -> :sswitch_3
        0x3fb -> :sswitch_4
        0x3fd -> :sswitch_6
        0x3fe -> :sswitch_5
        0x3ff -> :sswitch_7
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1071
    const/4 v0, 0x1

    .line 1073
    .local v0, "result":Z
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v1, p1, v4, p4, p2}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IIILjava/lang/Object;)Z

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1104
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1076
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    .line 1077
    :pswitch_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v5

    :goto_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_2

    .line 1078
    :pswitch_3
    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mBufferPercent:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    move v1, v5

    :goto_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_3

    .line 1079
    :pswitch_4
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v1, :cond_6

    move v1, v5

    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_4

    .line 1082
    :pswitch_5
    const/16 v1, 0x12

    if-ne v1, p1, :cond_7

    move v1, v5

    :goto_5
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->pauseForSeek(Z)V

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_5

    .line 1084
    :pswitch_6
    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1085
    :pswitch_7
    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mBufferPercent:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1086
    :pswitch_8
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v5

    :goto_6
    aput v3, v1, v2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_6

    .line 1088
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>(Ljava/util/Collection;)V

    goto :goto_7

    .line 1089
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 1090
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    goto/16 :goto_0

    .line 1091
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSetVolume(F)V

    goto/16 :goto_0

    .line 1092
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSetVolumeByKeycode(I)V

    goto/16 :goto_0

    .line 1093
    :pswitch_e
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 1095
    :pswitch_f
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    :pswitch_10
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :pswitch_11
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1098
    :pswitch_12
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :pswitch_13
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1100
    :pswitch_14
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1101
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->setStreamIsNew(J)V

    goto/16 :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public intent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "inAction"    # Ljava/lang/String;

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.clearchannel.iheartradio.player"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1129
    const-string v0, "player"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer$1;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;)V

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    const-wide/16 v9, 0x1

    const/16 v8, 0x4b

    const/4 v7, 0x0

    .line 860
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 861
    .local v0, "now":J
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    if-eqz v2, :cond_0

    .line 862
    if-ge p2, v8, :cond_2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    const-string v3, "buffering"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    .line 864
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    .line 865
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    .line 866
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v3, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const-string v4, "buffering"

    invoke-virtual {v2, v3, v4, v7}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 893
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v2, :cond_1

    iput p2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mBufferPercent:I

    if-ge p2, v8, :cond_6

    const-string v2, "buffering"

    :goto_1
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 895
    :cond_1
    return-void

    .line 868
    :cond_2
    if-lt p2, v8, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    const-string v3, "buffering"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamIsNew:Z

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 872
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 871
    iput v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamPlayDelay:I

    .line 873
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-boolean v7, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamIsNew:Z

    .line 875
    :cond_3
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_4

    .line 877
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    .line 878
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    .line 880
    :cond_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingDuration:J

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingDuration:J

    .line 881
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 882
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_5

    .line 883
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    .line 886
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentBufferTime:J

    .line 888
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v3, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const-string v4, "playing"

    invoke-virtual {v2, v3, v4, v7}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 893
    :cond_6
    const-string v2, "buffered"

    goto/16 :goto_1
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "inState"    # I
    .param p2, "inPhoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 832
    :pswitch_0
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    .line 833
    :cond_1
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->pause(Z)V

    .line 835
    :cond_2
    iput v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    goto :goto_0

    .line 839
    :pswitch_1
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    if-nez v0, :cond_0

    .line 840
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_3

    .line 841
    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    .line 842
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    .line 845
    :cond_3
    const/4 v0, 0x4

    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    :cond_4
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->pause(Z)V

    .line 847
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 849
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 851
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x7

    .line 900
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    .line 901
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    goto :goto_0
.end method

.method public onCreate(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 2
    .param p1, "inService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 805
    const-string v0, "player_volume"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    .line 807
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 808
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 810
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 811
    return-void
.end method

.method public onDestroy(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 7
    .param p1, "inService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 815
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 817
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 819
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 821
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamPlayDelay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 825
    return-void

    .line 817
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 907
    const-string v0, "PLAYER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError : mOpenAttemptCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    .line 910
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    .line 911
    const-string v0, "PLAYER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError : mOpenAttemptCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    if-ge v0, v5, :cond_2

    move v0, v4

    :goto_0
    invoke-virtual {p0, v6, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 915
    :cond_0
    const-string v0, "onError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "will display failed,mOpenAttemptCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/LogUtil;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    if-lt v0, v5, :cond_1

    .line 917
    invoke-virtual {p0, v6, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 918
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 919
    const-string v0, "connectionfailed"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 920
    iput v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    .line 922
    :cond_1
    return v4

    :cond_2
    move v0, v3

    .line 913
    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 942
    const-string v0, "PLAYER"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_2

    .line 944
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_3

    .line 946
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 947
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Traffic"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 958
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 960
    :cond_2
    return-void

    .line 954
    :cond_3
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 955
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->cease()V

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 930
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v1, :cond_0

    .line 931
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 933
    .local v0, "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "duration"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v1, "position"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v1, "paused"

    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v2, "player"

    invoke-virtual {v1, v2, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 939
    .end local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_0
    return-void

    .line 935
    .restart local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onSetVolume(F)V
    .locals 4
    .param p1, "inVolume"    # F

    .prologue
    .line 753
    iput p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    .line 755
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "player_volume"

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 761
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "volume"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "volume"

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    :cond_1
    return-void
.end method

.method public onSetVolumeByKeycode(I)V
    .locals 5
    .param p1, "inKeycode"    # I

    .prologue
    const/high16 v3, 0x3d800000    # 0.0625f

    const/4 v2, 0x0

    .line 766
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    .line 768
    .local v0, "volume":F
    const/16 v1, 0x5b

    if-ne v1, p1, :cond_2

    .line 769
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 770
    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolumeUnmuted:F

    .line 771
    iput v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    .line 776
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 778
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v2, "volume"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "volume"

    iget v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 801
    :cond_0
    :goto_1
    return-void

    .line 773
    :cond_1
    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolumeUnmuted:F

    iput v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mVolume:F

    goto :goto_0

    .line 784
    :cond_2
    const/16 v1, 0x18

    if-ne v1, p1, :cond_4

    .line 785
    add-float/2addr v0, v3

    .line 786
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 799
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->onSetVolume(F)V

    goto :goto_1

    .line 791
    :cond_4
    sub-float/2addr v0, v3

    .line 792
    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public pause(Z)V
    .locals 2
    .param p1, "inPause"    # Z

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v0, :cond_2

    .line 428
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    .line 441
    :cond_0
    :goto_1
    return-void

    .line 428
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 433
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 436
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 437
    const-string v0, "PLAYER"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method public pauseForSeek(Z)V
    .locals 2
    .param p1, "inPause"    # Z

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 1011
    if-eqz p1, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayPaused:Z

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayPaused:Z

    if-eqz v0, :cond_0

    .line 1015
    const-string v0, "PLAYER"

    const-string v1, "pauseForSeek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1017
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayPaused:Z

    goto :goto_0
.end method

.method public play(Z)V
    .locals 6
    .param p1, "inPlay"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    iput v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPhoneStatePaused:I

    .line 355
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    .line 360
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 361
    const-string v0, "PLAYER"

    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-ge v0, v5, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 365
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->begin(Ljava/lang/String;Z)V

    .line 421
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v1, :cond_b

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->noticeStreaming(Z)V

    .line 422
    :cond_2
    return-void

    .line 368
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    if-nez p1, :cond_1

    .line 375
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 376
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 380
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-eqz v0, :cond_5

    .line 381
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->cease()V

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 386
    :cond_6
    if-eqz p1, :cond_1

    .line 387
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    .line 388
    const-string v0, "BUG3958"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "testStates: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    goto :goto_0

    .line 390
    :cond_7
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-ge v0, v3, :cond_8

    .line 391
    const-string v0, "PLAYER"

    const-string v1, "already opening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 393
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 394
    :cond_8
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    if-nez v0, :cond_9

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 397
    const-string v0, "PLAYER"

    const-string v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 399
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 401
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 405
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 407
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->cease()V

    .line 408
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 410
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v0, :cond_a

    .line 411
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->begin(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 413
    :cond_a
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_b
    move v1, v4

    .line 421
    goto/16 :goto_1
.end method

.method public playArchive(Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)V
    .locals 9
    .param p1, "inChannel"    # Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .param p2, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 586
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 588
    .local v1, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const/4 v3, 0x0

    .line 590
    .local v3, "what":I
    if-nez p2, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 592
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    .line 594
    const/4 v3, 0x1

    .line 595
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 597
    .local v2, "url":Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v4, "track"

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :goto_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mSite:Ljava/lang/String;

    .line 619
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    .line 621
    iput-object v8, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 623
    if-ne v6, v3, :cond_2

    move v4, v6

    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStreamURL(Ljava/lang/String;Z)V

    .line 624
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v5, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->PLAY:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 627
    return-void

    .line 600
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v4, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    .line 602
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    invoke-virtual {p1, p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getStationForItem(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 603
    iput-object v8, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    .line 605
    const/4 v3, 0x2

    .line 606
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 610
    .restart local v2    # "url":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    :cond_1
    const-string v4, "track"

    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v4, "artist"

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    :cond_2
    move v4, v7

    .line 623
    goto :goto_1
.end method

.method protected playStation(Ljava/lang/String;)V
    .locals 1
    .param p1, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->stationByLetters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStation(Ljava/util/List;)V

    .line 583
    :cond_0
    return-void
.end method

.method protected playStation(Ljava/util/List;)V
    .locals 14
    .param p1, "inStation"    # Ljava/util/List;

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 469
    if-nez p1, :cond_2

    move-object v10, v6

    .line 470
    .local v10, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :goto_0
    const/4 v9, 0x0

    .line 471
    .local v9, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const/4 v11, 0x0

    .line 472
    .local v11, "url":Ljava/lang/String;
    const/4 v12, 0x0

    .line 474
    .local v12, "what":I
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v12, 0x0

    .line 478
    :cond_1
    :goto_1
    if-nez v12, :cond_5

    .line 479
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 578
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;
    :goto_2
    return-void

    .line 469
    .end local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v10    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "what":I
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;
    :cond_2
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v1, p1}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>(Ljava/util/Collection;)V

    move-object v10, v1

    goto :goto_0

    .line 475
    .restart local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v10    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .restart local v11    # "url":Ljava/lang/String;
    .restart local v12    # "what":I
    :cond_3
    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->isStream()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    .line 476
    :cond_4
    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v12, 0x2

    goto :goto_1

    .line 483
    :cond_5
    if-lez v12, :cond_6

    .line 484
    iput-object v10, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 485
    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    .line 488
    if-le v12, v4, :cond_a

    .line 490
    iput-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 491
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "url":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 492
    .restart local v11    # "url":Ljava/lang/String;
    new-instance v9, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 493
    .restart local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "artist"

    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "track"

    const/4 v2, 0x7

    invoke-virtual {v10, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "lyricsId"

    const/4 v2, 0x6

    invoke-virtual {v10, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_6
    :goto_3
    if-eq v13, v12, :cond_7

    .line 513
    if-eqz v11, :cond_c

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&callLetters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v13}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 528
    :cond_7
    :goto_4
    iput-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMediaVault:Ljava/lang/String;

    .line 530
    sget-boolean v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v1, :cond_d

    .line 531
    invoke-virtual {p0, v11, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStreamURL(Ljava/lang/String;Z)V

    .line 539
    :goto_5
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFirstStation:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFirstStation:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 540
    :cond_8
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    iput-object v2, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFirstStation:Ljava/lang/String;

    .line 542
    :cond_9
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 543
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v2, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :goto_6
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATION_SELECT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V

    .line 549
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->PLAY:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 551
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStation(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_7
    if-eqz v9, :cond_10

    .line 558
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 560
    .local v0, "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_1
    const-string v1, "artist"

    invoke-virtual {v9, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "track"

    invoke-virtual {v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->addRecentStation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 566
    :goto_8
    invoke-virtual {p0, v9}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto/16 :goto_2

    .line 500
    .end local v0    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :cond_a
    sget-boolean v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v1, :cond_b

    .line 502
    invoke-virtual {v10, v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->getBaseStreamURL(Z)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 506
    :cond_b
    invoke-virtual {v10, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getBaseStreamURL(Z)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 518
    :cond_c
    iput-object v10, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 519
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "url":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 520
    .restart local v11    # "url":Ljava/lang/String;
    new-instance v9, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 521
    .restart local v9    # "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "stationid"

    invoke-virtual {v10, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "artist"

    const/4 v2, 0x7

    invoke-virtual {v10, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "track"

    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 534
    :cond_d
    if-ne v4, v12, :cond_e

    move v1, v4

    :goto_9
    invoke-virtual {p0, v11, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStreamURL(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_e
    move v1, v3

    goto :goto_9

    .line 545
    :cond_f
    :try_start_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 553
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 554
    .local v8, "err":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 561
    .end local v8    # "err":Ljava/lang/Exception;
    .restart local v0    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 562
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_8

    .line 563
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 564
    .local v7, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_8

    .line 569
    .end local v0    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v7    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :cond_10
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 571
    .restart local v0    # "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_3
    const-string v1, ""

    const-string v2, ""

    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->addRecentStation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_2

    .line 572
    :catch_3
    move-exception v1

    move-object v7, v1

    .line 573
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 574
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v1

    move-object v7, v1

    .line 575
    .local v7, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected playStreamURL(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inStream"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    if-nez p1, :cond_1

    .line 445
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 451
    :cond_2
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 455
    iput-boolean p2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    .line 456
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->cease()V

    .line 460
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_4

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 464
    :cond_4
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->play(Z)V

    goto :goto_0
.end method

.method protected resolveRedirects(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 220
    .local v0, "done":Z
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 221
    .local v1, "redirecter":Ljava/net/HttpURLConnection;
    sget v2, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 222
    sget v2, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 223
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    const/16 v2, 0x12d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 226
    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 232
    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 234
    :cond_1
    return-object p1

    .line 228
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public rtspClosed(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rtsp"    # Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
    .param p2, "err"    # Ljava/lang/Exception;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 964
    :cond_0
    return-void
.end method

.method public rtspMetadata(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 10
    .param p1, "rtsp"    # Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
    .param p2, "metadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 967
    const/4 v3, 0x0

    .line 969
    .local v3, "equal":Z
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mRTSP:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    if-eq p1, v6, :cond_2

    .line 970
    const/4 v3, 0x1

    .line 987
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 988
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 990
    :cond_1
    return-void

    .line 971
    :cond_2
    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v6, :cond_5

    .line 972
    :cond_3
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-ne p2, v6, :cond_4

    move v3, v9

    :goto_1
    goto :goto_0

    :cond_4
    move v3, v8

    goto :goto_1

    .line 974
    :cond_5
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "track"

    aput-object v6, v5, v8

    const-string v6, "artist"

    aput-object v6, v5, v9

    .line 975
    .local v5, "keys":[Ljava/lang/String;
    array-length v2, v5

    .line 978
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v2, :cond_0

    .line 979
    aget-object v6, v5, v4

    invoke-virtual {p2, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 980
    .local v0, "a":Ljava/lang/Object;
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 982
    .local v1, "b":Ljava/lang/Object;
    if-eqz v0, :cond_6

    if-nez v1, :cond_8

    :cond_6
    if-ne v0, v1, :cond_7

    move v3, v9

    .line 983
    :goto_3
    if-eqz v3, :cond_0

    .line 978
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v3, v8

    .line 982
    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v3, v6

    goto :goto_3
.end method

.method public rtspThroughput(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/lang/String;)V
    .locals 1
    .param p1, "rtsp"    # Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateThroughput(Ljava/lang/String;Z)V

    .line 994
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 997
    const-string v0, "IHRMediaPlayer"

    .line 999
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreaming:Z

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->begin(Ljava/lang/String;Z)V

    .line 1007
    return-void
.end method

.method public setStreamIsNew(J)V
    .locals 9
    .param p1, "inStartTime"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamIsNew:Z

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    sub-int/2addr v3, v8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 1116
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-wide v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 1118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v2, ""

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamPlayDelay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-boolean v8, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamIsNew:Z

    .line 1122
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput-wide p1, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamStartTime:J

    .line 1123
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput v7, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    .line 1124
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferDuration:J

    .line 1125
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iput v7, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamPlayDelay:I

    .line 1126
    return-void

    .line 1114
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStreamRebufferCount:I

    goto :goto_0
.end method

.method public setmOpenAttemptCount(I)V
    .locals 0
    .param p1, "mOpenAttemptCount"    # I

    .prologue
    .line 1338
    iput p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    .line 1339
    return-void
.end method

.method public updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 4
    .param p1, "inMetadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateNotification(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 655
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 657
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v1, "stationid"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v1, "callletters"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStation:Lcom/clearchannel/iheartradio/model/IHRStation;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "metadata"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    :cond_1
    return-void
.end method

.method public updateNotification(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 8
    .param p1, "inMetadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 630
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    move-object v2, v4

    .line 631
    .local v2, "description":[Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_7

    move v3, v6

    .line 633
    .local v3, "lines":I
    :goto_1
    const/4 v0, 0x0

    .line 634
    .local v0, "caption":Ljava/lang/String;
    const/4 v1, 0x0

    .line 636
    .local v1, "content":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 637
    const-string v4, "track"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "caption":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 638
    .restart local v0    # "caption":Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "content":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 641
    .restart local v1    # "content":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-lez v3, :cond_8

    aget-object v4, v2, v6

    move-object v0, v4

    .line 642
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-le v3, v7, :cond_9

    aget-object v4, v2, v7

    move-object v1, v4

    .line 644
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v4, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->updateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_5
    return-void

    .line 630
    .end local v0    # "caption":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "description":[Ljava/lang/String;
    .end local v3    # "lines":I
    :cond_6
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mDescription:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 631
    .restart local v2    # "description":[Ljava/lang/String;
    :cond_7
    array-length v4, v2

    move v3, v4

    goto :goto_1

    .line 641
    .restart local v0    # "caption":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "lines":I
    :cond_8
    const-string v4, "iheartradio"

    move-object v0, v4

    goto :goto_2

    .line 642
    :cond_9
    const-string v4, "Now Playing"

    move-object v1, v4

    goto :goto_3
.end method

.method public updateState(I)V
    .locals 1
    .param p1, "inState"    # I

    .prologue
    .line 710
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(IZ)V

    .line 711
    return-void
.end method

.method public updateState(IZ)V
    .locals 6
    .param p1, "inState"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 697
    const-string v1, "PLAYER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 701
    :cond_0
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "opening"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "opening"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "preparing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "playing"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stopped"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "stopped"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "finished"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "stopped"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error"

    aput-object v2, v0, v1

    const-string v1, "nonetwork"

    aput-object v1, v0, v5

    .line 703
    .local v0, "status":[Ljava/lang/String;
    if-ltz p1, :cond_2

    if-gt p1, v5, :cond_2

    move v1, p1

    :goto_0
    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 706
    .end local v0    # "status":[Ljava/lang/String;
    :cond_1
    iput p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    .line 707
    return-void

    .restart local v0    # "status":[Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 703
    goto :goto_0
.end method

.method public updateStateCease(IZ)V
    .locals 4
    .param p1, "inState"    # I
    .param p2, "inRecoverable"    # Z

    .prologue
    .line 716
    const-string v0, "PLAYER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError : mOpenAttemptCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mOpenAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Recoverable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->cease()V

    .line 725
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 728
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 730
    const-string v0, "updateStateCease"

    const-string v1, "will be retry!"

    invoke-static {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/LogUtil;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const/16 v1, 0x3fb

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IJ)Z

    .line 736
    :cond_1
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "inStatus"    # Ljava/lang/String;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "instatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v0, "playing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v0, :cond_1

    .line 689
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    :cond_1
    return-void
.end method

.method public updateThroughput(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "setIgnoreRest"    # Z

    .prologue
    const/4 v4, 0x0

    .line 739
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIgnoreThroughputMessages:Z

    if-nez v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v2, "throughput"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    :cond_0
    :try_start_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIgnoreThroughputMessages:Z

    .line 750
    :cond_1
    return-void

    .line 745
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 746
    .local v0, "e":Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mThroughput:I

    goto :goto_0
.end method

.method public wantsForeground()Z
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mStreamURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
