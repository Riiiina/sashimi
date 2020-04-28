.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4460
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1

    .prologue
    .line 4423
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4462
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4464
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4463
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 4464
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 4463
    throw v0

    .line 4466
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 3

    .prologue
    .line 4424
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;-><init>()V

    .line 4425
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4426
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4455
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4457
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 3

    .prologue
    .line 4470
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    if-nez v1, :cond_0

    .line 4471
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4472
    const-string v2, "build() has already been called on this Builder."

    .line 4471
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4474
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4475
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4476
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    if-nez v0, :cond_0

    .line 4435
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4436
    const-string v1, "Cannot call clear() after build()."

    .line 4435
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4438
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4439
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowCommenting()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4732
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4733
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4734
    return-object p0
.end method

.method public clearAuthorAbout()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4582
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAuthorAbout()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4583
    return-object p0
.end method

.method public clearExternalId()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4714
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4715
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4716
    return-object p0
.end method

.method public clearFavorited()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4599
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4600
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4601
    return-object p0
.end method

.method public clearImageUrl()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4639
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4640
    return-object p0
.end method

.method public clearOwnedByUser()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4693
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4694
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4695
    return-object p0
.end method

.method public clearProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4676
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 4677
    return-object p0
.end method

.method public clearRating()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4617
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4618
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;I)V

    .line 4619
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2

    .prologue
    .line 4443
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCommenting()Z
    .locals 1

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAllowCommenting()Z

    move-result v0

    return v0
.end method

.method public getAuthorAbout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAuthorAbout()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1

    .prologue
    .line 4447
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorited()Z
    .locals 1

    .prologue
    .line 4591
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getFavorited()Z

    move-result v0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4627
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnedByUser()Z
    .locals 1

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v0

    return v0
.end method

.method public getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 4648
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v0

    return v0
.end method

.method public hasAllowCommenting()Z
    .locals 1

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting()Z

    move-result v0

    return v0
.end method

.method public hasAuthorAbout()Z
    .locals 1

    .prologue
    .line 4567
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout()Z

    move-result v0

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 4700
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId()Z

    move-result v0

    return v0
.end method

.method public hasFavorited()Z
    .locals 1

    .prologue
    .line 4588
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 4624
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasOwnedByUser()Z
    .locals 1

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser()Z

    move-result v0

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 4606
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1

    .prologue
    .line 4430
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .prologue
    .line 4480
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4505
    :cond_0
    :goto_0
    return-object p0

    .line 4481
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4482
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAuthorAbout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setAuthorAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4484
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4485
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getFavorited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setFavorited(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4487
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4488
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4490
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4491
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4493
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4494
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4496
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4497
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4499
    :cond_7
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4500
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setExternalId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4502
    :cond_8
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4503
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAllowCommenting()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4513
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4514
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4518
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4519
    :sswitch_0
    return-object p0

    .line 4524
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setAuthorAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4528
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setFavorited(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4532
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4536
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4540
    :sswitch_5
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    .line 4541
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4542
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 4544
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4545
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4549
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4553
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setExternalId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4557
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    goto :goto_0

    .line 4514
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4665
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4666
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4667
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    .line 4666
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 4671
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4672
    return-object p0

    .line 4669
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    goto :goto_0
.end method

.method public setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4728
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4729
    return-object p0
.end method

.method public setAuthorAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4573
    if-nez p1, :cond_0

    .line 4574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4576
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4577
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4578
    return-object p0
.end method

.method public setExternalId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4706
    if-nez p1, :cond_0

    .line 4707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4709
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4710
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4711
    return-object p0
.end method

.method public setFavorited(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4595
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4596
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4630
    if-nez p1, :cond_0

    .line 4631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4633
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4634
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V

    .line 4635
    return-object p0
.end method

.method public setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4689
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4690
    return-object p0
.end method

.method public setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .prologue
    .line 4659
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4660
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 4661
    return-object p0
.end method

.method public setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 4651
    if-nez p1, :cond_0

    .line 4652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4654
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4655
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 4656
    return-object p0
.end method

.method public setRating(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4612
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V

    .line 4613
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;I)V

    .line 4614
    return-object p0
.end method
