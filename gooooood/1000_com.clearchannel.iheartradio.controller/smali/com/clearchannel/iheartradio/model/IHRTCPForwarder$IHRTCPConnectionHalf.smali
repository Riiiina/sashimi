.class public Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;
.super Ljava/lang/Object;
.source "IHRTCPForwarder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRTCPConnectionHalf"
.end annotation


# instance fields
.field protected mDataSource:I

.field protected mIStream:Ljava/io/InputStream;

.field protected mOStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p2, "dataSource"    # I
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mDataSource:I

    .line 105
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mIStream:Ljava/io/InputStream;

    .line 106
    iput-object p4, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRTCPConnectionHalf "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mUnique:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mIStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mIStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mIStream:Ljava/io/InputStream;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 120
    const/16 v5, 0x4000

    new-array v0, v5, [B

    .line 124
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    monitor-enter v5

    .line 125
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget-boolean v6, v6, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mInitialized:Z

    if-eqz v6, :cond_2

    .line 124
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget-boolean v5, v5, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mClosed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_3

    .line 153
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->close()V

    .line 156
    return-void

    .line 125
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 130
    :cond_3
    :try_start_4
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mIStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v5, v0, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->readInputStream(Ljava/io/InputStream;[BII)I

    move-result v3

    .local v3, "n":I
    if-ltz v3, :cond_1

    .line 132
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    const-string v6, "IHRTCPConnectionHalf"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mDataSource:I

    if-nez v8, :cond_4

    const-string v8, "local"

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data source"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mDataSource:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v3, v7}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 137
    iget v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mDataSource:I

    if-nez v5, :cond_5

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remote "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemoteHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget v6, v6, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mRemotePort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "target":Ljava/lang/String;
    :goto_4
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IHRTCPConnectionHalf writing to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->dump(Ljava/lang/String;[BII)V

    .line 145
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->mOStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 149
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "n":I
    .end local v4    # "target":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Server error : "

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "n":I
    :cond_4
    :try_start_5
    const-string v8, "remote"

    goto/16 :goto_3

    .line 140
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "local  127.0.0.1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder$IHRTCPConnectionHalf;->this$0:Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->mLocalSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v4

    .restart local v4    # "target":Ljava/lang/String;
    goto :goto_4
.end method
