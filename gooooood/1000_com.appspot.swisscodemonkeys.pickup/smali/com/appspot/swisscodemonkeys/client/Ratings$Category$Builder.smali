.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Category;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3607
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3646
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1

    .prologue
    .line 3609
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3648
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3649
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 3650
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 3649
    throw v0

    .line 3652
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 3

    .prologue
    .line 3610
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;-><init>()V

    .line 3611
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3612
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3641
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3643
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 3

    .prologue
    .line 3656
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    if-nez v1, :cond_0

    .line 3657
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3658
    const-string v2, "build() has already been called on this Builder."

    .line 3657
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3660
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3661
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3662
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    if-nez v0, :cond_0

    .line 3621
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3622
    const-string v1, "Cannot call clear() after build()."

    .line 3621
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3624
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3625
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCategoryLink()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3851
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCategoryLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3852
    return-object p0
.end method

.method public clearCommentCount()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3792
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3793
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;I)V

    .line 3794
    return-object p0
.end method

.method public clearId()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3754
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3755
    return-object p0
.end method

.method public clearIsAppsCategory()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3868
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3869
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3870
    return-object p0
.end method

.method public clearLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3830
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 3831
    return-object p0
.end method

.method public clearTitle()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3775
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3776
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2

    .prologue
    .line 3629
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCategoryLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCommentCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1

    .prologue
    .line 3633
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsAppsCategory()Z
    .locals 1

    .prologue
    .line 3860
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getIsAppsCategory()Z

    move-result v0

    return v0
.end method

.method public getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCategoryLink()Z
    .locals 1

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink()Z

    move-result v0

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsAppsCategory()Z
    .locals 1

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory()Z

    move-result v0

    return v0
.end method

.method public hasLastBlurb()Z
    .locals 1

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .prologue
    .line 3666
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return-object p0

    .line 3667
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3668
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3670
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3671
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3673
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3674
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3676
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3677
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3679
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3680
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCategoryLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setCategoryLink(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3682
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3683
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getIsAppsCategory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setIsAppsCategory(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3693
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3694
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3698
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3699
    :sswitch_0
    return-object p0

    .line 3704
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3708
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3712
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3716
    :sswitch_4
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 3717
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->hasLastBlurb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3718
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 3720
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3721
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3725
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setCategoryLink(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3729
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->setIsAppsCategory(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    goto :goto_0

    .line 3694
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3819
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3820
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3821
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    .line 3820
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 3825
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3826
    return-object p0

    .line 3823
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0
.end method

.method public setCategoryLink(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3842
    if-nez p1, :cond_0

    .line 3843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3845
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3846
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3847
    return-object p0
.end method

.method public setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3788
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;I)V

    .line 3789
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3745
    if-nez p1, :cond_0

    .line 3746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3748
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3749
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3750
    return-object p0
.end method

.method public setIsAppsCategory(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3864
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3865
    return-object p0
.end method

.method public setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3814
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 3815
    return-object p0
.end method

.method public setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 3805
    if-nez p1, :cond_0

    .line 3806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3808
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3809
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 3810
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3766
    if-nez p1, :cond_0

    .line 3767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3769
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V

    .line 3770
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V

    .line 3771
    return-object p0
.end method
