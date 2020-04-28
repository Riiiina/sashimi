.class public abstract Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRByteStreamModifier.java"


# instance fields
.field protected final kDataSourceLocal:I

.field protected final kDataSourceRemote:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;->kDataSourceLocal:I

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;->kDataSourceRemote:I

    .line 5
    return-void
.end method


# virtual methods
.method protected concatenateBuffers([BII[BII)[B
    .locals 2
    .param p1, "prefix"    # [B
    .param p2, "prefixOffset"    # I
    .param p3, "prefixLength"    # I
    .param p4, "suffix"    # [B
    .param p5, "suffixOffset"    # I
    .param p6, "suffixLength"    # I

    .prologue
    .line 14
    add-int v1, p3, p6

    new-array v0, v1, [B

    .line 16
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {p4, p5, v0, p3, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-object v0
.end method

.method protected copy([BI)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .prologue
    .line 25
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 28
    return-object v0
.end method

.method protected modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;
    .locals 1
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
    .line 10
    if-eqz p4, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRByteStreamModifier;->copy([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
