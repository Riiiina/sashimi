.class public Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;
.super Lcom/clearchannel/iheartradio/model/IHRInputStream;
.source "IHRInputStreamBlocking.java"


# instance fields
.field protected mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized append([B)V
    .locals 2
    .param p1, "inBuffer"    # [B

    .prologue
    .line 8
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mStarted:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mBytesAvailable:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mBytesAvailable:I

    .line 11
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getNextBuffer()I
    .locals 2

    .prologue
    .line 22
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mCurrentBufferOffset:I

    .line 25
    :goto_0
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 40
    :goto_1
    monitor-exit p0

    return v0

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mCurrentBuffer:[B

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElementAt(I)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mCurrentBuffer:[B

    array-length v0, v0

    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mCurrentBuffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->mStarted:Z

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->flush()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
