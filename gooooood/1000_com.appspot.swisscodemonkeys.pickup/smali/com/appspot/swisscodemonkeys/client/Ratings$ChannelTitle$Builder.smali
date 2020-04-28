.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5838
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5877
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1

    .prologue
    .line 5840
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5879
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5881
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 5880
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 5881
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 5880
    throw v0

    .line 5883
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 3

    .prologue
    .line 5841
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;-><init>()V

    .line 5842
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 5843
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1

    .prologue
    .line 5871
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5872
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5874
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 3

    .prologue
    .line 5887
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    if-nez v1, :cond_0

    .line 5888
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5889
    const-string v2, "build() has already been called on this Builder."

    .line 5888
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5891
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 5892
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 5893
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2

    .prologue
    .line 5851
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    if-nez v0, :cond_0

    .line 5852
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5853
    const-string v1, "Cannot call clear() after build()."

    .line 5852
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5855
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 5856
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearError()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2

    .prologue
    .line 5997
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5998
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V

    .line 5999
    return-object p0
.end method

.method public clearOk()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5976
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5977
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5978
    return-object p0
.end method

.method public clearTitle()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2

    .prologue
    .line 5958
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5959
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V

    .line 5960
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2

    .prologue
    .line 5860
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1

    .prologue
    .line 5864
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5986
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOk()Z
    .locals 1

    .prologue
    .line 5968
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getOk()Z

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5947
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5983
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasOk()Z
    .locals 1

    .prologue
    .line 5965
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 5944
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1

    .prologue
    .line 5847
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5868
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .prologue
    .line 5897
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5907
    :cond_0
    :goto_0
    return-object p0

    .line 5898
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5899
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    .line 5901
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5902
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getOk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setOk(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    .line 5904
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5905
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setError(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5915
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5916
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5920
    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5921
    :sswitch_0
    return-object p0

    .line 5926
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    goto :goto_0

    .line 5930
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setOk(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    goto :goto_0

    .line 5934
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setError(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    goto :goto_0

    .line 5916
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setError(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5989
    if-nez p1, :cond_0

    .line 5990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5992
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5993
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V

    .line 5994
    return-object p0
.end method

.method public setOk(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5971
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5972
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5973
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5950
    if-nez p1, :cond_0

    .line 5951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5953
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V

    .line 5954
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V

    .line 5955
    return-object p0
.end method
