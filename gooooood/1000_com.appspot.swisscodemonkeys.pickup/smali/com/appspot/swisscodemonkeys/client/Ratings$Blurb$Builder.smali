.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 1

    .prologue
    .line 828
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 868
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 868
    throw v0

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 3

    .prologue
    .line 829
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;-><init>()V

    .line 830
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 831
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 3

    .prologue
    .line 875
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-nez v1, :cond_0

    .line 876
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 877
    const-string v2, "build() has already been called on this Builder."

    .line 876
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 880
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 881
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 841
    const-string v1, "Cannot call clear() after build()."

    .line 840
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 844
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowCommenting()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1523
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$48(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1524
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$49(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1525
    return-object p0
.end method

.method public clearAverageRating()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1126
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;F)V

    .line 1127
    return-object p0
.end method

.method public clearBrowserReplacement()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$42(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1467
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$43(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1468
    return-object p0
.end method

.method public clearCategory()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1183
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;J)V

    .line 1184
    return-object p0
.end method

.method public clearColor()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1239
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1240
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1241
    return-object p0
.end method

.method public clearCommentCount()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1296
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1297
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1298
    return-object p0
.end method

.method public clearContents()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1090
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1091
    return-object p0
.end method

.method public clearFavorited()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1221
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1222
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1223
    return-object p0
.end method

.method public clearGenerationTime()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1143
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1144
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1145
    return-object p0
.end method

.method public clearId()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1165
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1166
    return-object p0
.end method

.method public clearImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$37(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1428
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 1429
    return-object p0
.end method

.method public clearImageUrl()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1355
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1356
    return-object p0
.end method

.method public clearIrcNickname()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$46(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1506
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIrcNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$47(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1507
    return-object p0
.end method

.method public clearIsHtml()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1484
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$44(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1485
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$45(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1486
    return-object p0
.end method

.method public clearLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1334
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 1335
    return-object p0
.end method

.method public clearLastUpdateTime()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1372
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1373
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1374
    return-object p0
.end method

.method public clearNextTime()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1445
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$40(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1446
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$41(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1447
    return-object p0
.end method

.method public clearNickname()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1204
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1205
    return-object p0
.end method

.method public clearOwnedByUser()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1390
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1391
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1392
    return-object p0
.end method

.method public clearRatings()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1107
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1108
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1109
    return-object p0
.end method

.method public clearTextColor()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1257
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1258
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1259
    return-object p0
.end method

.method public clearUrl()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1279
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1280
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2

    .prologue
    .line 848
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCommenting()Z
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v0

    return v0
.end method

.method public getAverageRating()F
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v0

    return v0
.end method

.method public getBrowserReplacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()J
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v0

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public getFavorited()I
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getFavorited()I

    move-result v0

    return v0
.end method

.method public getGenerationTime()I
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIrcNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIrcNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsHtml()Z
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v0

    return v0
.end method

.method public getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTime()I
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastUpdateTime()I

    move-result v0

    return v0
.end method

.method public getNextTime()I
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNextTime()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnedByUser()Z
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v0

    return v0
.end method

.method public getRatings()I
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowCommenting()Z
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting()Z

    move-result v0

    return v0
.end method

.method public hasAverageRating()Z
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating()Z

    move-result v0

    return v0
.end method

.method public hasBrowserReplacement()Z
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement()Z

    move-result v0

    return v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory()Z

    move-result v0

    return v0
.end method

.method public hasColor()Z
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v0

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasContents()Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents()Z

    move-result v0

    return v0
.end method

.method public hasFavorited()Z
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited()Z

    move-result v0

    return v0
.end method

.method public hasGenerationTime()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasIrcNickname()Z
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname()Z

    move-result v0

    return v0
.end method

.method public hasIsHtml()Z
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml()Z

    move-result v0

    return v0
.end method

.method public hasLastBlurb()Z
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v0

    return v0
.end method

.method public hasLastUpdateTime()Z
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime()Z

    move-result v0

    return v0
.end method

.method public hasNextTime()Z
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime()Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v0

    return v0
.end method

.method public hasOwnedByUser()Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser()Z

    move-result v0

    return v0
.end method

.method public hasRatings()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings()Z

    move-result v0

    return v0
.end method

.method public hasTextColor()Z
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 885
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-object p0

    .line 886
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 889
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setRatings(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 892
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 893
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setAverageRating(F)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 895
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 896
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 898
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 899
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 901
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 902
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 904
    :cond_7
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 905
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 907
    :cond_8
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 908
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getFavorited()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setFavorited(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 910
    :cond_9
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 911
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 913
    :cond_a
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 914
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setTextColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 916
    :cond_b
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 917
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 919
    :cond_c
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 920
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 922
    :cond_d
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 923
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 925
    :cond_e
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 926
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 928
    :cond_f
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 929
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastUpdateTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setLastUpdateTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 931
    :cond_10
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 932
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 934
    :cond_11
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 935
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 937
    :cond_12
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 938
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNextTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setNextTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 940
    :cond_13
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 941
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setBrowserReplacement(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 943
    :cond_14
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 944
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setIsHtml(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 946
    :cond_15
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 947
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIrcNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setIrcNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 949
    :cond_16
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 961
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 965
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    :sswitch_0
    return-object p0

    .line 971
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 975
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setRatings(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 979
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setAverageRating(F)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 983
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 987
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 991
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 995
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 999
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setFavorited(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 1003
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 1007
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setTextColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 1011
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 1015
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto :goto_0

    .line 1019
    :sswitch_d
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 1020
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->hasLastBlurb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 1023
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1024
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1028
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1032
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setLastUpdateTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1036
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1040
    :sswitch_11
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    .line 1041
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1042
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 1044
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1045
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1049
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setNextTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1053
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setBrowserReplacement(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1057
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setIsHtml(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1061
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setIrcNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 1065
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    goto/16 :goto_0

    .line 961
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x90 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb0 -> :sswitch_16
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$39(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 1419
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$39(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    .line 1418
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 1423
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$37(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1424
    return-object p0

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    goto :goto_0
.end method

.method public mergeLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 1325
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    .line 1324
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 1329
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1330
    return-object p0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0
.end method

.method public setAllowCommenting(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$48(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1519
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$49(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1520
    return-object p0
.end method

.method public setAverageRating(F)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1121
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;F)V

    .line 1122
    return-object p0
.end method

.method public setBrowserReplacement(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1458
    if-nez p1, :cond_0

    .line 1459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$42(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1462
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$43(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1463
    return-object p0
.end method

.method public setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1178
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;J)V

    .line 1179
    return-object p0
.end method

.method public setColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1235
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1236
    return-object p0
.end method

.method public setCommentCount(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1292
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1293
    return-object p0
.end method

.method public setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1081
    if-nez p1, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1085
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1086
    return-object p0
.end method

.method public setFavorited(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1217
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1218
    return-object p0
.end method

.method public setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1139
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1140
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1156
    if-nez p1, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1160
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1161
    return-object p0
.end method

.method public setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$37(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1412
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 1413
    return-object p0
.end method

.method public setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 1403
    if-nez p1, :cond_0

    .line 1404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$37(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1407
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 1408
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1346
    if-nez p1, :cond_0

    .line 1347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1350
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1351
    return-object p0
.end method

.method public setIrcNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1497
    if-nez p1, :cond_0

    .line 1498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$46(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1501
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$47(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1502
    return-object p0
.end method

.method public setIsHtml(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$44(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1480
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$45(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1481
    return-object p0
.end method

.method public setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1318
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 1319
    return-object p0
.end method

.method public setLastBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1313
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 1314
    return-object p0
.end method

.method public setLastUpdateTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1368
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1369
    return-object p0
.end method

.method public setNextTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$40(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1441
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$41(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1442
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1195
    if-nez p1, :cond_0

    .line 1196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1199
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1200
    return-object p0
.end method

.method public setOwnedByUser(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1386
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1387
    return-object p0
.end method

.method public setRatings(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1103
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1104
    return-object p0
.end method

.method public setTextColor(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1253
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V

    .line 1254
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1270
    if-nez p1, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 1274
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V

    .line 1275
    return-object p0
.end method
