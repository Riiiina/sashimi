.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;


# instance fields
.field private category_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Category;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4179
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .line 4180
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 4181
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->initFields()V

    .line 3885
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    .line 3931
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->memoizedSerializedSize:I

    .line 3889
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->initFields()V

    .line 3890
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)V
    .locals 0

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    .line 3931
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->memoizedSerializedSize:I

    .line 3891
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3904
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1

    .prologue
    .line 3895
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3915
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1

    .prologue
    .line 4012
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    .prologue
    .line 4015
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3981
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    .line 3982
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3983
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v1

    .line 3985
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3992
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    .line 3993
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3994
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v1

    .line 3996
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3948
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3954
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    .line 3955
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    .line 3954
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4002
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4008
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    .line 4009
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    .line 4008
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3970
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3976
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    .line 3977
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    .line 3976
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3959
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3965
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    .line 3966
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    .line 3965
    return-object v0
.end method


# virtual methods
.method public getCategory(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->category_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 1

    .prologue
    .line 3899
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3933
    iget v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->memoizedSerializedSize:I

    .line 3934
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3942
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 3936
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 3937
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3941
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->memoizedSerializedSize:I

    move v2, v1

    .line 3942
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 3937
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3939
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 3917
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3920
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3917
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3918
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1

    .prologue
    .line 4013
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;
    .locals 1

    .prologue
    .line 4017
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3925
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getSerializedSize()I

    .line 3926
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3929
    return-void

    .line 3926
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3927
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0
.end method
