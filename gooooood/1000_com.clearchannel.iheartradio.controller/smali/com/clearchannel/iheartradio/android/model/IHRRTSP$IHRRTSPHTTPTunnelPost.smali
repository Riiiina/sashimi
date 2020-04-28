.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;
.super Ljava/lang/Object;
.source "IHRRTSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRRTSPHTTPTunnelPost"
.end annotation


# instance fields
.field protected mBytesWritten:I

.field protected mClosed:Z

.field protected mOutputStream:Ljava/io/OutputStream;

.field protected mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->open()V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;[BIIZ)V
    .locals 2
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isRTSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 646
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported constructor"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 652
    :goto_0
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 657
    :goto_1
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mSocket:Ljava/net/Socket;

    .line 659
    :cond_1
    return-void

    .line 655
    :catch_0
    move-exception v0

    goto :goto_1

    .line 650
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mSocket:Ljava/net/Socket;

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "POST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP/1.0\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 671
    const-string v4, "cache-control: no-cache\r\ncontent-length: 65535\r\ncontent-type: application/x-rtsp-tunnelled\r\npragma: no-cache\r\nx-sessioncookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mSessionCookie:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\nUser-Agent: iheartradio_Android_IHRRTSPTunnelPost\r\nHost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\nConnection: Keep-Alive\r\n\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 670
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "connect":Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 675
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 677
    array-length v3, v0

    iput v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mBytesWritten:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    return-void

    .line 678
    .end local v0    # "buffer":[B
    .end local v1    # "connect":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 679
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->close()V

    .line 681
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public post([BIIZ)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isRTSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->prepareBuffer([BIIZ)[B

    move-result-object p1

    .line 689
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mBytesWritten:I

    array-length v1, p1

    add-int/2addr v0, v1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->close()V

    .line 691
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->open()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 695
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 697
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mBytesWritten:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->mBytesWritten:I

    .line 700
    return-void
.end method

.method protected prepareBuffer([BIIZ)[B
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isRTSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    if-eqz p4, :cond_0

    .line 706
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-virtual {v1, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->modifyLocalRTSPRequest([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 708
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 709
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    .line 710
    const/4 p2, 0x0

    .line 717
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([BII)[B

    move-result-object v1

    return-object v1
.end method
