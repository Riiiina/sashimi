.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Response;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1

    .prologue
    .line 2526
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2566
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 2567
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 2566
    throw v0

    .line 2569
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 3

    .prologue
    .line 2527
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;-><init>()V

    .line 2528
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2529
    return-object v0
.end method


# virtual methods
.method public addAllBlurbList(Ljava/lang/Iterable;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;"
        }
    .end annotation

    .prologue
    .line 2663
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2667
    return-object p0
.end method

.method public addBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2659
    return-object p0
.end method

.method public addBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 2645
    if-nez p1, :cond_0

    .line 2646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2648
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2651
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2652
    return-object p0
.end method

.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2560
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 3

    .prologue
    .line 2573
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    if-nez v1, :cond_0

    .line 2574
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2575
    const-string v2, "build() has already been called on this Builder."

    .line 2574
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2577
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2578
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2579
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2578
    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2581
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2582
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2583
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    if-nez v0, :cond_0

    .line 2538
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2539
    const-string v1, "Cannot call clear() after build()."

    .line 2538
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2541
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .line 2542
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBlurbList()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2671
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2

    .prologue
    .line 2546
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurbList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public getBlurbListCount()I
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListCount()I

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
    .line 2625
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1

    .prologue
    .line 2550
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    .prologue
    .line 2587
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-object p0

    .line 2588
    :cond_1
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2590
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;Ljava/util/List;)V

    .line 2592
    :cond_2
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2603
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2607
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2608
    :sswitch_0
    return-object p0

    .line 2613
    :sswitch_1
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    .line 2614
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2615
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->addBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    goto :goto_0

    .line 2603
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBlurbList(ILcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2642
    return-object p0
.end method

.method public setBlurbList(ILcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 2634
    if-nez p2, :cond_0

    .line 2635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2638
    return-object p0
.end method
