.class public Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;
.super Ljava/lang/Object;
.source "AACPlayerStreamDrop.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/media/player/IAACPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "AACPlayer"

.field private static THREAD_PRIORITY:I

.field private static aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

.field private static counter:I

.field private static cpuStatsEnabled:Z

.field private static ignoreMetadata:Z

.field private static instance:Ljava/lang/Integer;

.field private static nbRetryAttempt:I

.field private static nbRetryOnError:I


# instance fields
.field private PCMFeederThread:Ljava/lang/Thread;

.field private aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

.field private atrack:Landroid/media/AudioTrack;

.field private errorHandler:Landroid/os/Handler;

.field public ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field public ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

.field private is:Ljava/io/InputStream;

.field private isPlaying:Z

.field private metaInt:I

.field private metaLen:I

.field private pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

.field private quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

.field private samples:[S

.field private samplespool:[[S

.field private samplespoolindex:I

.field private stopped:Z

.field private stopping:Z

.field private threadAACPlayer:Ljava/lang/Thread;

.field private total:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/16 v0, -0x10

    sput v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->THREAD_PRIORITY:I

    .line 32
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->cpuStatsEnabled:Z

    .line 33
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ignoreMetadata:Z

    .line 34
    const/4 v0, 0x3

    sput v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryOnError:I

    .line 35
    sput v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryAttempt:I

    .line 37
    sput v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->counter:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)V
    .locals 1
    .param p1, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;
    .param p2, "quality"    # Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    .line 43
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopping:Z

    .line 66
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->errorHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 103
    iput-object p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 104
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->create()Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    .line 105
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryAttempt:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 35
    sput p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryAttempt:I

    return-void
.end method

.method static synthetic access$10(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->errorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryOnError:I

    return v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->PCMFeederThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->PCMFeederThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    return v0
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    return-void
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopping:Z

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->THREAD_PRIORITY:I

    return v0
.end method

.method static synthetic access$9(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->connect()V

    return-void
.end method

.method private checkAndPlay([BI)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "bufferContentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 505
    iget-wide v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->total:J

    int-to-long v8, p2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->total:J

    .line 506
    const/4 v5, 0x0

    .line 507
    .local v5, "start":I
    move v1, p2

    .line 509
    .local v1, "count":I
    iget-wide v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->total:J

    iget v8, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 510
    const/4 v6, 0x1

    sub-int v1, p2, v6

    .line 511
    aget-byte v6, p1, v1

    mul-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    .line 512
    const-string v6, "AACPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "metaLen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->total:J

    .line 516
    iget v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    if-lez v6, :cond_0

    .line 517
    iget v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    new-array v3, v6, [B

    .line 519
    .local v3, "metaBuffer":[B
    const/4 v4, 0x0

    .line 520
    .local v4, "offset":I
    :goto_0
    iget v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    if-lt v4, v6, :cond_1

    .line 524
    new-instance v0, Ljava/lang/String;

    const-string v6, "ISO-88591"

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 525
    .local v0, "content":Ljava/lang/String;
    const-string v6, "AACPlayer"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->checkForMetadata(Ljava/lang/String;)I

    .line 530
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "metaBuffer":[B
    .end local v4    # "offset":I
    :cond_0
    invoke-direct {p0, p1, v5, v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->decodeAndFeed([BII)V

    .line 531
    return-void

    .line 521
    .restart local v3    # "metaBuffer":[B
    .restart local v4    # "offset":I
    :cond_1
    iget v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaLen:I

    sub-int v2, v6, v4

    .line 522
    .local v2, "len":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->is:Ljava/io/InputStream;

    invoke-virtual {v6, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0
.end method

.method private connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v1, "AACPlayer"

    const-string v2, "Opening connection..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    .line 155
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 156
    .local v0, "cn":Ljava/net/URLConnection;
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ignoreMetadata:Z

    if-nez v1, :cond_0

    .line 157
    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    const-string v1, "AACPlayer"

    const-string v2, "Connecting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 161
    const-string v1, "AACPlayer"

    const-string v2, "Connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v2, "icy-metaint"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    .line 165
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->initMeta()V

    .line 167
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->is:Ljava/io/InputStream;

    .line 169
    const-string v1, "AACPlayer"

    const-string v2, "Starting streaming..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stream(Ljava/io/InputStream;)V

    .line 172
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v2, "stopped"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 173
    sput v3, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->nbRetryAttempt:I

    .line 175
    return-void
.end method

.method private decodeAndFeed([BII)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 576
    .local v6, "dStepStart":J
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    array-length v5, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->decode([BII[SI)I

    move-result v10

    .line 578
    .local v10, "nsamp":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v6

    .line 580
    .local v8, "dStepTime":J
    const-string v0, "AACPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v8

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v2, p3

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    long-to-double v4, v8

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .end local v6    # "dStepStart":J
    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kbytes/s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    invoke-virtual {v0, v1, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->feed([SI)V

    .line 584
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespool:[[S

    iget v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespoolindex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespoolindex:I

    rem-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    .line 586
    return-void
.end method

.method public static getAACPlayer(Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)Lcom/clearchannel/iheartradio/media/player/IAACPlayer;
    .locals 1
    .param p0, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;
    .param p1, "quality"    # Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .prologue
    .line 86
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    .line 92
    :goto_0
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0, p0}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->setIhrService(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    goto :goto_0
.end method

.method private initMeta()V
    .locals 2

    .prologue
    .line 500
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->total:J

    .line 501
    return-void
.end method


# virtual methods
.method protected checkForMetadata(Ljava/lang/String;)I
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 593
    .local v0, "done":Z
    const/4 v6, 0x0

    .line 594
    .local v6, "len":I
    const/16 v9, 0xb

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "amgArtistId"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "amgTrackId"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "cartcutId"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    .line 595
    const-string v10, "itunesTrackId"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "lyricsId"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    const-string v10, "MediaBaseId"

    aput-object v10, v5, v9

    const/4 v9, 0x6

    const-string v10, "song_spot"

    aput-object v10, v5, v9

    const/4 v9, 0x7

    .line 596
    const-string v10, "text"

    aput-object v10, v5, v9

    const/16 v9, 0x8

    const-string v10, "thumbplayId"

    aput-object v10, v5, v9

    const/16 v9, 0x9

    const-string v10, "URL"

    aput-object v10, v5, v9

    const/16 v9, 0xa

    const-string v10, "Title"

    aput-object v10, v5, v9

    .line 598
    .local v5, "keys":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "n":I
    move v2, v7

    .line 600
    .local v2, "i":I
    if-nez v0, :cond_0

    .line 601
    const-string v9, "StreamTitle="

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 605
    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_1

    .line 606
    const/4 v0, 0x1

    .line 607
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_2

    .line 608
    const/4 v0, 0x1

    .line 609
    :cond_2
    if-nez v0, :cond_9

    .line 613
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 615
    .local v1, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v9, "-"

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .local v3, "j":I
    if-gez v3, :cond_3

    .line 616
    move v3, v7

    .line 618
    :cond_3
    const-string v9, "artist"

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const/4 v4, 0x0

    .local v4, "k":I
    array-length v8, v5

    .local v8, "o":I
    :goto_0
    if-lt v4, v8, :cond_a

    .line 638
    const-string v9, "URL"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 639
    const-string v9, "lyricsURL"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_4
    const-string v9, "text"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 645
    const-string v9, "track"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_5
    :goto_1
    const-string v9, "iscommercial"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v9, "song_spot"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 653
    const-string v9, "M"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 654
    const-string v9, "track"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 656
    :cond_6
    const-string v9, "iscommercial"

    const-string v10, "1"

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v9, "artist"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v9, "track"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v9, "lyricsURL"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_7
    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    if-eqz v9, :cond_8

    .line 664
    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v9, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 667
    :cond_8
    const-string v9, "AACPlayer"

    const-string v10, "Metadata updated."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v1    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v8    # "o":I
    :cond_9
    return v6

    .line 621
    .restart local v1    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    .restart local v8    # "o":I
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v10, v5, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b

    .line 622
    aget-object v9, v5, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    if-ne v2, v7, :cond_c

    .line 620
    :cond_b
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 625
    :cond_c
    const-string v9, "\""

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_d

    .line 626
    move v3, v7

    .line 628
    :cond_d
    if-le v3, v2, :cond_e

    .line 629
    aget-object v9, v5, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_e
    const-string v9, "\""

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_b

    .line 633
    move v3, v7

    goto :goto_2

    .line 646
    :cond_f
    const-string v9, "Title"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 647
    const-string v9, "text"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 648
    const-string v9, "track"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    return v0
.end method

.method public play(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    monitor-enter v0

    .line 112
    :try_start_0
    const-string v1, "AACPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->counter:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    monitor-exit v0

    .line 148
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    .line 115
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->url:Ljava/lang/String;

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    .line 118
    const-string v1, "AACPlayer"

    const-string v2, "Ready to play."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x1

    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ignoreMetadata:Z

    .line 127
    :goto_1
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->cpuStatsEnabled:Z

    if-eqz v1, :cond_1

    .line 128
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->startLog(J)V

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->threadAACPlayer:Ljava/lang/Thread;

    .line 144
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->threadAACPlayer:Ljava/lang/Thread;

    const-string v2, "AACPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->threadAACPlayer:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 110
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ignoreMetadata:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setIHRMediaPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V
    .locals 0
    .param p1, "ihrMediaPlayer"    # Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    .prologue
    .line 681
    return-void
.end method

.method public setIhrService(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 1
    .param p1, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 360
    iget-object v0, p1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 362
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 676
    return-void
.end method

.method public setStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    .line 487
    return-void
.end method

.method public stop()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 321
    sget-object v2, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    monitor-enter v2

    .line 323
    :try_start_0
    const-string v3, "AACPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stop - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->counter:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->counter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    .local v0, "start":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 328
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    .line 329
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopping:Z

    .line 330
    const-string v3, "AACPlayer"

    const-string v4, "stopping..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->threadAACPlayer:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    move v3, v8

    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->PCMFeederThread:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    move v4, v8

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 333
    :goto_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->threadAACPlayer:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->PCMFeederThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    or-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 342
    :cond_1
    const-string v3, "AACPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopped in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 344
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->url:Ljava/lang/String;

    .line 345
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->instance:Ljava/lang/Integer;

    .line 346
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopping:Z

    .line 348
    sget-boolean v3, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->cpuStatsEnabled:Z

    if-eqz v3, :cond_2

    .line 349
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopLog()V

    .line 321
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    return-void

    :cond_3
    move v3, v7

    .line 332
    goto :goto_0

    :cond_4
    move v4, v7

    goto :goto_1

    .line 336
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 338
    :catch_0
    move-exception v3

    goto :goto_2

    .line 321
    .end local v0    # "start":J
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public stream(Ljava/io/InputStream;)V
    .locals 33
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v4, v0

    if-nez v4, :cond_0

    sget-object v4, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->HIGH_128:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v15, v4, [B

    .line 185
    .local v15, "buf":[B
    const/16 v26, 0x0

    .line 186
    .local v26, "n":I
    const/16 v32, 0x0

    .line 188
    .local v32, "total":I
    move-object v0, v15

    array-length v0, v0

    move/from16 v25, v0

    .line 190
    .local v25, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    move-object v4, v0

    const-string v5, "buffering"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 193
    .local v30, "startDl":J
    const/16 v32, 0x0

    .line 194
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v30

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v21, v4, v6

    .line 207
    .local v21, "elapsedTime":D
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v4, v0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v17, v4, v6

    .line 208
    .local v17, "data":D
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buffered "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-double v6, v17, v21

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kb/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

    .line 213
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    .line 216
    const-wide/16 v28, 0x0

    .line 217
    .local v28, "profMs":J
    const-wide/16 v19, 0x0

    .line 218
    .local v19, "dropMs":J
    const/16 v27, 0x0

    .line 221
    .local v27, "profCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object v1, v15

    move v2, v5

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->start([BII)Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;

    move-result-object v23

    .line 223
    .local v23, "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "play(): samplerate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", channels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    .line 226
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too many channels detected: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v23    # "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    :catchall_0
    move-exception v4

    .line 305
    if-lez v27, :cond_1

    .line 306
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v5, v0

    div-long v11, v28, v5

    .line 307
    .local v11, "avgDec":J
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v5, v0

    div-long v13, v19, v5

    .line 308
    .local v13, "avgDrop":J
    const-string v5, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stream(): average dropping time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v5, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stream(): average decoding time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v5, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stream(): total time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v7, v11, v13

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v11    # "avgDec":J
    .end local v13    # "avgDrop":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->stop()V

    .line 314
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    .line 315
    const-string v5, "AACPlayer"

    const-string v6, "aacthread stopped."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    throw v4

    .line 196
    .end local v17    # "data":D
    .end local v19    # "dropMs":J
    .end local v21    # "elapsedTime":D
    .end local v27    # "profCount":I
    .end local v28    # "profMs":J
    :cond_2
    sub-int v4, v25, v32

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v32

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    .line 198
    const/4 v4, -0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 199
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Error reading stream..."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_3
    add-int v32, v32, v26

    goto/16 :goto_0

    .line 229
    .restart local v17    # "data":D
    .restart local v19    # "dropMs":J
    .restart local v21    # "elapsedTime":D
    .restart local v23    # "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    .restart local v27    # "profCount":I
    .restart local v28    # "profMs":J
    :cond_4
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    new-array v4, v4, [S

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    .line 230
    const/4 v4, 0x3

    new-array v4, v4, [[S

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespool:[[S

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespool:[[S

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    move-object v6, v0

    aput-object v6, v4, v5

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespool:[[S

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    move-object v6, v0

    array-length v6, v6

    new-array v6, v6, [S

    aput-object v6, v4, v5

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespool:[[S

    move-object v4, v0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    move-object v6, v0

    array-length v6, v6

    new-array v6, v6, [S

    aput-object v6, v4, v5

    .line 234
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samplespoolindex:I

    .line 236
    new-instance v4, Landroid/media/AudioTrack;

    .line 237
    const/4 v5, 0x3

    .line 238
    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v6

    .line 239
    invoke-virtual/range {v23 .. v23}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x2

    .line 241
    :goto_1
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->samples:[S

    move-object v9, v0

    array-length v9, v9

    .line 242
    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 236
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    .line 244
    new-instance v4, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Landroid/media/AudioTrack;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->atrack:Landroid/media/AudioTrack;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    move v4, v0

    add-int/lit8 v16, v4, 0x1

    .line 253
    .local v16, "bytesBeforeMeta":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    move v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_9

    .line 305
    :cond_6
    :goto_2
    if-lez v27, :cond_7

    .line 306
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v4, v0

    div-long v11, v28, v4

    .line 307
    .restart local v11    # "avgDec":J
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v4, v0

    div-long v13, v19, v4

    .line 308
    .restart local v13    # "avgDrop":J
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stream(): average dropping time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stream(): average decoding time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stream(): total time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v6, v11, v13

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v11    # "avgDec":J
    .end local v13    # "avgDrop":J
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->stop()V

    .line 314
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->isPlaying:Z

    .line 315
    const-string v4, "AACPlayer"

    const-string v5, "aacthread stopped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 240
    .end local v16    # "bytesBeforeMeta":I
    :cond_8
    const/4 v7, 0x3

    goto/16 :goto_1

    .line 255
    .restart local v16    # "bytesBeforeMeta":I
    :cond_9
    :try_start_2
    sget-boolean v4, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ignoreMetadata:Z

    if-nez v4, :cond_b

    .line 256
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->checkAndPlay([BI)V

    .line 262
    :goto_3
    if-nez v16, :cond_c

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    move v4, v0

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v25, v4, 0x1

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    move v4, v0

    add-int/lit8 v16, v4, 0x1

    .line 273
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 275
    const/16 v24, 0x0

    .line 276
    .local v24, "len":I
    const/16 v32, 0x0

    .line 277
    :cond_a
    move/from16 v0, v32

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v30

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v21, v4, v6

    .line 296
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v17, v4, v6

    .line 297
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buffered "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-double v6, v17, v21

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kb/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "AACPlayer"

    const-string v5, "stream(): yield, sleeping... "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 302
    const/4 v4, -0x1

    move/from16 v0, v26

    move v1, v4

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->stopped:Z

    move v4, v0

    .line 251
    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 259
    .end local v24    # "len":I
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->decodeAndFeed([BII)V

    goto/16 :goto_3

    .line 266
    :cond_c
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 267
    move/from16 v25, v16

    goto/16 :goto_4

    .line 270
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->metaInt:I

    move v4, v0

    div-int/lit8 v25, v4, 0x4

    goto/16 :goto_4

    .line 279
    .restart local v24    # "len":I
    :cond_e
    move/from16 v24, v16

    .line 282
    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v32

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    .line 284
    add-int v32, v32, v26

    .line 286
    sub-int v16, v16, v26

    .line 288
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buffering "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v4, -0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_a

    .line 291
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Error reading stream..."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
