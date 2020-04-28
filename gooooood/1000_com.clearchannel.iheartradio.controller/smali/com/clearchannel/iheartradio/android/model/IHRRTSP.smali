.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.super Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;
.source "IHRRTSP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;,
        Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;,
        Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;,
        Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;,
        Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;
    }
.end annotation


# static fields
.field protected static final kDelegateNotificationTypeRTSPClosed:I = 0x0

.field protected static final kRTSPRemotePort:I = 0x22a

.field protected static sPatternClientPort:Ljava/util/regex/Pattern;

.field protected static sPatternContentLength:Ljava/util/regex/Pattern;

.field protected static sPatternInterleaved:Ljava/util/regex/Pattern;

.field protected static sPatternRTSPRequestURI:Ljava/util/regex/Pattern;

.field protected static sPatternServerPort:Ljava/util/regex/Pattern;

.field protected static sPatternSource:Ljava/util/regex/Pattern;


# instance fields
.field protected mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

.field protected mMediavault:Ljava/lang/String;

.field protected mPrepared:Z

.field protected mRTCPChannel:I

.field protected mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

.field protected mRTCPForwarderSocket:Ljava/net/DatagramSocket;

.field protected mRTCPLocalPort:I

.field protected mRTCPRemotePort:I

.field protected mRTPChannel:I

.field protected mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

.field protected mRTPForwarderSocket:Ljava/net/DatagramSocket;

.field protected mRTPLocalPort:I

.field protected mRTPRemoteHost:Ljava/lang/String;

.field protected mRTPRemotePort:I

.field protected mRTSPLocalHostPort:Ljava/lang/String;

.field protected mRTSPLocalHostPortRE:Ljava/lang/String;

.field protected mRTSPRemoteHostPort:Ljava/lang/String;

.field protected mRTSPRemoteHostPortRE:Ljava/lang/String;

.field protected mSessionCookie:Ljava/lang/String;

.field protected mSite:Ljava/lang/String;

.field protected mTunnelQuery:Ljava/lang/String;

.field protected mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

.field protected mTunnelURI:Ljava/net/URI;

.field protected mTunnelURL:Ljava/lang/String;

.field protected mTunnelWriter:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;

