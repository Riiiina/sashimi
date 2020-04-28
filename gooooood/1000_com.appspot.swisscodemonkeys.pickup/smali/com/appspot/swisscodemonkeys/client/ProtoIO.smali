.class public Lcom/appspot/swisscodemonkeys/client/ProtoIO;
.super Ljava/lang/Object;
.source "ProtoIO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractMessages([B)Ljava/util/List;
    .locals 5
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object v2

    .line 24
    .local v2, "in":Lcom/google/protobuf/CodedInputStream;
    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 25
    .local v3, "len":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 30
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v1

    .line 28
    .local v1, "group":[B
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static writeMessages(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 37
    .local v1, "out":Lcom/google/protobuf/CodedOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 42
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 43
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 37
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 38
    .local v0, "b":[B
    array-length v4, v0

    invoke-virtual {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    goto :goto_0
.end method

.method public static writeMessagesProto(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/MessageLite;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<+Lcom/google/protobuf/MessageLite;>;"
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    .line 50
    .local v2, "out":Lcom/google/protobuf/CodedOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 56
    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 57
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 50
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 51
    .local v0, "b":Lcom/google/protobuf/MessageLite;
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v1

    .line 52
    .local v1, "bytes":[B
    array-length v5, v1

    invoke-virtual {v2, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 53
    invoke-virtual {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    goto :goto_0
.end method
