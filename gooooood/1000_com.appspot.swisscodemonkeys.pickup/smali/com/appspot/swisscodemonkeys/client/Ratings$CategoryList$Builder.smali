.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4025
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4064
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1

    .prologue
    .line 4027
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4066
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4068
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4067
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 4068
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 4067
    throw v0

    .line 4070
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 3

    .prologue
    .line 4028
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;-><init>()V

    .line 4029
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4030
    return-object v0
.end method


# virtual methods
.method public addAllCategory(Ljava/lang/Iterable;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Category;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;"
        }
    .end annotation

    .prologue
    .line 4164
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/appspot/swisscodemonkeys/client/Ratings$Category;>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4165
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4167
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4168
    return-object p0
.end method

.method public addCategory(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4157
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4159
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4160
    return-object p0
.end method

.method public addCategory(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .prologue
    .line 4146
    if-nez p1, :cond_0

    .line 4147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4149
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4150
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4152
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4153
    return-object p0
.end method

.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4059
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4061
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 3

    .prologue
    .line 4074
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    if-nez v1, :cond_0

    .line 4075
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4076
    const-string v2, "build() has already been called on this Builder."

    .line 4075
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4078
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 4079
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4080
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 4079
    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4082
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4083
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4084
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2

    .prologue
    .line 4038
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    if-nez v0, :cond_0

    .line 4039
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4040
    const-string v1, "Cannot call clear() after build()."

    .line 4039
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4042
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4043
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCategory()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2

    .prologue
    .line 4171
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4172
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2

    .prologue
    .line 4047
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategory(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getCategory(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1

    .prologue
    .line 4051
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4055
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .prologue
    .line 4088
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4095
    :cond_0
    :goto_0
    return-object p0

    .line 4089
    :cond_1
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4091
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V

    .line 4093
    :cond_2
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4104
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4108
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4109
    :sswitch_0
    return-object p0

    .line 4114
    :sswitch_1
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    .line 4115
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4116
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->addCategory(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    goto :goto_0

    .line 4104
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(ILcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4143
    return-object p0
.end method

.method public setCategory(ILcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .prologue
    .line 4135
    if-nez p2, :cond_0

    .line 4136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4138
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4139
    return-object p0
.end method
