.class public final Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;",
        "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 213
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 213
    throw v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;-><init>()V

    .line 175
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;-><init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 176
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 222
    const-string v2, "build() has already been called on this Builder."

    .line 221
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 225
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 226
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    const-string v1, "Cannot call clear() after build()."

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;-><init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 189
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->clear()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 310
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Ljava/lang/String;)V

    .line 311
    return-object p0
.end method

.method public clearTimestamp()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 289
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;J)V

    .line 290
    return-object p0
.end method

.method public clearValue()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 328
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;I)V

    .line 329
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getValue()I

    move-result v0

    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .prologue
    .line 230
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object p0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 234
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setEvent(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 237
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setValue(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 249
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 253
    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :sswitch_0
    return-object p0

    .line 259
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    goto :goto_0

    .line 263
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setEvent(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    goto :goto_0

    .line 267
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setValue(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 305
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 283
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 284
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;J)V

    .line 285
    return-object p0
.end method

.method public setValue(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V

    .line 323
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;I)V

    .line 324
    return-object p0
.end method
