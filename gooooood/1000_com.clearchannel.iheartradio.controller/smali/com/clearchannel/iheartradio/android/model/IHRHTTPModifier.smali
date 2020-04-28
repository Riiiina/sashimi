.class public Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;
.super Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;
.source "IHRHTTPModifier.java"


# instance fields
.field mCache:[B

.field mSentHeaders:Z


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;-><init>(Ljava/net/URI;)V

    .line 16
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->open()V

    .line 17
    return-void
.end method


# virtual methods
.method protected modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "dataSource"    # I
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .param p4, "returnCopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p1, :cond_5

    .line 27
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mSentHeaders:Z

    if-nez v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mCache:[B

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mCache:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mCache:[B

    array-length v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->concatenateBuffers([BII[BII)[B

    move-result-object p2

    .line 30
    array-length p3, p2

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mCache:[B

    .line 35
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v0, 0x4

    sub-int v7, p3, v0

    .local v7, "n":I
    :goto_0
    if-le v5, v7, :cond_2

    .line 39
    :cond_1
    if-le v5, v7, :cond_4

    .line 40
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->copyBuffer([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mCache:[B

    .line 41
    const/4 v0, 0x0

    .line 59
    .end local v5    # "i":I
    .end local v7    # "n":I
    :goto_1
    return-object v0

    .line 36
    .restart local v5    # "i":I
    .restart local v7    # "n":I
    :cond_2
    aget-byte v0, p2, v5

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v5, 0x1

    aget-byte v0, p2, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v5, 0x2

    aget-byte v0, p2, v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v5, 0x3

    aget-byte v0, p2, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 35
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    :cond_4
    new-instance v8, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ISO-8859-1"

    invoke-direct {v8, p2, v0, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 46
    .local v8, "string":Ljava/lang/String;
    const-string v0, "HTTP/1.1"

    const-string v1, "HTTP/1.0"

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    const-string v0, "Host:[^\r]*"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mRemoteHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mRemotePort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    const-string v0, "ISO-8859-1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    .local v1, "buffer":[B
    const/4 v2, 0x0

    array-length v3, v1

    sub-int v6, p3, v5

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->concatenateBuffers([BII[BII)[B

    move-result-object p2

    .line 52
    array-length p3, p2

    .line 53
    const/4 p4, 0x0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPModifier;->mSentHeaders:Z

    .line 59
    .end local v1    # "buffer":[B
    .end local v5    # "i":I
    .end local v7    # "n":I
    .end local v8    # "string":Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/model/IHRTCPForwarder;->modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method
