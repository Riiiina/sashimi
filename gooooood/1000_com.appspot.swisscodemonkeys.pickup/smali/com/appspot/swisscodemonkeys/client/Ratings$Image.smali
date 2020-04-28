.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;,
        Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field public static final CONTENT_TYPE_FIELD_NUMBER:I = 0x3

.field public static final THUMBNAIL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;


# instance fields
.field private contentType_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

.field private content_:Lcom/google/protobuf/ByteString;

.field private hasContent:Z

.field private hasContentType:Z

.field private hasThumbnail:Z

.field private memoizedSerializedSize:I

.field private thumbnail_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 386
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 387
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 388
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->initFields()V

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 70
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->content_:Lcom/google/protobuf/ByteString;

    .line 77
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->thumbnail_:Lcom/google/protobuf/ByteString;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 70
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->content_:Lcom/google/protobuf/ByteString;

    .line 77
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->thumbnail_:Lcom/google/protobuf/ByteString;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->content_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->thumbnail_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->contentType_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->contentType_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    .line 90
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 201
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    .line 179
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 141
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 163
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 152
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    .line 151
    return-object v0
.end method


# virtual methods
.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->contentType_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 111
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->memoizedSerializedSize:I

    .line 112
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 128
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 114
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    :cond_3
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->memoizedSerializedSize:I

    move v1, v0

    .line 128
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getThumbnail()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->thumbnail_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent:Z

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType:Z

    return v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getSerializedSize()I

    .line 98
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 107
    :cond_2
    return-void
.end method
