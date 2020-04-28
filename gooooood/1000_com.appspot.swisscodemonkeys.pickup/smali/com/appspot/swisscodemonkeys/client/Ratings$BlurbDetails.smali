.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurbDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    }
.end annotation


# static fields
.field public static final ALLOW_COMMENTING_FIELD_NUMBER:I = 0x8

.field public static final AUTHOR_ABOUT_FIELD_NUMBER:I = 0x1

.field public static final EXTERNAL_ID_FIELD_NUMBER:I = 0x7

.field public static final FAVORITED_FIELD_NUMBER:I = 0x2

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x4

.field public static final OWNED_BY_USER_FIELD_NUMBER:I = 0x6

.field public static final PROFILE_FIELD_NUMBER:I = 0x5

.field public static final RATING_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;


# instance fields
.field private allowCommenting_:Z

.field private authorAbout_:Ljava/lang/String;

.field private externalId_:Ljava/lang/String;

.field private favorited_:Z

.field private hasAllowCommenting:Z

.field private hasAuthorAbout:Z

.field private hasExternalId:Z

.field private hasFavorited:Z

.field private hasImageUrl:Z

.field private hasOwnedByUser:Z

.field private hasProfile:Z

.field private hasRating:Z

.field private imageUrl_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private ownedByUser_:Z

.field private profile_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

.field private rating_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4741
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 4742
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 4743
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->initFields()V

    .line 4187
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4207
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->authorAbout_:Ljava/lang/String;

    .line 4214
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->favorited_:Z

    .line 4221
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->rating_:I

    .line 4228
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->imageUrl_:Ljava/lang/String;

    .line 4242
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->ownedByUser_:Z

    .line 4249
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->externalId_:Ljava/lang/String;

    .line 4256
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->allowCommenting_:Z

    .line 4299
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->memoizedSerializedSize:I

    .line 4191
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->initFields()V

    .line 4192
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 0

    .prologue
    .line 4190
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4207
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->authorAbout_:Ljava/lang/String;

    .line 4214
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->favorited_:Z

    .line 4221
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->rating_:I

    .line 4228
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->imageUrl_:Ljava/lang/String;

    .line 4242
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->ownedByUser_:Z

    .line 4249
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->externalId_:Ljava/lang/String;

    .line 4256
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->allowCommenting_:Z

    .line 4299
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->memoizedSerializedSize:I

    .line 4193
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4227
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4228
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4234
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile:Z

    return-void
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 4235
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->profile_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->profile_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4241
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser:Z

    return-void
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4242
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->ownedByUser_:Z

    return-void
.end method

.method static synthetic access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4248
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId:Z

    return-void
.end method

.method static synthetic access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4249
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->externalId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4255
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting:Z

    return-void
.end method

.method static synthetic access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4256
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->allowCommenting_:Z

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4206
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4207
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->authorAbout_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4213
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4214
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->favorited_:Z

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;Z)V
    .locals 0

    .prologue
    .line 4220
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;I)V
    .locals 0

    .prologue
    .line 4221
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->rating_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1

    .prologue
    .line 4197
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4261
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->profile_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 4262
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1

    .prologue
    .line 4408
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .prologue
    .line 4411
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4377
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    .line 4378
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4379
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v1

    .line 4381
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4388
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    .line 4389
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4390
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v1

    .line 4392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4344
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4351
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    .line 4350
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4398
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4404
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    .line 4405
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    .line 4404
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4366
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4372
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4373
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    .line 4372
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4355
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4361
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    .line 4362
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    .line 4361
    return-object v0
.end method


# virtual methods
.method public getAllowCommenting()Z
    .locals 1

    .prologue
    .line 4258
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->allowCommenting_:Z

    return v0
.end method

.method public getAuthorAbout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->authorAbout_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 1

    .prologue
    .line 4201
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->externalId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorited()Z
    .locals 1

    .prologue
    .line 4216
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->favorited_:Z

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4230
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedByUser()Z
    .locals 1

    .prologue
    .line 4244
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->ownedByUser_:Z

    return v0
.end method

.method public getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->profile_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 4223
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->rating_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4301
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->memoizedSerializedSize:I

    .line 4302
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4338
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4304
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4305
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4307
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAuthorAbout()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4309
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4311
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getFavorited()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4313
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4315
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4317
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4319
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4321
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4323
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4325
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4327
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4329
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4331
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4333
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4335
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAllowCommenting()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4337
    :cond_8
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->memoizedSerializedSize:I

    move v1, v0

    .line 4338
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public hasAllowCommenting()Z
    .locals 1

    .prologue
    .line 4257
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting:Z

    return v0
.end method

.method public hasAuthorAbout()Z
    .locals 1

    .prologue
    .line 4208
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout:Z

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 4250
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId:Z

    return v0
.end method

.method public hasFavorited()Z
    .locals 1

    .prologue
    .line 4215
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 4229
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl:Z

    return v0
.end method

.method public hasOwnedByUser()Z
    .locals 1

    .prologue
    .line 4243
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser:Z

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 4236
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile:Z

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 4222
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4264
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4265
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1

    .prologue
    .line 4409
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;
    .locals 1

    .prologue
    .line 4413
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4272
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getSerializedSize()I

    .line 4273
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAuthorAbout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4274
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAuthorAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4276
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4277
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getFavorited()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4279
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4280
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4282
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4283
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4285
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4286
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4288
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4289
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4291
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasExternalId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4292
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4294
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasAllowCommenting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4295
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAllowCommenting()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4297
    :cond_7
    return-void
.end method
