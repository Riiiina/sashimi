.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5137
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5176
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1

    .prologue
    .line 5139
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5178
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5180
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5179
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 5180
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 5179
    throw v0

    .line 5182
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 3

    .prologue
    .line 5140
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;-><init>()V

    .line 5141
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5142
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1

    .prologue
    .line 5170
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5171
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5173
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 3

    .prologue
    .line 5186
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    if-nez v1, :cond_0

    .line 5187
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5188
    const-string v2, "build() has already been called on this Builder."

    .line 5187
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5190
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5191
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5192
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    if-nez v0, :cond_0

    .line 5151
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5152
    const-string v1, "Cannot call clear() after build()."

    .line 5151
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5154
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5155
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseProfileUrl()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5625
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5626
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBaseProfileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5627
    return-object p0
.end method

.method public clearBlockedHours()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5661
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5662
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5663
    return-object p0
.end method

.method public clearChannel()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5418
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5419
    return-object p0
.end method

.method public clearContactAgainSeconds()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5456
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5457
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5458
    return-object p0
.end method

.method public clearEndChannelListLimit()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5568
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5569
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5570
    return-object p0
.end method

.method public clearHost()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5357
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5358
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5359
    return-object p0
.end method

.method public clearMaxBlocks()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5643
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5644
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5645
    return-object p0
.end method

.method public clearMinShortWaitMs()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5550
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5551
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5552
    return-object p0
.end method

.method public clearPassword()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5396
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5397
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5398
    return-object p0
.end method

.method public clearPort()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5375
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5376
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5377
    return-object p0
.end method

.method public clearRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5477
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5478
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)V

    .line 5479
    return-object p0
.end method

.method public clearShortMLen()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5532
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5533
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5534
    return-object p0
.end method

.method public clearUseExitDialog()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5604
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5605
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5606
    return-object p0
.end method

.method public clearUseWebview()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5586
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5587
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5588
    return-object p0
.end method

.method public clearUserPrefix()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5438
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5439
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUserPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5440
    return-object p0
.end method

.method public clearWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5515
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 5516
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2

    .prologue
    .line 5159
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5614
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBaseProfileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedHours()I
    .locals 1

    .prologue
    .line 5653
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBlockedHours()I

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5406
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactAgainSeconds()I
    .locals 1

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getContactAgainSeconds()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1

    .prologue
    .line 5163
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEndChannelListLimit()I
    .locals 1

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getEndChannelListLimit()I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5346
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBlocks()I
    .locals 1

    .prologue
    .line 5635
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMaxBlocks()I

    move-result v0

    return v0
.end method

.method public getMinShortWaitMs()I
    .locals 1

    .prologue
    .line 5542
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMinShortWaitMs()I

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 5367
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPort()I

    move-result v0

    return v0
.end method

.method public getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 1

    .prologue
    .line 5466
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v0

    return-object v0
.end method

.method public getShortMLen()I
    .locals 1

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getShortMLen()I

    move-result v0

    return v0
.end method

.method public getUseExitDialog()Z
    .locals 1

    .prologue
    .line 5596
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseExitDialog()Z

    move-result v0

    return v0
.end method

.method public getUseWebview()Z
    .locals 1

    .prologue
    .line 5578
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseWebview()Z

    move-result v0

    return v0
.end method

.method public getUserPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUserPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseProfileUrl()Z
    .locals 1

    .prologue
    .line 5611
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl()Z

    move-result v0

    return v0
.end method

.method public hasBlockedHours()Z
    .locals 1

    .prologue
    .line 5650
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours()Z

    move-result v0

    return v0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 5403
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel()Z

    move-result v0

    return v0
.end method

.method public hasContactAgainSeconds()Z
    .locals 1

    .prologue
    .line 5445
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds()Z

    move-result v0

    return v0
.end method

.method public hasEndChannelListLimit()Z
    .locals 1

    .prologue
    .line 5557
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit()Z

    move-result v0

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 5343
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost()Z

    move-result v0

    return v0
.end method

.method public hasMaxBlocks()Z
    .locals 1

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks()Z

    move-result v0

    return v0
.end method

.method public hasMinShortWaitMs()Z
    .locals 1

    .prologue
    .line 5539
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 5382
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword()Z

    move-result v0

    return v0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 5364
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort()Z

    move-result v0

    return v0
.end method

.method public hasRequestImages()Z
    .locals 1

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages()Z

    move-result v0

    return v0
.end method

.method public hasShortMLen()Z
    .locals 1

    .prologue
    .line 5521
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen()Z

    move-result v0

    return v0
.end method

.method public hasUseExitDialog()Z
    .locals 1

    .prologue
    .line 5593
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog()Z

    move-result v0

    return v0
