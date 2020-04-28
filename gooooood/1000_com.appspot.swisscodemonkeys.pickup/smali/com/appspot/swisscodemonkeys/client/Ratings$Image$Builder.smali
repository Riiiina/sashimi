.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Image;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 253
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 253
    throw v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;-><init>()V

    .line 215
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 216
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 262
    const-string v2, "build() has already been called on this Builder."

    .line 261
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 265
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 266
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 226
    const-string v1, "Cannot call clear() after build()."

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 229
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContent()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 336
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V

    .line 337
    return-object p0
.end method

.method public clearContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 378
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)V

    .line 379
    return-object p0
.end method

.method public clearThumbnail()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 357
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V

    .line 358
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent()Z

    move-result v0

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 270
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object p0

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 274
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setThumbnail(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getContentType()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContentType(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 289
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 293
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    :sswitch_0
    return-object p0

    .line 299
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    goto :goto_0

    .line 303
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setThumbnail(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    goto :goto_0

    .line 307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 308
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    move-result-object v2

    .line 309
    .local v2, "value":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContentType(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    goto :goto_0

    .line 289
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 331
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V

    .line 332
    return-object p0
.end method

.method public setContentType(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 373
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)V

    .line 374
    return-object p0
.end method

.method public setThumbnail(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Z)V

    .line 352
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;Lcom/google/protobuf/ByteString;)V

    .line 353
    return-object p0
.end method
