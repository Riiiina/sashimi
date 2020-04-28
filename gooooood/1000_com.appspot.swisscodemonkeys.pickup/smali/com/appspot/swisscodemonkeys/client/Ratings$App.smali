.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$App;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    }
.end annotation


# static fields
.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$App;


# instance fields
.field private hasPackage:Z

.field private hasTitle:Z

.field private hasVersionId:Z

.field private memoizedSerializedSize:I

.field private package_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private versionId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6342
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .line 6343
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 6344
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->initFields()V

    .line 6014
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6034
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->title_:Ljava/lang/String;

    .line 6041
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->package_:Ljava/lang/String;

    .line 6048
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->versionId_:I

    .line 6072
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->memoizedSerializedSize:I

    .line 6018
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->initFields()V

    .line 6019
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)V
    .locals 0

    .prologue
    .line 6017
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 6020
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6034
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->title_:Ljava/lang/String;

    .line 6041
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->package_:Ljava/lang/String;

    .line 6048
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->versionId_:I

    .line 6072
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->memoizedSerializedSize:I

    .line 6020
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V
    .locals 0

    .prologue
    .line 6033
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6034
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->title_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V
    .locals 0

    .prologue
    .line 6040
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6041
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->package_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$App;Z)V
    .locals 0

    .prologue
    .line 6047
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$App;I)V
    .locals 0

    .prologue
    .line 6048
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->versionId_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1

    .prologue
    .line 6024
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6053
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1

    .prologue
    .line 6161
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    .prologue
    .line 6164
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6130
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    .line 6131
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6132
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v1

    .line 6134
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6141
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    .line 6142
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6143
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v1

    .line 6145
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6097
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6103
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 6104
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    .line 6103
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6151
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6157
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    .line 6158
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    .line 6157
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6119
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6125
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 6126
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    .line 6125
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6108
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6114
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 6115
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    .line 6114
    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    .locals 1

    .prologue
    .line 6028
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6043
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->package_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 6074
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->memoizedSerializedSize:I

    .line 6075
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6091
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 6077
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 6078
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6080
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6082
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6084
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6086
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6088
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getVersionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6090
    :cond_3
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->memoizedSerializedSize:I

    move v1, v0

    .line 6091
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6036
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()I
    .locals 1

    .prologue
    .line 6050
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->versionId_:I

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .prologue
    .line 6042
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6035
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle:Z

    return v0
.end method

.method public hasVersionId()Z
    .locals 1

    .prologue
    .line 6049
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6055
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1

    .prologue
    .line 6162
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .locals 1

    .prologue
    .line 6166
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$App;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

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
    .line 6060
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getSerializedSize()I

    .line 6061
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6062
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6064
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6065
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6067
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->hasVersionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6068
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->getVersionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6070
    :cond_2
    return-void
.end method
