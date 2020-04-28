.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    }
.end annotation


# static fields
.field public static final BLURB_LIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;


# instance fields
.field private blurbList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2678
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2679
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 2680
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->initFields()V

    .line 2384
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    .line 2430
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->memoizedSerializedSize:I

    .line 2388
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->initFields()V

    .line 2389
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)V
    .locals 0

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2390
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    .line 2430
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->memoizedSerializedSize:I

    .line 2390
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1

    .prologue
    .line 2394
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2414
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1

    .prologue
    .line 2511
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .prologue
    .line 2514
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2480
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    .line 2481
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v1

    .line 2484
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2491
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    .line 2492
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2493
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v1

    .line 2495
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2447
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2453
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    .line 2454
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    .line 2453
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2501
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2507
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    .line 2508
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    .line 2507
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2469
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2475
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    .line 2476
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    .line 2475
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2458
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2464
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    .line 2465
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    .line 2464
    return-object v0
.end method


# virtual methods
.method public getBlurbList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object p0
.end method

.method public getBlurbListCount()I
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlurbListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->blurbList_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1

    .prologue
    .line 2398
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2432
    iget v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->memoizedSerializedSize:I

    .line 2433
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2441
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 2435
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 2436
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2440
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->memoizedSerializedSize:I

    move v2, v1

    .line 2441
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 2436
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2438
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2419
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2416
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2417
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1

    .prologue
    .line 2512
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getSerializedSize()I

    .line 2425
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2428
    return-void

    .line 2425
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2426
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0
.end method