.field protected mUniqueDeviceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "^[^ ]+ ([^ ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternRTSPRequestURI:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "(;?)client_port=([0-9]+)-([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternClientPort:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "(?i)content-length: ([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternContentLength:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "interleaved=([0-9]+)-([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternInterleaved:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "server_port=([0-9]+)-([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternServerPort:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "source=([0-9.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternSource:Ljava/util/regex/Pattern;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rtspURI"    # Ljava/net/URI;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;
    .param p3, "mediavault"    # Ljava/lang/String;
    .param p4, "deviceID"    # Ljava/lang/String;
    .param p5, "site"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;-><init>(Ljava/net/URI;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPChannel:I

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRRTSP created for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    .line 85
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mMediavault:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPLocalHostPort:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPLocalHostPort:Ljava/lang/String;

    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPLocalHostPortRE:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPort:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPort:Ljava/lang/String;

    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPortRE:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mSite:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mUniqueDeviceID:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->open()V

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mClosed:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->close()V

    .line 99
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->close()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->close()V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->cancel()V

    .line 104
    :cond_4
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    .line 106
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURL:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->notifyDelegate(ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected defaultPort()I
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x22a

    return v0
.end method

.method public getBytesRead()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->getBytesRead()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRTSPURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rtsp://127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logPrepared()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 119
    const/4 v5, 0x0

    .line 121
    .local v5, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-eqz v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->getBytesRead()I

    move-result v0

    .line 124
    .local v0, "bytesRead":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    invoke-virtual {v8}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->getFirstByteReadTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    long-to-double v1, v6

    .line 125
    .local v1, "elapsed":D
    div-double/2addr v1, v10

    .line 127
    int-to-double v6, v0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v3, v6, v8

    .line 128
    .local v3, "kbps":D
    div-double v6, v3, v1

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    div-double v3, v6, v10

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prepare "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kbps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .end local v0    # "bytesRead":I
    .end local v1    # "elapsed":D
    .end local v3    # "kbps":D
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mPrepared:Z

    .line 137
    return-object v5
.end method

.method protected modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "dataSource"    # I
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .param p4, "returnCopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 273
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, v0, p3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->modifyLocalRTSPRequest([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->modifyRemoteRTSPReply([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method protected modifyLocalRTSPRequest([BII)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3f

    const/4 v7, 0x1

    .line 283
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, p1, p2, p3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 286
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPLocalHostPortRE:Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPort:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 292
    sget-object v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternRTSPRequestURI:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 294
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "invalid RTSP request"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "requestURI":Ljava/lang/String;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "requestURI":Ljava/lang/String;
    :cond_2
    const-string v4, "SETUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 313
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->modifyLocalRTSPRequestSETUP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_3
    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 324
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    return-object v0

    .line 302
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "requestURI":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x26

    goto :goto_0
.end method

.method protected modifyLocalRTSPRequestSETUP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternClientPort:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 333
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPLocalPort:I

    if-nez v2, :cond_0

    .line 335
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPLocalPort:I

    .line 336
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPLocalPort:I

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-nez v2, :cond_2

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "client_port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "clientPort":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-eqz v2, :cond_1

    .line 353
    const-string v2, "RTP/AVP/UDP"

    const-string v3, "RTP/AVP/TCP"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    .end local v0    # "clientPort":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 347
    :cond_2
    const-string v0, ""

    .restart local v0    # "clientPort":Ljava/lang/String;
    goto :goto_0
.end method

.method protected modifyRemoteRTSPReply([BII)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 363
    const/4 v2, 0x0

    .line 368
    .local v2, "openForwarders":Z
    new-instance v3, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, p1, p2, p3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 370
    .local v3, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPortRE:Ljava/lang/String;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPLocalHostPort:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-eqz v5, :cond_3

    .line 373
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternInterleaved:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 375
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    iget v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPChannel:I

    if-ne v5, v8, :cond_0

    .line 378
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPChannel:I

    .line 379
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPChannel:I

    .line 381
    const/4 v2, 0x1

    .line 403
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->openRTPAndRTCPForwarders()V

    .line 405
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    if-eqz v5, :cond_2

    const-string v5, "Transport:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Transport: RTP/AVP;unicast;source=127.0.0.1;client_port="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    iget v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPLocalPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPLocalPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 410
    const-string v6, ";server_port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "transport":Ljava/lang/String;
    const-string v5, "Transport:.*?\r\n"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .end local v4    # "transport":Ljava/lang/String;
    :cond_2
    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    return-object v0

    .line 385
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternServerPort:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 387
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    iget v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPRemotePort:I

    if-nez v5, :cond_4

    .line 389
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPRemotePort:I

    .line 390
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPRemotePort:I

    .line 392
    const/4 v2, 0x1

    .line 396
    :cond_4
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternSource:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPRemoteHost:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected notifyDelegate(ILjava/lang/Object;)V
    .locals 1
    .param p1, "notificationType"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mClosed:Z

    if-eqz v0, :cond_1

    .line 429
    .end local p2    # "argument":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 426
    .restart local p2    # "argument":Ljava/lang/Object;
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "argument":Ljava/lang/Object;
    invoke-interface {v0, p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;->rtspClosed(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/lang/Exception;)V

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected openRTPAndRTCPForwarders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 434
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPRemotePort:I

    move v5, v0

    .line 437
    .local v5, "port":I
    :goto_0
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPLocalPort:I

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPRemoteHost:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/net/DatagramSocket;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    .line 438
    iput-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    .line 439
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->open()V

    .line 441
    .end local v5    # "port":I
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPRemotePort:I

    move v5, v0

    .line 444
    .restart local v5    # "port":I
    :goto_1
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    iget v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPLocalPort:I

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPRemoteHost:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/net/DatagramSocket;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    .line 445
    iput-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    .line 446
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->open()V

    .line 448
    .end local v5    # "port":I
    :cond_1
    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    move v5, v0

    goto :goto_1
.end method

.method protected openRTPAndRTCPSockets()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v4, 0x0

    .local v4, "odd":Ljava/net/DatagramSocket;
    move-object v0, v4

    .local v0, "even":Ljava/net/DatagramSocket;
    const/4 v2, 0x0

    .local v2, "i":I
    const/16 v3, 0x20

    .local v3, "n":I
    move-object v5, v4

    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .local v5, "odd":Ljava/net/DatagramSocket;
    move-object v1, v0

    .end local v0    # "even":Ljava/net/DatagramSocket;
    .local v1, "even":Ljava/net/DatagramSocket;
    :goto_0
    if-lt v2, v3, :cond_0

    move-object v4, v5

    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    move-object v0, v1

    .line 479
    .end local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    :goto_1
    if-ne v2, v3, :cond_4

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "unable to create RTP/RTCP sockets"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 459
    .end local v0    # "even":Ljava/net/DatagramSocket;
    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .restart local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v5    # "odd":Ljava/net/DatagramSocket;
    :cond_0
    :try_start_0
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V

    .line 462
    .local v7, "socket":Ljava/net/DatagramSocket;
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->getLocalPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .local v6, "port":I
    and-int/lit8 v8, v6, 0x1

    if-nez v8, :cond_1

    .line 463
    move-object v0, v7

    .line 464
    .end local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v4, Ljava/net/DatagramSocket;

    add-int/lit8 v8, v6, 0x1

    invoke-direct {v4, v8}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    goto :goto_1

    .line 466
    .end local v0    # "even":Ljava/net/DatagramSocket;
    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .restart local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v5    # "odd":Ljava/net/DatagramSocket;
    :cond_1
    move-object v4, v7

    .line 467
    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-direct {v0, v8}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .end local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    goto :goto_1

    .line 471
    .end local v0    # "even":Ljava/net/DatagramSocket;
    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .end local v6    # "port":I
    .end local v7    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v5    # "odd":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    move-object v0, v1

    .line 473
    .end local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 474
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 476
    :cond_3
    :goto_4
    const/4 v4, 0x0

    move-object v0, v4

    .line 457
    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .restart local v5    # "odd":Ljava/net/DatagramSocket;
    move-object v1, v0

    .end local v0    # "even":Ljava/net/DatagramSocket;
    .restart local v1    # "even":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 481
    .end local v1    # "even":Ljava/net/DatagramSocket;
    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    :cond_4
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarderSocket:Ljava/net/DatagramSocket;

    .line 482
    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarderSocket:Ljava/net/DatagramSocket;

    .line 486
    return-void

    .line 473
    :catch_1
    move-exception v8

    goto :goto_3

    .line 474
    :catch_2
    move-exception v8

    goto :goto_4

    .line 471
    .end local v4    # "odd":Ljava/net/DatagramSocket;
    .restart local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v6    # "port":I
    .restart local v7    # "socket":Ljava/net/DatagramSocket;
    :catch_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "odd":Ljava/net/DatagramSocket;
    .restart local v4    # "odd":Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v0    # "even":Ljava/net/DatagramSocket;
    .restart local v1    # "even":Ljava/net/DatagramSocket;
    :catch_4
    move-exception v8

    move-object v0, v1

    .end local v1    # "even":Ljava/net/DatagramSocket;
    .restart local v0    # "even":Ljava/net/DatagramSocket;
    goto :goto_2
.end method

.method public run()V
    .locals 23

    .prologue
    .line 142
    const/16 v21, 0x0

    .line 149
    .local v21, "opened":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mClosed:Z

    move v5, v0

    if-eqz v5, :cond_1

    monitor-exit p0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->openRTPAndRTCPSockets()V

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    .line 158
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mClosed:Z

    move v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 160
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :goto_1
    const/4 v5, 0x0

    :try_start_5
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    .line 162
    monitor-exit p0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 234
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 235
    .local v18, "e":Ljava/lang/Exception;
    const-string v5, "RTSP SERVER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v18    # "e":Ljava/lang/Exception;
    :goto_2
    if-nez v21, :cond_2

    .line 241
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 242
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mClosed:Z

    move v5, v0

    if-eqz v5, :cond_8

    monitor-exit p0

    goto :goto_0

    .line 241
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 253
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 254
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v5, "RTSP SERVER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    monitor-enter p0

    .line 258
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 260
    :cond_3
    :goto_4
    const/4 v5, 0x0

    :try_start_b
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mServerSocket:Ljava/net/ServerSocket;

    .line 257
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 263
    if-nez v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->close()V

    goto/16 :goto_0

    .line 149
    :catchall_2
    move-exception v5

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 182
    :cond_4
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    move v5, v0

    const/16 v6, 0x22a

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->isUsingWiFi()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    const/16 v20, 0x2

    .line 184
    .local v20, "n":I
    const/16 v9, 0x50

    .line 191
    .local v9, "port":I
    :goto_5
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 219
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "unable to open RTSP connection"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    .end local v9    # "port":I
    .end local v19    # "i":I
    .end local v20    # "n":I
    :cond_5
    const/16 v20, 0x1

    .line 188
    .restart local v20    # "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    move v9, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .restart local v9    # "port":I
    goto :goto_5

    .line 202
    .restart local v19    # "i":I
    :cond_6
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "host":Ljava/lang/String;
    new-instance v5, Ljava/net/URI;

    const-string v6, "http"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mURI:Ljava/net/URI;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    .line 205
    new-instance v10, Ljava/net/URI;

    const-string v11, "http"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURL:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelQuery:Ljava/lang/String;

    .line 208
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    .line 211
    .end local v8    # "host":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object/from16 v18, v5

    .line 213
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string v5, "RTSP SERVER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/16 v9, 0x22a

    .line 191
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 221
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_7
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteHost:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPort:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPort:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "\\."

    const-string v7, "\\\\."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTSPRemoteHostPortRE:Ljava/lang/String;

    .line 225
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelWriter:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;

    .line 227
    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    .local v22, "thread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 232
    const/16 v21, 0x1

    .line 158
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 244
    .end local v9    # "port":I
    .end local v19    # "i":I
    .end local v20    # "n":I
    .end local v22    # "thread":Ljava/lang/Thread;
    :cond_8
    :try_start_11
    new-instance v5, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteHost:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemotePort:I

    move v7, v0

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteSocket:Ljava/net/Socket;

    .line 245
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    .line 247
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteSocket:Ljava/net/Socket;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;-><init>(Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    .line 248
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteSocket:Ljava/net/Socket;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mLocalSocket:Ljava/net/Socket;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;-><init>(Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    .line 250
    const/16 v21, 0x1

    .line 241
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_3

    .line 257
    :catchall_3
    move-exception v5

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v5

    .line 258
    :catch_3
    move-exception v5

    goto/16 :goto_4

    .line 160
    :catch_4
    move-exception v5

    goto/16 :goto_1
.end method
