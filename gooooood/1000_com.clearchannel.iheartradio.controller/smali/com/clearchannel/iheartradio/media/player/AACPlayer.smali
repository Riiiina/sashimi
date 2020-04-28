.class public Lcom/clearchannel/iheartradio/media/player/AACPlayer;
.super Ljava/lang/Object;
.source "AACPlayer.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/media/player/IAACPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;,
        Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    }
.end annotation


# static fields
.field private static CONNECT_TIMEOUT:I = 0x0

.field private static final LOG:Ljava/lang/String; = "AACPlayer"

.field public static MIN_AUDIOSTEP:I

.field public static MIN_DECODESTEP:I

.field private static READ_TIMEOUT:I

.field private static THREAD_PRIORITY:I

.field private static aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

.field private static counter:I

.field private static cpuStatsEnabled:Z

.field private static ignoreMetadata:Z

.field private static instance:Ljava/lang/Integer;


# instance fields
.field private PCMFeederThread:Ljava/lang/Thread;

.field private aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

.field private atrack:Landroid/media/AudioTrack;

.field private errorHandler:Landroid/os/Handler;

.field private ihrMediaPlayer:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

.field public ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field public ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

.field private isPlaying:Z

.field private metaInt:I

.field private metaLength:I

.field private metaOffset:I

.field private nextMetadataOffset:J

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

.field private quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

.field private stopped:Z

.field private stopping:Z

.field private threadAACPlayer:Ljava/lang/Thread;

