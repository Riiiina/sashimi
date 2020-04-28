.class public abstract Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;
.super Lcom/clearchannel/iheartradio/model/IHRHTTP;
.source "IHRAudioStreamShoutcastBase.java"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mDataRead:I

.field protected mDataRemaining:I

.field protected mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

.field protected mDuration:D

.field protected mICYBitrate:I

.field protected mICYMetaInterval:I

.field protected mICYName:Ljava/lang/String;

.field protected mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

.field protected mMeta:Ljava/lang/String;

.field protected mMetaRemaining:I

.field protected mStopping:Z

.field protected mStreamURL:Ljava/lang/String;

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;Ljava/lang/Object;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p3, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)V

    .line 26
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

    .line 28
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->start()V

    .line 31
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;->shared()Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;->stop()V

    .line 38
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->cancel()V

    .line 39
    return-void
.end method

.method protected extractMetadataFromStreamTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 46
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    const-string v3, "StreamTitle=\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "n":I
    if-ne v0, v4, :cond_0

    move-object v2, v5

    .line 52
    :goto_0
    return-object v2

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0xd

    .line 50
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    const-string v3, "\';"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "o":I
    if-ne v1, v4, :cond_2

    .end local v1    # "o":I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 52
    .restart local v1    # "o":I
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseMetadata(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 4
    .param p1, "metadata"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 59
    .local v0, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 60
    if-lez v1, :cond_0

    const-string v2, "artist"

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    const-string v2, "track"

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected prepareRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "icy-metadata"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected processData([BLjava/lang/String;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 80
    const/4 v5, 0x0

    .local v5, "offset":I
    array-length v3, p1

    .local v3, "n":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_0
    if-gtz v3, :cond_0

    .line 141
    :goto_1
    return-void

    .line 81
    :cond_0
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    if-ne v7, v11, :cond_1

    .line 83
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRead:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRead:I

    .line 84
    iget-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDuration:D

    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-virtual {v9, p1}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->appendAudioBuffer([B)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDuration:D

    goto :goto_1

    .line 87
    :cond_1
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    if-lez v7, :cond_3

    .line 89
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    if-ge v3, v7, :cond_2

    move v4, v3

    .line 91
    .local v4, "o":I
    :goto_2
    new-array v0, v4, [B

    .line 92
    .local v0, "buffer":[B
    const/4 v7, 0x0

    invoke-static {p1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDuration:D

    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-virtual {v9, v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->appendAudioBuffer([B)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDuration:D

    .line 96
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRead:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRead:I

    .line 97
    add-int v5, v6, v4

    .line 98
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    sub-int/2addr v3, v4

    .line 100
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    if-nez v7, :cond_7

    iput v11, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 89
    .end local v0    # "buffer":[B
    .end local v4    # "o":I
    :cond_2
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    move v4, v7

    goto :goto_2

    .line 101
    :cond_3
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    if-ne v7, v11, :cond_5

    .line 102
    add-int/lit8 v3, v3, -0x1

    .line 104
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v7, p1, v6

    mul-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    .line 106
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    if-nez v7, :cond_4

    .line 107
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mICYMetaInterval:I

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 109
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    const-string v7, ""

    iput-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 112
    :cond_5
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    if-ge v3, v7, :cond_8

    move v4, v3

    .line 114
    .restart local v4    # "o":I
    :goto_3
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    .line 116
    add-int v5, v6, v4

    .line 117
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    sub-int/2addr v3, v4

    .line 119
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    if-nez v7, :cond_7

    .line 120
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mICYMetaInterval:I

    iput v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    .line 122
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->extractMetadataFromStreamTitle()Ljava/lang/String;

    move-result-object v2

    .local v2, "meta":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 123
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->parseMetadata(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .local v1, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v1, :cond_6

    .line 124
    const-string v7, "duration"

    new-instance v8, Ljava/lang/Double;

    iget-wide v9, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDuration:D

    invoke-direct {v8, v9, v10}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContext:Ljava/lang/Object;

    invoke-interface {v7, v8, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;->audioStreamReceivedMetadata(Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 137
    .end local v1    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMeta:Ljava/lang/String;

    .end local v2    # "meta":Ljava/lang/String;
    :cond_7
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 112
    .end local v4    # "o":I
    :cond_8
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mMetaRemaining:I

    move v4, v7

    goto :goto_3
.end method

.method protected processHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->processHeaders()V

    .line 149
    const-string v1, "content-type"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContentType:Ljava/lang/String;

    .line 150
    const-string v1, "icy-name"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mICYName:Ljava/lang/String;

    .line 152
    const-string v1, "icy-bitrate"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "icy-br"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mICYBitrate:I

    .line 155
    :cond_1
    const-string v1, "icy-metaint"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mICYMetaInterval:I

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDataRemaining:I

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 167
    .local v1, "reason":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContext:Ljava/lang/Object;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mURL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;->audioStreamConnecting(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->open()V

    .line 171
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContext:Ljava/lang/Object;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mURL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;->audioStreamConnected(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->setContentType(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->setHighWaterMark(I)V

    .line 176
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mDelegate:Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->mContext:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;->audioStreamStopped(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;->close()V

    .line 184
    return-void

    .line 177
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