.end method

.method public hasUseWebview()Z
    .locals 1

    .prologue
    .line 5575
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview()Z

    move-result v0

    return v0
.end method

.method public hasUserPrefix()Z
    .locals 1

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix()Z

    move-result v0

    return v0
.end method

.method public hasWelcomeBlurb()Z
    .locals 1

    .prologue
    .line 5484
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1

    .prologue
    .line 5146
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5167
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .prologue
    .line 5196
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5245
    :cond_0
    :goto_0
    return-object p0

    .line 5197
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5198
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setHost(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5200
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5201
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setPort(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5203
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5204
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setPassword(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5206
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5207
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setChannel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5209
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5210
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUserPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUserPrefix(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5212
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5213
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getContactAgainSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setContactAgainSeconds(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5215
    :cond_7
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5216
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setRequestImages(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5218
    :cond_8
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5219
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeWelcomeBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5221
    :cond_9
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5222
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getShortMLen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setShortMLen(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5224
    :cond_a
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5225
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMinShortWaitMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setMinShortWaitMs(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5227
    :cond_b
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5228
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getEndChannelListLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setEndChannelListLimit(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5230
    :cond_c
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5231
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseWebview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUseWebview(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5233
    :cond_d
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5234
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseExitDialog()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUseExitDialog(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5236
    :cond_e
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5237
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBaseProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setBaseProfileUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5239
    :cond_f
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5240
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMaxBlocks()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setMaxBlocks(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5242
    :cond_10
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5243
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBlockedHours()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setBlockedHours(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5254
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 5258
    invoke-virtual {p0, p1, p2, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5259
    :sswitch_0
    return-object p0

    .line 5264
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setHost(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5268
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setPort(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5272
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setPassword(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5276
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setChannel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5280
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUserPrefix(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5284
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setContactAgainSeconds(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5288
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5289
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v3

    .line 5290
    .local v3, "value":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    if-eqz v3, :cond_0

    .line 5291
    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setRequestImages(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5296
    .end local v0    # "rawValue":I
    .end local v3    # "value":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    :sswitch_8
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    .line 5297
    .local v1, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->hasWelcomeBlurb()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5298
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 5300
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5301
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setWelcomeBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5305
    .end local v1    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setShortMLen(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5309
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setMinShortWaitMs(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5313
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setEndChannelListLimit(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto :goto_0

    .line 5317
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUseWebview(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0

    .line 5321
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setUseExitDialog(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0

    .line 5325
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setBaseProfileUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0

    .line 5329
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setMaxBlocks(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0

    .line 5333
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->setBlockedHours(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    goto/16 :goto_0

    .line 5254
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeWelcomeBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 5503
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5504
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5505
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5506
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    .line 5505
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 5510
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5511
    return-object p0

    .line 5508
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0
.end method

.method public setBaseProfileUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5617
    if-nez p1, :cond_0

    .line 5618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5620
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5621
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5622
    return-object p0
.end method

.method public setBlockedHours(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5657
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5658
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5409
    if-nez p1, :cond_0

    .line 5410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5412
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5413
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5414
    return-object p0
.end method

.method public setContactAgainSeconds(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5452
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5453
    return-object p0
.end method

.method public setEndChannelListLimit(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5563
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5564
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5565
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5349
    if-nez p1, :cond_0

    .line 5350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5352
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5353
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5354
    return-object p0
.end method

.method public setMaxBlocks(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5639
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5640
    return-object p0
.end method

.method public setMinShortWaitMs(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5545
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5546
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5547
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5388
    if-nez p1, :cond_0

    .line 5389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5391
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5392
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5393
    return-object p0
.end method

.method public setPort(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5370
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5371
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5372
    return-object p0
.end method

.method public setRequestImages(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    .prologue
    .line 5469
    if-nez p1, :cond_0

    .line 5470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5472
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5473
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)V

    .line 5474
    return-object p0
.end method

.method public setShortMLen(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5527
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5528
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V

    .line 5529
    return-object p0
.end method

.method public setUseExitDialog(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5599
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5600
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5601
    return-object p0
.end method

.method public setUseWebview(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5581
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5582
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5583
    return-object p0
.end method

.method public setUserPrefix(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5430
    if-nez p1, :cond_0

    .line 5431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5433
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5434
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V

    .line 5435
    return-object p0
.end method

.method public setWelcomeBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .prologue
    .line 5498
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5499
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 5500
    return-object p0
.end method

.method public setWelcomeBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 5490
    if-nez p1, :cond_0

    .line 5491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5493
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V

    .line 5494
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 5495
    return-object p0
.end method
