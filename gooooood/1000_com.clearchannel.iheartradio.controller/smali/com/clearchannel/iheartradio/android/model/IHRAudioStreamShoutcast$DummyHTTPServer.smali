.class public Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;
.super Ljava/lang/Thread;
.source "IHRAudioStreamShoutcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DummyHTTPServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;


# direct methods
.method protected constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 42
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 43
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 45
    .local v1, "client":Ljava/net/Socket;
    const/4 v3, 0x0

    .line 46
    .local v3, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 49
    .local v5, "output":Ljava/io/OutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 51
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 53
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .local v4, "n":I
    if-eqz v4, :cond_4

    .line 57
    new-array v6, v4, [B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    .line 61
    const-string v6, "HTTP/1.1 200 OK\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 62
    const-string v6, "Content-Type: audio/mpeg\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 63
    const-string v6, "Date: Sat, 6 Dec 2009 04:34:56 GMT\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 64
    const-string v6, "Server: Apache\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 65
    const-string v6, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 67
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    .line 78
    .end local v4    # "n":I
    :goto_2
    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v6, :cond_3

    :try_start_3
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 81
    :cond_3
    :goto_5
    return-void

    .line 54
    .restart local v4    # "n":I
    :cond_4
    const-wide/16 v6, 0x64

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 72
    .end local v4    # "n":I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "IHRAudioStreamShoutcast"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "n":I
    :cond_5
    :try_start_5
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->access$1(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 69
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 78
    .end local v4    # "n":I
    :catch_1
    move-exception v6

    goto :goto_3

    .line 79
    :catch_2
    move-exception v6

    goto :goto_4

    .line 80
    :catch_3
    move-exception v6

    goto :goto_5
.end method
