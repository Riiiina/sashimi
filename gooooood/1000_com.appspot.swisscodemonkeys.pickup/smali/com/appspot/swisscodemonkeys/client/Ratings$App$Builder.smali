.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$App;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6174
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6213
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1

    .prologue
    .line 6176
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6215
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6217
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6216
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 6217
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 6216
    throw v0

    .line 6219
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 3

    .prologue
    .line 6177
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;-><init>()V

    .line 6178
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6179
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1

    .prologue
    .line 6207
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6208
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6210
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 3

    .prologue
    .line 6223
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    if-nez v1, :cond_0

    .line 6224
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6225
    const-string v2, "build() has already been called on this Builder."

    .line 6224
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6227
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6228
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6229
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2

    .prologue
    .line 6187
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    if-nez v0, :cond_0

    .line 6188
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6189
    const-string v1, "Cannot call clear() after build()."

    .line 6188
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6191
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6192
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPackage()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2

    .prologue
    .line 6315
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6316
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V

    .line 6317
    return-object p0
.end method

.method public clearTitle()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2

    .prologue
    .line 6294
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6295
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V

    .line 6296
    return-object p0
.end method

.method public clearVersionId()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6333
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6334
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$App;I)V

    .line 6335
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2

    .prologue
    .line 6196
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1

    .prologue
    .line 6200
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6304
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6283
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionId()I
    .locals 1

    .prologue
    .line 6325
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getVersionId()I

    move-result v0

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .prologue
    .line 6301
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6280
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public hasVersionId()Z
    .locals 1

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1

    .prologue
    .line 6183
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6204
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .prologue
    .line 6233
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6243
    :cond_0
    :goto_0
    return-object p0

    .line 6234
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6235
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 6237
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6238
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setPackage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 6240
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6241
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getVersionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setVersionId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6252
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6256
    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6257
    :sswitch_0
    return-object p0

    .line 6262
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    goto :goto_0

    .line 6266
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setPackage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    goto :goto_0

    .line 6270
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setVersionId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    goto :goto_0

    .line 6252
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6307
    if-nez p1, :cond_0

    .line 6308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6310
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6311
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V

    .line 6312
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6286
    if-nez p1, :cond_0

    .line 6287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6289
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6290
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V

    .line 6291
    return-object p0
.end method

.method public setVersionId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6328
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V

    .line 6329
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$App;I)V

    .line 6330
    return-object p0
.end method
