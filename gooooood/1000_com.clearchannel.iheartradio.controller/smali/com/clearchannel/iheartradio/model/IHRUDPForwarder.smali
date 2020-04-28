.class public Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;
.super Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;
.source "IHRUDPForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mClosed:Z

.field protected mLocalAddress:Ljava/net/InetAddress;

.field protected mLocalPort:I

.field protected mRemoteHost:Ljava/net/InetAddress;

.field protected mRemotePort:I

.field protected mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;ILjava/lang/String;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "localPort"    # I
    .param p3, "remoteHost"    # Ljava/lang/String;
    .param p4, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;-><init>()V

    .line 18
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mLocalAddress:Ljava/net/InetAddress;

    .line 19
    iput p2, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mLocalPort:I

    .line 20
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mRemoteHost:Ljava/net/InetAddress;

    .line 21
    iput p4, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mRemotePort:I

    .line 22
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mClosed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mClosed:Z

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected getPacketSource(Ljava/net/DatagramPacket;)I
    .locals 2
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 55
    const/high16 v5, 0x10000

    :try_start_0
    new-array v0, v5, [B

    .line 57
    .local v0, "buffer":[B
    :goto_0
    iget-boolean v5, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mClosed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 73
    .end local v0    # "buffer":[B
    :goto_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->close()V

    .line 74
    return-void

    .line 58
    .restart local v0    # "buffer":[B
    :cond_0
    :try_start_1
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v5, v0

    invoke-direct {v3, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 60
    .local v3, "packet":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->getPacketSource(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 63
    .local v4, "source":I
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 66
    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->sendToRemoteHost(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "buffer":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    .end local v4    # "source":I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "run"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    .restart local v4    # "source":I
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->sendToLocalHost(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected sendToLocalHost(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 84
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mLocalPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected sendToRemoteHost(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mRemoteHost:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 96
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mRemotePort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 98
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 99
    :cond_0
    return-void
.end method
