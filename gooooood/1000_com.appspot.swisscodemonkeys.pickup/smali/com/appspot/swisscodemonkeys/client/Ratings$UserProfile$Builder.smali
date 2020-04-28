.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3028
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1

    .prologue
    .line 2991
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3031
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 3032
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 3031
    throw v0

    .line 3034
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 3

    .prologue
    .line 2992
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;-><init>()V

    .line 2993
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 2994
    return-object v0
.end method


# virtual methods
.method public build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3025
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 3

    .prologue
    .line 3038
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-nez v1, :cond_0

    .line 3039
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3040
    const-string v2, "build() has already been called on this Builder."

    .line 3039
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3042
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3043
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3044
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-nez v0, :cond_0

    .line 3003
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3004
    const-string v1, "Cannot call clear() after build()."

    .line 3003
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3006
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;-><init>(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3007
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->clear()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAbout()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3194
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3195
    return-object p0
.end method

.method public clearAge()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3381
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3382
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V

    .line 3383
    return-object p0
.end method

.method public clearComments()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3289
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 3290
    return-object p0
.end method

.method public clearGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3215
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)V

    .line 3216
    return-object p0
.end method

.method public clearHasPicture()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3345
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3346
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3347
    return-object p0
.end method

.method public clearImage()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3252
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 3253
    return-object p0
.end method

.method public clearImageUrl()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3310
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3311
    return-object p0
.end method

.method public clearIsFull()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3363
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3364
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3365
    return-object p0
.end method

.method public clearNickname()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3173
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3174
    return-object p0
.end method

.method public clearUserId()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3327
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3328
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V

    .line 3329
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2

    .prologue
    .line 3011
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->create()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->clone()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAbout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v0

    return v0
.end method

.method public getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 3015
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    .locals 1

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getHasPicture()Z
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getHasPicture()Z

    move-result v0

    return v0
.end method

.method public getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFull()Z
    .locals 1

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getIsFull()Z

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getUserId()I

    move-result v0

    return v0
.end method

.method public hasAbout()Z
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout()Z

    move-result v0

    return v0
.end method

.method public hasAge()Z
    .locals 1

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v0

    return v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v0

    return v0
.end method

.method public hasHasPicture()Z
    .locals 1

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasIsFull()Z
    .locals 1

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull()Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeComments(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3280
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    .line 3279
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 3284
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3285
    return-object p0

    .line 3282
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    goto :goto_0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 3048
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return-object p0

    .line 3049
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3050
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3052
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3053
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3055
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3056
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3058
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3059
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3061
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3062
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeComments(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3064
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3065
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3067
    :cond_7
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3068
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setUserId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3070
    :cond_8
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3071
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getHasPicture()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setHasPicture(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3073
    :cond_9
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3074
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getIsFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setIsFull(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 3076
    :cond_a
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3077
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAge(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3087
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3088
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 3092
    invoke-virtual {p0, p1, p2, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3093
    :sswitch_0
    return-object p0

    .line 3098
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3102
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3106
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3107
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v3

    .line 3108
    .local v3, "value":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    if-eqz v3, :cond_0

    .line 3109
    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3114
    .end local v0    # "rawValue":I
    .end local v3    # "value":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    :sswitch_4
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v1

    .line 3115
    .local v1, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3116
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 3118
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3119
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3123
    .end local v1    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    :sswitch_5
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v1

    .line 3124
    .local v1, "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->hasComments()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3125
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 3127
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3128
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setComments(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3132
    .end local v1    # "subBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3136
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setUserId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3140
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setHasPicture(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 3144
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setIsFull(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto/16 :goto_0

    .line 3148
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAge(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto/16 :goto_0

    .line 3088
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3242
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3243
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    .line 3242
    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 3247
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3248
    return-object p0

    .line 3245
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    goto :goto_0
.end method

.method public setAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3185
    if-nez p1, :cond_0

    .line 3186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3188
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3189
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3190
    return-object p0
.end method

.method public setAge(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3377
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V

    .line 3378
    return-object p0
.end method

.method public setComments(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3273
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 3274
    return-object p0
.end method

.method public setComments(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 3264
    if-nez p1, :cond_0

    .line 3265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3268
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 3269
    return-object p0
.end method

.method public setGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    .prologue
    .line 3206
    if-nez p1, :cond_0

    .line 3207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3209
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3210
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)V

    .line 3211
    return-object p0
.end method

.method public setHasPicture(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3341
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3342
    return-object p0
.end method

.method public setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .prologue
    .line 3235
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3236
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 3237
    return-object p0
.end method

.method public setImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 3227
    if-nez p1, :cond_0

    .line 3228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3230
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3231
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V

    .line 3232
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3301
    if-nez p1, :cond_0

    .line 3302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3304
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3305
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3306
    return-object p0
.end method

.method public setIsFull(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3359
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3360
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3164
    if-nez p1, :cond_0

    .line 3165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3167
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3168
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    .line 3169
    return-object p0
.end method

.method public setUserId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V

    .line 3323
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->result:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V

    .line 3324
    return-object p0
.end method
