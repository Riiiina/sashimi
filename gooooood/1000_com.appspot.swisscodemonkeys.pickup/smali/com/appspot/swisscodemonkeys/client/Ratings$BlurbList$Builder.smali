.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2141
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2180
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1

    .prologue
    .line 2143
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2183
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 2184
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 2183
    throw v0

    .line 2186
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 3

    .prologue
    .line 2144
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;-><init>()V

    .line 2145
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2146
    return-object v0
.end method


# virtual methods
.method public addAllList(Ljava/lang/Iterable;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;"
        }
    .end annotation

    .prologue
    .line 2301
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2305
    return-object p0
.end method

.method public addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2297
    return-object p0
.end method

.method public addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 2283
    if-nez p1, :cond_0

    .line 2284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2287
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    return-object p0
.end method

.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2177
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 3

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    if-nez v1, :cond_0

    .line 2191
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2192
    const-string v2, "build() has already been called on this Builder."

    .line 2191
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2194
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2195
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2196
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2195
    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2198
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2199
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2200
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    if-nez v0, :cond_0

    .line 2155
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2156
    const-string v1, "Cannot call clear() after build()."

    .line 2155
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2158
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2159
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCategory()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 3

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2326
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;J)V

    .line 2327
    return-object p0
.end method

.method public clearList()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2309
    return-object p0
.end method

.method public clearNext()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2347
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V

    .line 2348
    return-object p0
.end method

.method public clearTitle()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2368
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V

    .line 2369
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2

    .prologue
    .line 2163
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()J
    .locals 2

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 2167
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public getList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public getListCount()I
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListCount()I

    move-result v0

    return v0
.end method

.method public getListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 2204
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return-object p0

    .line 2205
    :cond_1
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2206
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2207
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V

    .line 2209
    :cond_2
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2211
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2212
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 2214
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2215
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setNext(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 2217
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2229
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2233
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2234
    :sswitch_0
    return-object p0

    .line 2239
    :sswitch_1
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 2240
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2241
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    goto :goto_0

    .line 2245
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    goto :goto_0

    .line 2249
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setNext(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    goto :goto_0

    .line 2253
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    goto :goto_0

    .line 2229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2321
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;J)V

    .line 2322
    return-object p0
.end method

.method public setList(ILcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2280
    return-object p0
.end method

.method public setList(ILcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 2272
    if-nez p2, :cond_0

    .line 2273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2276
    return-object p0
.end method

.method public setNext(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2338
    if-nez p1, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2342
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V

    .line 2343
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2359
    if-nez p1, :cond_0

    .line 2360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V

    .line 2363
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V

    .line 2364
    return-object p0
.end method
