.class public Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;
.super Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;
.source "IHRTCPForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;
    }
.end annotation


# instance fields
.field protected mClosed:Z

.field protected mInitialized:Z

.field protected mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

.field protected mLocalSocket:Ljava/net/Socket;

.field protected mRemoteHost:Ljava/lang/String;

.field protected mRemotePort:I

.field protected mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

.field protected mRemoteSocket:Ljava/net/Socket;

.field protected mServerSocket:Ljava/net/ServerSocket;

.field protected mURI:Ljava/net/URI;

.field protected mUnique:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mUnique:I

    .line 29
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteHost:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    .line 31
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    .line 33
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->defaultPort()I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    .line 35
    :cond_0
    const-string v0, "IHRTCPForwarder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "creating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for traffic to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteHost:Ljava/lang/String;

    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mURI:Ljava/net/URI;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mClosed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mClosed:Z

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->close()V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->close()V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    :cond_5
    :goto_3
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    .line 55
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    .line 56
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    .line 57
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    .line 58
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_3

    .line 51
    :catch_1
    move-exception v0

    goto :goto_2

    .line 50
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected defaultPort()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x50

    return v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mClosed:Z

    return v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRTCPForwarder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mUnique:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    .line 70
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteHost:Ljava/lang/String;

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    .line 72
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;-><init>(Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    .line 73
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;-><init>(Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteReader:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_1
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mInitialized:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "Server close error : "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 82
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "Server error : "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