.field private total:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x0

    .line 33
    const/16 v0, 0x7530

    sput v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->MIN_AUDIOSTEP:I

    .line 34
    const/16 v0, 0x251c

    sput v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->MIN_DECODESTEP:I

    .line 35
    const/16 v0, -0x10

    sput v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->THREAD_PRIORITY:I

    .line 36
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->cpuStatsEnabled:Z

    .line 37
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z

    .line 40
    sput v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->counter:I

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    .line 42
    sput v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->READ_TIMEOUT:I

    .line 43
    sput v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->CONNECT_TIMEOUT:I

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)V
    .locals 1
    .param p1, "ihrMediaPlayer"    # Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;
    .param p2, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;
    .param p3, "quality"    # Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    .line 49
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopping:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->errorHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrMediaPlayer:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    .line 87
    iput-object p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 88
    iget-object v0, p2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 90
    iput-object p3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 91
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->create()Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->PCMFeederThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->PCMFeederThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    return v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopping:Z

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->THREAD_PRIORITY:I

    return v0
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->connect()V

    return-void
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->errorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrMediaPlayer:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    return-object v0
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

    .line 146
    const-string v1, "AACPlayer"

    const-string v2, "Connecting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    .line 148
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 149
    .local v0, "cn":Ljava/net/URLConnection;
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z

    if-nez v1, :cond_0

    .line 150
    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    sget v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->READ_TIMEOUT:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 154
    sget v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->CONNECT_TIMEOUT:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 156
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 159
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z

    if-nez v1, :cond_1

    .line 160
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

    iput v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaInt:I

    .line 161
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->initMeta()V

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stream(Ljava/io/InputStream;)V

    .line 166
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v2, "stopped"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private dropBytes([BJJJ)Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # J
    .param p4, "startDrop"    # J
    .param p6, "endDrop"    # J

    .prologue
    .line 635
    sub-long v5, p6, p4

    long-to-int v2, v5

    .line 636
    .local v2, "lenDrop":I
    move v4, v2

    .line 637
    .local v4, "offset":I
    long-to-int v5, p2

    sub-int/2addr v5, v2

    const/4 v6, 0x1

    sub-int v3, v5, v6

    .line 643
    .local v3, "length":I
    long-to-int v1, p4

    .local v1, "i":I
    :goto_0
    if-le v1, v3, :cond_0

    .line 654
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;)V

    .line 655
    .local v0, "b":Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    iput-object p1, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;->data:[B

    .line 656
    iput v3, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;->size:I

    .line 658
    return-object v0

    .line 647
    .end local v0    # "b":Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    :cond_0
    add-int v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 648
    add-int v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    aput-byte v5, p1, v1

    .line 643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dropMetadata([BI)Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    .locals 24
    .param p1, "buffer"    # [B
    .param p2, "bufferContentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->total:J

    move-wide v5, v0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v7, v0

    add-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->total:J

    .line 579
    const/16 v19, 0x0

    .line 582
    .local v19, "b":Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 583
    const/16 v20, 0x0

    .line 584
    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->total:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 629
    .end local v20    # "i":I
    :cond_0
    return-object v19

    .line 585
    .restart local v20    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->total:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    move-wide v7, v0

    sub-long v22, v5, v7

    .line 586
    .local v22, "offset":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v5, v0

    sub-long v9, v5, v22

    .line 588
    .local v9, "byteOffset":J
    long-to-int v5, v9

    aget-byte v5, p1, v5

    mul-int/lit8 v5, v5, 0x10

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v5, v0

    if-nez v5, :cond_2

    .line 592
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v7, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide v11, v9

    invoke-direct/range {v5 .. v12}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->dropBytes([BJJJ)Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;

    move-result-object v19

    .line 595
    add-int/lit8 p2, p2, -0x1

    .line 597
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaInt:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    add-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    .line 625
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 604
    :cond_2
    long-to-int v5, v9

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    .line 606
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaInt:I

    move v8, v0

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    add-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    move v5, v0

    sub-int v5, p2, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    .line 616
    :cond_3
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v7, v0

    const-string v8, "ISO-88591"

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->checkForMetadata(Ljava/lang/String;)I

    .line 619
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v6, v0

    add-int v21, v5, v6

    .line 620
    .local v21, "metaEnd":I
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-long v15, v5

    const/4 v5, 0x1

    sub-int v5, v21, v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v18}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->dropBytes([BJJJ)Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;

    move-result-object v19

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    sub-int p2, p2, v5

    goto/16 :goto_1
.end method

.method public static getAACPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)Lcom/clearchannel/iheartradio/media/player/IAACPlayer;
    .locals 1
    .param p0, "ihrMediaPlayer"    # Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;
    .param p1, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;
    .param p2, "quality"    # Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .prologue
    .line 73
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    .line 80
    :goto_0
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0, p1}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->setIhrService(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    .line 77
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0, p0}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->setIHRMediaPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V

    goto :goto_0
.end method

.method private initMeta()V
    .locals 2

    .prologue
    .line 568
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaOffset:I

    .line 569
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->nextMetadataOffset:J

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->metaLength:I

    .line 571
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->total:J

    .line 572
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
    .line 673
    const/4 v0, 0x0

    .line 676
    .local v0, "done":Z
    const/4 v6, 0x0

    .line 677
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

    .line 678
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

    .line 679
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

    .line 681
    .local v5, "keys":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "n":I
    move v2, v7

    .line 683
    .local v2, "i":I
    if-nez v0, :cond_0

    .line 684
    const-string v9, "StreamTitle="

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 688
    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_1

    .line 689
    const/4 v0, 0x1

    .line 690
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_2

    .line 691
    const/4 v0, 0x1

    .line 692
    :cond_2
    if-nez v0, :cond_9

    .line 696
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 698
    .local v1, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v9, "-"

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .local v3, "j":I
    if-gez v3, :cond_3

    .line 699
    move v3, v7

    .line 701
    :cond_3
    const-string v9, "artist"

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const/4 v4, 0x0

    .local v4, "k":I
    array-length v8, v5

    .local v8, "o":I
    :goto_0
    if-lt v4, v8, :cond_a

    .line 721
    const-string v9, "URL"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 722
    const-string v9, "lyricsURL"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_4
    const-string v9, "text"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 728
    const-string v9, "track"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_5
    :goto_1
    const-string v9, "iscommercial"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v9, "song_spot"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 736
    const-string v9, "M"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 737
    const-string v9, "track"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 739
    :cond_6
    const-string v9, "iscommercial"

    const-string v10, "1"

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v9, "artist"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v9, "track"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v9, "lyricsURL"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_7
    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    if-eqz v9, :cond_8

    .line 747
    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v9, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 750
    :cond_8
    const-string v9, "AACPlayer"

    const-string v10, "Metadata updated."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v1    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v8    # "o":I
    :cond_9
    return v6

    .line 704
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

    .line 705
    aget-object v9, v5, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    if-ne v2, v7, :cond_c

    .line 703
    :cond_b
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 708
    :cond_c
    const-string v9, "\""

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_d

    .line 709
    move v3, v7

    .line 711
    :cond_d
    if-le v3, v2, :cond_e

    .line 712
    aget-object v9, v5, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_e
    const-string v9, "\""

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_b

    .line 716
    move v3, v7

    goto :goto_2

    .line 729
    :cond_f
    const-string v9, "Title"

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "string":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 730
    const-string v9, "text"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 731
    const-string v9, "track"

    invoke-virtual {v1, v9, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    return v0
.end method

.method public play(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    monitor-enter v0

    .line 99
    :try_start_0
    const-string v1, "AACPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->counter:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->counter:I

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

    .line 100
    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    monitor-exit v0

    .line 141
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    .line 103
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->url:Ljava/lang/String;

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    .line 106
    const-string v1, "AACPlayer"

    const-string v2, "Ready to play."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
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

    .line 110
    const/4 v1, 0x1

    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z

    .line 115
    :goto_1
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->cpuStatsEnabled:Z

    if-eqz v1, :cond_1

    .line 116
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->startLog(J)V

    .line 118
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->threadAACPlayer:Ljava/lang/Thread;

    .line 137
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->threadAACPlayer:Ljava/lang/Thread;

    const-string v2, "AACPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->threadAACPlayer:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 112
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setIHRMediaPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V
    .locals 0
    .param p1, "ihrMediaPlayer"    # Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrMediaPlayer:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    .line 759
    return-void
.end method

.method public setIhrService(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 1
    .param p1, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 404
    iget-object v0, p1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    .line 406
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 764
    return-void
.end method

.method public setStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    .line 668
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    .line 345
    sget-object v3, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    monitor-enter v3

    .line 347
    :try_start_0
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stop - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->counter:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->counter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 350
    .local v1, "start":J
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 352
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    .line 353
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopping:Z

    .line 354
    const-string v4, "AACPlayer"

    const-string v5, "stopping..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->threadAACPlayer:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 357
    const-string v4, "AACPlayer"

    const-string v5, "Waiting for aacplayerthread to finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->threadAACPlayer:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_4

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->PCMFeederThread:Ljava/lang/Thread;

    if-eqz v4, :cond_2

    .line 373
    const-string v4, "AACPlayer"

    const-string v5, "Waiting for feeder to finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->PCMFeederThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 385
    :cond_2
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stopped in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateMetadata(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 387
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->url:Ljava/lang/String;

    .line 388
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->instance:Ljava/lang/Integer;

    .line 389
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopping:Z

    .line 391
    sget-boolean v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->cpuStatsEnabled:Z

    if-eqz v4, :cond_3

    .line 392
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopLog()V

    .line 345
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    return-void

    .line 360
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->stop()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 364
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v4, "AACPlayer"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 377
    .restart local v1    # "start":J
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 379
    :catch_1
    move-exception v4

    goto :goto_1

    .line 366
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public stream(Ljava/io/InputStream;)V
    .locals 45
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v4, v0

    if-nez v4, :cond_0

    sget-object v4, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->HIGH_128:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v4, v0

    iget v4, v4, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->minHeaderBytes:I

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 177
    .local v16, "buf":[B
    const/16 v32, 0x0

    .line 178
    .local v32, "n":I
    const/16 v42, 0x0

    .line 179
    .local v42, "total":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->minHeaderBytes:I

    move/from16 v31, v0

    .line 181
    .local v31, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    move-object v4, v0

    const-string v5, "buffering"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 184
    .local v40, "startDl":J
    :goto_0
    move/from16 v0, v42

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v40

    long-to-double v9, v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v28, v9, v11

    .line 197
    .local v28, "elapsedTime":D
    move/from16 v0, v42

    int-to-double v0, v0

    move-wide v9, v0

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double v21, v9, v11

    .line 198
    .local v21, "data":D
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buffered "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-double v9, v21, v28

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kb/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    .line 201
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    .line 204
    const-wide/16 v35, 0x0

    .line 205
    .local v35, "profMs":J
    const-wide/16 v23, 0x0

    .line 206
    .local v23, "dropMs":J
    const/16 v34, 0x0

    .line 209
    .local v34, "profCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v16

    move v2, v5

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->start([BII)Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;

    move-result-object v30

    .line 211
    .local v30, "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "play(): samplerate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", channels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    .line 214
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too many channels detected: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v30    # "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    :catchall_0
    move-exception v4

    move-object/from16 v5, v16

    .line 329
    .end local v16    # "buf":[B
    .local v5, "buf":[B
    :goto_1
    if-lez v34, :cond_1

    .line 330
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v9, v0

    div-long v11, v35, v9

    .line 331
    .local v11, "avgDec":J
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v9, v0

    div-long v13, v23, v9

    .line 332
    .local v13, "avgDrop":J
    const-string v5, "AACPlayer"

    .end local v5    # "buf":[B
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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v5, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stream(): total time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v9, v11, v13

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v11    # "avgDec":J
    .end local v13    # "avgDrop":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->stop()V

    .line 337
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 339
    const-string v5, "AACPlayer"

    const-string v6, "aacthread stopped."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    throw v4

    .line 187
    .end local v21    # "data":D
    .end local v23    # "dropMs":J
    .end local v28    # "elapsedTime":D
    .end local v34    # "profCount":I
    .end local v35    # "profMs":J
    .restart local v16    # "buf":[B
    :cond_2
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v42

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v42

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v32

    .line 189
    const/4 v4, -0x1

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 190
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Error reading stream..."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_3
    add-int v42, v42, v32

    .line 193
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buffering... "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .restart local v21    # "data":D
    .restart local v23    # "dropMs":J
    .restart local v28    # "elapsedTime":D
    .restart local v30    # "info":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    .restart local v34    # "profCount":I
    .restart local v35    # "profMs":J
    :cond_4
    :try_start_1
    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v4

    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    move v0, v4

    new-array v0, v0, [S

    move-object/from16 v37, v0

    .line 218
    .local v37, "samples":[S
    const/4 v4, 0x3

    move v0, v4

    new-array v0, v0, [[S

    move-object/from16 v38, v0

    .line 219
    .local v38, "samplespool":[[S
    const/4 v4, 0x0

    aput-object v37, v38, v4

    .line 220
    const/4 v4, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    new-array v5, v5, [S

    aput-object v5, v38, v4

    .line 221
    const/4 v4, 0x2

    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    new-array v5, v5, [S

    aput-object v5, v38, v4

    .line 222
    const/16 v39, 0x0

    .line 224
    .local v39, "samplespoolindex":I
    new-instance v4, Landroid/media/AudioTrack;

    .line 225
    const/4 v5, 0x3

    .line 226
    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getSamplerate()I

    move-result v6

    .line 227
    invoke-virtual/range {v30 .. v30}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->getChannels()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x2

    .line 229
    :goto_2
    const/4 v8, 0x2

    move-object/from16 v0, v37

    array-length v0, v0

    move v9, v0

    .line 230
    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 224
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->quality:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->minStepBytes:I

    move/from16 v31, v0

    .line 234
    new-instance v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Landroid/media/AudioTrack;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->atrack:Landroid/media/AudioTrack;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, v37

    .end local v37    # "samples":[S
    .local v8, "samples":[S
    move-object/from16 v5, v16

    .line 241
    .end local v16    # "buf":[B
    .restart local v5    # "buf":[B
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    move v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_9

    .line 329
    :cond_6
    :goto_3
    if-lez v34, :cond_7

    .line 330
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v9, v0

    div-long v11, v35, v9

    .line 331
    .restart local v11    # "avgDec":J
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v9, v0

    div-long v13, v23, v9

    .line 332
    .restart local v13    # "avgDrop":J
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "buf":[B
    const-string v6, "stream(): average dropping time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v4, "AACPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stream(): total time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v9, v11, v13

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v11    # "avgDec":J
    .end local v13    # "avgDrop":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->stop()V

    .line 337
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->isPlaying:Z

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 339
    const-string v4, "AACPlayer"

    const-string v5, "aacthread stopped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 228
    .end local v8    # "samples":[S
    .restart local v16    # "buf":[B
    .restart local v37    # "samples":[S
    :cond_8
    const/4 v7, 0x3

    goto/16 :goto_2

    .line 244
    .end local v16    # "buf":[B
    .end local v37    # "samples":[S
    .restart local v5    # "buf":[B
    .restart local v8    # "samples":[S
    :cond_9
    move/from16 v27, v42

    .line 246
    .local v27, "droppedTotal":I
    :try_start_3
    sget-boolean v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ignoreMetadata:Z

    if-nez v4, :cond_b

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 248
    .local v25, "dropStart":J
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->dropMetadata([BI)Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;

    move-result-object v15

    .line 250
    .local v15, "b":Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    if-eqz v15, :cond_a

    .line 251
    iget-object v5, v15, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;->data:[B

    .line 252
    move-object v0, v15

    iget v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;->size:I

    move/from16 v27, v0

    .line 254
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v25

    add-long v23, v23, v9

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    move v4, v0

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopping:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 258
    const-string v4, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Decoding "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes instead of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v15    # "b":Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
    .end local v25    # "dropStart":J
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 263
    .local v43, "tsStart":J
    const/16 v33, 0x0

    .line 264
    .local v33, "nsamp":I
    const/4 v6, 0x0

    .line 266
    .local v6, "decoded":I
    sget v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->MIN_DECODESTEP:I

    move/from16 v0, v27

    move v1, v4

    if-le v0, v1, :cond_e

    sget v4, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->MIN_DECODESTEP:I

    move v7, v4

    .line 268
    .local v7, "decodeStep":I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    move v4, v0

    if-nez v4, :cond_c

    move v0, v6

    move/from16 v1, v27

    if-lt v0, v1, :cond_f

    .line 287
    :cond_c
    const-string v4, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "decoded":I
    const-string v7, "play(): decoded and feeded "

    .end local v7    # "decodeStep":I
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " samples in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v43

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 303
    const/16 v42, 0x0

    .line 304
    :cond_d
    move/from16 v0, v42

    move/from16 v1, v31

    if-lt v0, v1, :cond_12

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v40

    long-to-double v9, v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v28, v9, v11

    .line 321
    move/from16 v0, v42

    int-to-double v0, v0

    move-wide v9, v0

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v21, v9, v11

    .line 322
    const-string v4, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Buffered "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-double v9, v21, v28

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " kb/s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v4, "AACPlayer"

    const-string v6, "stream(): yield, sleeping..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 327
    const/4 v4, -0x1

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->stopped:Z

    move v4, v0

    .line 240
    if-eqz v4, :cond_5

    goto/16 :goto_3

    .restart local v6    # "decoded":I
    :cond_e
    move/from16 v7, v27

    .line 266
    goto/16 :goto_4

    .line 270
    .restart local v7    # "decodeStep":I
    :cond_f
    add-int v4, v6, v7

    move v0, v4

    move/from16 v1, v27

    if-le v0, v1, :cond_11

    .line 271
    sub-int v7, v27, v6

    .line 276
    :cond_10
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 277
    .local v17, "dStepStart":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->aacd:Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    move-object v4, v0

    array-length v9, v8

    invoke-virtual/range {v4 .. v9}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->decode([BII[SI)I

    move-result v33

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v19, v9, v17

    .line 279
    .local v19, "dStepTime":J
    const-string v4, "AACPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Decoded "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide v10, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "s ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-double v10, v7

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide v12, v0

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " kbytes/s]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->pcmfeed:Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->feed([SI)V

    .line 283
    add-int/lit8 v39, v39, 0x1

    rem-int/lit8 v4, v39, 0x3

    aget-object v8, v38, v4

    .line 285
    add-int/2addr v6, v7

    goto/16 :goto_4

    .line 272
    .end local v17    # "dStepStart":J
    .end local v19    # "dStepTime":J
    :cond_11
    add-int v4, v6, v7

    sub-int v4, v27, v4

    sget v9, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->MIN_DECODESTEP:I

    if-ge v4, v9, :cond_10

    .line 273
    sub-int v7, v27, v6

    goto/16 :goto_5

    .line 307
    .end local v6    # "decoded":I
    .end local v7    # "decodeStep":I
    :cond_12
    array-length v4, v5

    sub-int v4, v4, v42

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v42

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v32

    .line 310
    add-int v42, v42, v32

    .line 311
    const-string v4, "AACPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Buffering... "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    const-string v7, " (min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v4, -0x1

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_d

    .line 316
    new-instance v4, Ljava/lang/Exception;

    const-string v6, "Error reading stream..."

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    .end local v27    # "droppedTotal":I
    .end local v33    # "nsamp":I
    .end local v43    # "tsStart":J
    :catchall_1
    move-exception v4

    goto/16 :goto_1
.end method
