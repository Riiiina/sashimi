.class public Lcom/google/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 74
    const-string v1, "Protocol message end-group tag did not match expected tag."

    .line 73
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 69
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 68
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 79
    const-string v1, "Protocol message tag had invalid wire type."

    .line 78
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 64
    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 63
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 58
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 57
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 84
    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 83
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 90
    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 89
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 50
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    .line 49
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
