.class public Lcom/clearchannel/iheartradio/model/IHRHTTP;
.super Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
.source "IHRHTTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final kIntervalMs:J = 0x3e8L

.field protected static final kTimeoutMs:J = 0x7530L

.field protected static sInstances:I

.field protected static sProhibitNewConnections:Z


# instance fields
.field protected mBytesRead:I

.field protected mBytesReadThisInterval:I

.field protected mContext:Ljava/lang/Object;

.field protected mData:[B

.field protected mDelegate:Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;

.field protected mFirstByteReadTime:J

.field protected mIgnoreReply:Z

.field protected mInstance:I

.field protected mIntervalStartTime:J

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "postData"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    .prologue
    .line 212
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;-><init>(Ljava/lang/String;[B)V

    .line 214
    const-class v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/clearchannel/iheartradio/model/IHRHTTP;->sInstances:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/clearchannel/iheartradio/model/IHRHTTP;->sInstances:I

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mInstance:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContext:Ljava/lang/Object;

    .line 217
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;

    .line 218
    return-void

    .line 212
    :cond_0
    invoke-virtual {p4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inPost"    # [B

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static deliver(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;
    .locals 4
    .param p0, "inURL"    # Ljava/lang/String;
    .param p1, "inPost"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .param p2, "inCredentialsIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    .line 131
    .local v0, "http":Lcom/clearchannel/iheartradio/model/IHRHTTP;
    iput-object p2, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCredentialsIdentifier:Ljava/lang/String;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    .line 134
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    return-object v0
.end method

.method public static fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;)Lcom/clearchannel/iheartradio/model/IHRHTTP;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, p2, v0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)Lcom/clearchannel/iheartradio/model/IHRHTTP;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "postData"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "postData"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .param p4, "inCredentialsIdentifier"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    .line 119
    .local v0, "http":Lcom/clearchannel/iheartradio/model/IHRHTTP;
    iput-object p4, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCredentialsIdentifier:Ljava/lang/String;

    .line 120
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    .line 122
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    return-object v0

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fetchSynchronous(Ljava/lang/String;)[B
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)[B

    move-result-object v0

    return-object v0
.end method

.method public static fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)[B
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Z)[B
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .param p2, "ignoreReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    .line 172
    .local v0, "http":Lcom/clearchannel/iheartradio/model/IHRHTTP;
    iput-boolean p2, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    .line 173
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->run()V

    .line 175
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getData()[B

    move-result-object v1

    return-object v1
.end method

.method public static reportSynchronous(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Z)[B

    .line 180
    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)[B
    .locals 2
    .param p0, "inURL"    # Ljava/lang/String;
    .param p1, "inPost"    # Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .param p2, "inCredentialsIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    .line 143
    .local v0, "http":Lcom/clearchannel/iheartradio/model/IHRHTTP;
    iput-object p2, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCredentialsIdentifier:Ljava/lang/String;

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    .line 145
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->run()V

    .line 147
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getDataNoThrow()[B

    move-result-object v1

    return-object v1
.end method

.method public static setProhibitNewConnections(Z)V
    .locals 2
    .param p0, "prohibit"    # Z

    .prologue
    .line 183
    const-class v0, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    monitor-enter v0

    .line 184
    :try_start_0
    sput-boolean p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->sProhibitNewConnections:Z

    if-nez p0, :cond_0

    const-class v1, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    :cond_0
    monitor-exit v0

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getBytesRead()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesRead:I

    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mSuccess:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HTTP request failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    return-object v0
.end method

.method public getDataNoThrow()[B
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    return-object v0
.end method

.method public getFirstByteReadTime()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mFirstByteReadTime:J

    return-wide v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public openThenClose()V
    .locals 3

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->open()V

    .line 328
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIgnoreReply:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->close()V

    .line 335
    return-void

    .line 329
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IHRHTTP.open"

    const-string v2, "Open operation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    goto :goto_0
.end method

.method protected processData([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    if-nez v1, :cond_0

    .line 225
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    .line 226
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 229
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mData:[B

    goto :goto_0
.end method

.method protected read()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, 0x3e8

    .line 242
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    :goto_1
    return-void

    .line 243
    :cond_1
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContentLength:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesRead:I

    iget v8, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContentLength:I

    if-lt v7, v8, :cond_2

    .line 244
    iput-boolean v13, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mSuccess:Z

    goto :goto_1

    .line 249
    :cond_2
    :try_start_0
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContentLength:I

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_3

    .line 250
    const/high16 v3, 0x20000

    .line 255
    .local v3, "n":I
    :goto_2
    const/16 v3, 0x2000

    .line 256
    new-array v0, v3, [B

    .line 258
    .local v0, "buffer":[B
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_5

    .line 259
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mContentLength:I

    if-lez v7, :cond_4

    new-instance v7, Ljava/io/IOException;

    const-string v8, "unexpected end of file"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "buffer":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "read"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "caught "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v3, 0x1000

    .restart local v3    # "n":I
    goto :goto_2

    .line 261
    .restart local v0    # "buffer":[B
    :cond_4
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mSuccess:Z

    goto :goto_1

    .line 263
    :cond_5
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 264
    new-instance v7, Ljava/io/IOException;

    const-string v8, "cancelled"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    :cond_6
    if-lez v3, :cond_0

    .line 268
    array-length v7, v0

    if-eq v3, v7, :cond_7

    .line 269
    new-array v6, v3, [B

    .line 270
    .local v6, "tmp":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    move-object v0, v6

    .line 274
    .end local v6    # "tmp":[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 276
    .local v4, "now":J
    iget-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mFirstByteReadTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    .line 278
    iput-wide v4, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mFirstByteReadTime:J

    .line 279
    const-wide/16 v7, 0x3e8

    rem-long v7, v4, v7

    sub-long v7, v4, v7

    iput-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIntervalStartTime:J

    .line 284
    :cond_8
    iget-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIntervalStartTime:J

    sub-long v7, v4, v7

    cmp-long v7, v7, v11

    if-lez v7, :cond_9

    .line 285
    const/4 v7, 0x0

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesReadThisInterval:I

    .line 286
    const-wide/16 v7, 0x3e8

    rem-long v7, v4, v7

    sub-long v7, v4, v7

    iput-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mIntervalStartTime:J

    .line 289
    :cond_9
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesRead:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesRead:I

    .line 290
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesReadThisInterval:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mBytesReadThisInterval:I

    .line 293
    const/4 v2, 0x0

    .line 314
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->processData([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 342
    const-class v1, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    monitor-enter v1

    .line 343
    :goto_0
    :try_start_0
    sget-boolean v2, Lcom/clearchannel/iheartradio/model/IHRHTTP;->sProhibitNewConnections:Z

    if-nez v2, :cond_1

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->openThenClose()V

    .line 352
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTP;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;

    invoke-interface {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;->httpFetchComplete(Lcom/clearchannel/iheartradio/model/IHRHTTP;)V

    .line 353
    :cond_0
    return-void

    .line 343
    :cond_1
    :try_start_1
    const-class v2, Lcom/clearchannel/iheartradio/model/IHRHTTP;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "IHRHTTP.run()"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
