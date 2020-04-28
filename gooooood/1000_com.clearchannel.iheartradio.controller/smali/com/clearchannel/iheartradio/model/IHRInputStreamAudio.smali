.class public Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;
.super Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;
.source "IHRInputStreamAudio.java"


# static fields
.field protected static final kAACFrameHeaderLookaheadBytes:I = 0x6

.field protected static final kAACSyncwordBytes:I = 0x2

.field public static final kContentTypeAAC:I = 0x1

.field public static final kContentTypeMP3:I = 0x2

.field protected static final kMP3FrameHeaderLookaheadBytes:I = 0x3

.field protected static final kMP3SyncwordBytes:I = 0x2


# instance fields
.field protected mContentType:I

.field protected mCount:I

.field protected mDuration:D

.field protected mFixup:[B

.field protected mHighWaterMark:I

.field protected mLowWaterMark:I

.field protected mPartial:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;-><init>()V

    return-void
.end method


# virtual methods
.method protected aacSampleFrequency(I)D
    .locals 2
    .param p1, "frequencyIndex"    # I

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 81
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 68
    :pswitch_0
    const-wide v0, 0x40f7700000000000L    # 96000.0

    goto :goto_0

    .line 69
    :pswitch_1
    const-wide v0, 0x40f5888000000000L    # 88200.0

    goto :goto_0

    .line 70
    :pswitch_2
    const-wide v0, 0x40ef400000000000L    # 64000.0

    goto :goto_0

    .line 71
    :pswitch_3
    const-wide v0, 0x40e7700000000000L    # 48000.0

    goto :goto_0

    .line 72
    :pswitch_4
    const-wide v0, 0x40e5888000000000L    # 44100.0

    goto :goto_0

    .line 73
    :pswitch_5
    const-wide v0, 0x40df400000000000L    # 32000.0

    goto :goto_0

    .line 74
    :pswitch_6
    const-wide v0, 0x40d7700000000000L    # 24000.0

    goto :goto_0

    .line 75
    :pswitch_7
    const-wide v0, 0x40d5888000000000L    # 22050.0

    goto :goto_0

    .line 76
    :pswitch_8
    const-wide v0, 0x40cf400000000000L    # 16000.0

    goto :goto_0

    .line 77
    :pswitch_9
    const-wide v0, 0x40c7700000000000L    # 12000.0

    goto :goto_0

    .line 78
    :pswitch_a
    const-wide v0, 0x40c5888000000000L    # 11025.0

    goto :goto_0

    .line 79
    :pswitch_b
    const-wide v0, 0x40bf400000000000L    # 8000.0

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public declared-synchronized append([B)V
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mStarted:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mContentType:I

    packed-switch v1, :pswitch_data_0

    .line 38
    move-object v0, p1

    .line 42
    .local v0, "filteredBuffer":[B
    :goto_1
    if-eqz v0, :cond_0

    .line 45
    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mHighWaterMark:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mBytesAvailable:I

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mHighWaterMark:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v2, :cond_2

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :cond_2
    :goto_2
    :try_start_3
    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mBytesAvailable:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mBytesAvailable:I

    .line 50
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "filteredBuffer":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 35
    :pswitch_0
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->filterAAC([B)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .restart local v0    # "filteredBuffer":[B
    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    goto :goto_2

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public appendAudioBuffer([B)D
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    .line 24
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->append([B)V

    .line 25
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    return-wide v0
.end method

.method protected filterAAC([B)[B
    .locals 20
    .param p1, "buffer"    # [B

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v14, v0

    .line 93
    .local v14, "work":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v14

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    .line 97
    move-object/from16 p1, v14

    .line 102
    .end local v14    # "work":[B
    :cond_0
    const/4 v9, 0x0

    .line 103
    .local v9, "offset":I
    move-object/from16 v0, p1

    array-length v0, v0

    move v7, v0

    .line 104
    .local v7, "length":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v14, v0

    .line 106
    .restart local v14    # "work":[B
    const/4 v6, 0x0

    .local v6, "i":I
    const/16 v16, 0x6

    sub-int v8, v7, v16

    .local v8, "n":I
    :goto_0
    if-lt v6, v8, :cond_3

    .line 153
    :goto_1
    if-ne v6, v8, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mPartial:I

    .line 157
    :cond_1
    if-lez v9, :cond_8

    .line 158
    new-array v10, v9, [B

    .line 160
    .local v10, "result":[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v16

    move-object v2, v10

    move/from16 v3, v17

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :goto_2
    sub-int v8, v7, v6

    if-lez v8, :cond_2

    .line 166
    move v0, v8

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v16

    move/from16 v3, v17

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_2
    return-object v10

    .line 107
    .end local v10    # "result":[B
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->isAACSyncword([BI)Z

    move-result v16

    if-nez v16, :cond_5

    .line 108
    const/4 v15, 0x1

    .local v15, "x":I
    add-int/lit8 v15, v15, 0x1

    .line 106
    .end local v15    # "x":I
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    :cond_5
    add-int/lit8 v16, v6, 0x2

    aget-byte v16, p1, v16

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v5, v16, 0xf

    .line 113
    .local v5, "frequencyIndex":I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->aacSampleFrequency(I)D

    move-result-wide v11

    .local v11, "sampleFrequency":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v11, v16

    if-eqz v16, :cond_4

    .line 117
    add-int/lit8 v16, v6, 0x3

    aget-byte v16, p1, v16

    and-int/lit8 v16, v16, 0x3

    shl-int/lit8 v13, v16, 0xb

    .line 118
    .local v13, "size":I
    add-int/lit8 v16, v6, 0x4

    aget-byte v16, p1, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x3

    or-int v13, v13, v16

    .line 119
    add-int/lit8 v16, v6, 0x5

    aget-byte v16, p1, v16

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x7

    or-int v13, v13, v16

    .line 121
    add-int v16, v6, v13

    const/16 v17, 0x2

    sub-int v17, v7, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 126
    add-int v16, v6, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->isAACSyncword([BI)Z

    move-result v16

    if-nez v16, :cond_6

    .line 127
    const/4 v15, 0x1

    .restart local v15    # "x":I
    add-int/lit8 v15, v15, 0x1

    .line 128
    goto :goto_3

    .line 133
    .end local v15    # "x":I
    :cond_6
    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v14

    move v3, v9

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/2addr v9, v13

    .line 137
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    div-double v18, v18, v11

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    .line 140
    const/16 v16, 0x1

    sub-int v16, v13, v16

    add-int v6, v6, v16

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCount:I

    goto/16 :goto_3

    .line 148
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mPartial:I

    goto/16 :goto_1

    .line 162
    .end local v5    # "frequencyIndex":I
    .end local v11    # "sampleFrequency":D
    .end local v13    # "size":I
    :cond_8
    const/4 v10, 0x0

    check-cast v10, [B

    .restart local v10    # "result":[B
    goto/16 :goto_2
.end method

.method protected filterMP3([B)[B
    .locals 23
    .param p1, "buffer"    # [B

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 181
    .local v16, "work":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    .line 185
    move-object/from16 p1, v16

    .line 188
    .end local v16    # "work":[B
    :cond_0
    const/4 v10, 0x0

    .line 189
    .local v10, "offset":I
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .line 190
    .local v8, "length":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 192
    .restart local v16    # "work":[B
    const/4 v6, 0x0

    .local v6, "i":I
    const/16 v17, 0x3

    sub-int v9, v8, v17

    .local v9, "n":I
    :goto_0
    if-lt v6, v9, :cond_3

    .line 235
    :cond_1
    if-lez v10, :cond_6

    .line 236
    new-array v12, v10, [B

    .line 238
    .local v12, "result":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v12

    move/from16 v3, v18

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :goto_1
    sub-int v9, v8, v6

    if-lez v9, :cond_2

    .line 244
    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_2
    return-object v12

    .line 193
    .end local v12    # "result":[B
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->isMP3Syncword([BI)Z

    move-result v17

    if-nez v17, :cond_5

    .line 192
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 200
    :cond_5
    add-int/lit8 v17, v6, 0x2

    aget-byte v17, p1, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v5, v17, 0xf

    .line 201
    .local v5, "bitrate":I
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p1, v17

    shr-int/lit8 v17, v17, 0x1

    and-int/lit8 v7, v17, 0x3

    .line 202
    .local v7, "layerDescription":I
    add-int/lit8 v17, v6, 0x2

    aget-byte v17, p1, v17

    shr-int/lit8 v17, v17, 0x1

    and-int/lit8 v11, v17, 0x1

    .line 203
    .local v11, "padding":I
    add-int/lit8 v17, v6, 0x2

    aget-byte v17, p1, v17

    shr-int/lit8 v17, v17, 0x2

    and-int/lit8 v13, v17, 0x3

    .line 204
    .local v13, "sampleFrequency":I
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p1, v17

    shr-int/lit8 v17, v17, 0x3

    and-int/lit8 v15, v17, 0x3

    .line 206
    .local v15, "versionID":I
    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mp3Bitrate(III)I

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mp3SampleFrequency(II)I

    move-result v13

    if-eqz v13, :cond_4

    .line 208
    move-object/from16 v0, p0

    move v1, v7

    move v2, v5

    move v3, v13

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mp3FrameBytes(IIII)I

    move-result v14

    .local v14, "size":I
    if-eqz v14, :cond_4

    .line 210
    add-int v17, v6, v14

    const/16 v18, 0x2

    sub-int v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 215
    add-int v17, v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->isMP3Syncword([BI)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 219
    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v16

    move v3, v10

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    add-int/2addr v10, v14

    .line 222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4092000000000000L    # 1152.0

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mDuration:D

    .line 225
    const/16 v17, 0x1

    sub-int v17, v14, v17

    add-int v6, v6, v17

    goto/16 :goto_2

    .line 240
    .end local v5    # "bitrate":I
    .end local v7    # "layerDescription":I
    .end local v11    # "padding":I
    .end local v13    # "sampleFrequency":I
    .end local v14    # "size":I
    .end local v15    # "versionID":I
    :cond_6
    const/4 v12, 0x0

    check-cast v12, [B

    .restart local v12    # "result":[B
    goto/16 :goto_1
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamBlocking;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mFixup:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getNextBuffer()I
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCurrentBufferOffset:I

    .line 256
    :goto_0
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 279
    :goto_1
    monitor-exit p0

    return v0

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCurrentBuffer:[B

    .line 260
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mData:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElementAt(I)Ljava/lang/Object;

    .line 265
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mBytesAvailable:I

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCurrentBuffer:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mHighWaterMark:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCurrentBuffer:[B

    array-length v0, v0

    goto :goto_1

    .line 270
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mCurrentBuffer:[B

    .line 273
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mHighWaterMark:I

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isAACSyncword([BI)Z
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 283
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf6

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMP3Syncword([BI)Z
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 287
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mp3Bitrate(III)I
    .locals 8
    .param p1, "versionID"    # I
    .param p2, "layerDescription"    # I
    .param p3, "bitrateField"    # I

    .prologue
    const/16 v5, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 293
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 294
    .local v1, "v1l2Bitrate":[I
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 295
    .local v2, "v1l3Bitrate":[I
    new-array v3, v5, [I

    fill-array-data v3, :array_2

    .line 296
    .local v3, "v2l1Bitrate":[I
    new-array v4, v5, [I

    fill-array-data v4, :array_3

    .line 298
    .local v4, "v2l2Bitrate":[I
    move v0, p3

    .local v0, "bitrate":I
    if-eqz p3, :cond_0

    const/16 v5, 0xf

    if-ne p3, v5, :cond_1

    :cond_0
    move v5, v6

    .line 323
    :goto_0
    return v5

    .line 300
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 323
    :goto_1
    mul-int/lit16 v5, v0, 0x3e8

    goto :goto_0

    :pswitch_0
    move v5, v6

    .line 301
    goto :goto_0

    .line 305
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    move v5, v6

    .line 306
    goto :goto_0

    .line 308
    :pswitch_3
    sub-int v5, v0, v7

    aget v0, v4, v5

    goto :goto_1

    .line 309
    :pswitch_4
    sub-int v5, v0, v7

    aget v0, v3, v5

    goto :goto_1

    .line 314
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_1

    :pswitch_6
    move v5, v6

    .line 315
    goto :goto_0

    .line 316
    :pswitch_7
    sub-int v5, v0, v7

    aget v0, v2, v5

    goto :goto_1

    .line 317
    :pswitch_8
    sub-int v5, v0, v7

    aget v0, v1, v5

    goto :goto_1

    .line 318
    :pswitch_9
    shl-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 293
    :array_0
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    .line 294
    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    .line 295
    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 296
    :array_3
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 305
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 314
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected mp3FrameBytes(IIII)I
    .locals 1
    .param p1, "layerDescription"    # I
    .param p2, "bitrate"    # I
    .param p3, "sampleFrequency"    # I
    .param p4, "padding"    # I

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 333
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 329
    :pswitch_0
    mul-int/lit16 v0, p2, 0x90

    div-int/2addr v0, p3

    add-int/2addr v0, p4

    goto :goto_0

    .line 330
    :pswitch_1
    mul-int/lit8 v0, p2, 0xc

    div-int/2addr v0, p3

    add-int/2addr v0, p4

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected mp3SampleFrequency(II)I
    .locals 5
    .param p1, "versionID"    # I
    .param p2, "frequencyIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 337
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 338
    .local v0, "v1SampleFrequency":[I
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 339
    .local v2, "v2SampleFrequency":[I
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    .line 341
    .local v1, "v25SampleFrequency":[I
    if-ne p2, v3, :cond_0

    move v3, v4

    .line 349
    :goto_0
    return v3

    .line 343
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 349
    goto :goto_0

    .line 344
    :pswitch_1
    aget v3, v1, p2

    goto :goto_0

    .line 345
    :pswitch_2
    aget v3, v2, p2

    goto :goto_0

    .line 346
    :pswitch_3
    aget v3, v0, p2

    goto :goto_0

    .line 337
    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 338
    :array_1
    .array-data 4
        0x5622
        0x5dc0
        0x3e80
    .end array-data

    .line 339
    :array_2
    .array-data 4
        0x2b11
        0x2ee0
        0x1f40
    .end array-data

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mContentType:I

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public declared-synchronized setHighWaterMark(I)V
    .locals 1
    .param p1, "highWaterMark"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mHighWaterMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLowWaterMark(I)V
    .locals 0
    .param p1, "lowWaterMark"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->mLowWaterMark:I

    return-void
.end method
