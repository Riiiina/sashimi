.class public Lcom/clearchannel/iheartradio/model/IHRInputStream;
.super Ljava/io/InputStream;
.source "IHRInputStream.java"


# instance fields
.field protected mBytesAvailable:I

.field protected mCurrentBuffer:[B

.field protected mCurrentBufferOffset:I

.field protected mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized append([B)V
    .locals 2
    .param p1, "inBuffer"    # [B

    .prologue
    .line 15
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 17
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I

    .line 18
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStream;->flush()V

    .line 27
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I

    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getNextBuffer()I
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I

    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    .line 80
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElementAt(I)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit p0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    const/4 v0, -0x1

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    new-array v0, v2, [B

    .line 39
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStream;->read([BII)I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v1, -0x1

    .line 41
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v3

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "bufferOffset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 49
    monitor-enter p0

    const/4 v1, 0x0

    .line 51
    .local v1, "offset":I
    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 52
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v2, p2, p3

    :try_start_1
    array-length v3, p1

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_2
    if-nez p3, :cond_3

    const/4 v2, 0x0

    .line 72
    :goto_0
    monitor-exit p0

    return v2

    .line 56
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStream;->getNextBuffer()I

    move-result v0

    .line 60
    .local v0, "n":I
    :cond_4
    :goto_1
    if-ne v0, v5, :cond_6

    .line 72
    :goto_2
    if-nez v1, :cond_8

    move v2, v5

    goto :goto_0

    .line 57
    .end local v0    # "n":I
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I

    sub-int v0, v2, v3

    .restart local v0    # "n":I
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStream;->getNextBuffer()I

    move-result v0

    goto :goto_1

    .line 61
    :cond_6
    if-ge p3, v0, :cond_7

    move v0, p3

    .line 63
    :cond_7
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBuffer:[B

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I

    add-int v4, p2, v1

    invoke-static {v2, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mBytesAvailable:I

    .line 66
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStream;->mCurrentBufferOffset:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    sub-int/2addr p3, v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    if-gtz p3, :cond_3

    goto :goto_2

    :cond_8
    move v2, v1

    .line 72
    goto :goto_0
.end method
