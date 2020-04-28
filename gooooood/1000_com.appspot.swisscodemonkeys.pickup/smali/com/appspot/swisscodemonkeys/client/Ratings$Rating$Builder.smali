.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1

    .prologue
    .line 1732
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1772
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1772
    throw v0

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 3

    .prologue
    .line 1733
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;-><init>()V

    .line 1734
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1735
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1766
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 3

    .prologue
    .line 1779
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    if-nez v1, :cond_0

    .line 1780
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1781
    const-string v2, "build() has already been called on this Builder."

    .line 1780
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1784
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1785
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    if-nez v0, :cond_0

    .line 1744
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1745
    const-string v1, "Cannot call clear() after build()."

    .line 1744
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1748
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1865
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1866
    return-object p0
.end method

.method public clearIpAddress()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1904
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1905
    return-object p0
.end method

.method public clearRating()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1882
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1883
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V

    .line 1884
    return-object p0
.end method

.method public clearScmid()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1925
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getScmid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1926
    return-object p0
.end method

.method public clearTime()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1942
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1943
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V

    .line 1944
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2

    .prologue
    .line 1752
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1

    .prologue
    .line 1756
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getRating()I

    move-result v0

    return v0
.end method

.method public getScmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getScmid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getTime()I

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress()Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating()Z

    move-result v0

    return v0
.end method

.method public hasScmid()Z
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .prologue
    .line 1789
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-object p0

    .line 1790
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1793
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1796
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1797
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setIpAddress(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1799
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1800
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getScmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setScmid(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1802
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1814
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1818
    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1819
    :sswitch_0
    return-object p0

    .line 1824
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0

    .line 1828
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0

    .line 1832
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setIpAddress(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0

    .line 1836
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setScmid(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0

    .line 1840
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->setTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    goto :goto_0

    .line 1814
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1856
    if-nez p1, :cond_0

    .line 1857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1860
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1861
    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1895
    if-nez p1, :cond_0

    .line 1896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1899
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1900
    return-object p0
.end method

.method public setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1878
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V

    .line 1879
    return-object p0
.end method

.method public setScmid(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1916
    if-nez p1, :cond_0

    .line 1917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1920
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V

    .line 1921
    return-object p0
.end method

.method public setTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V

    .line 1938
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V

    .line 1939
    return-object p0
.end method
