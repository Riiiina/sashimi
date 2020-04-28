.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelTitle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final OK_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;


# instance fields
.field private error_:Ljava/lang/String;

.field private hasError:Z

.field private hasOk:Z

.field private hasTitle:Z

.field private memoizedSerializedSize:I

.field private ok_:Z

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6006
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .line 6007
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 6008
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->initFields()V

    .line 5678
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5698
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->title_:Ljava/lang/String;

    .line 5705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->ok_:Z

    .line 5712
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->error_:Ljava/lang/String;

    .line 5736
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->memoizedSerializedSize:I

    .line 5682
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->initFields()V

    .line 5683
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)V
    .locals 0

    .prologue
    .line 5681
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5698
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->title_:Ljava/lang/String;

    .line 5705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->ok_:Z

    .line 5712
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->error_:Ljava/lang/String;

    .line 5736
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->memoizedSerializedSize:I

    .line 5684
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V
    .locals 0

    .prologue
    .line 5697
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5698
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->title_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V
    .locals 0

    .prologue
    .line 5704
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V
    .locals 0

    .prologue
    .line 5705
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->ok_:Z

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Z)V
    .locals 0

    .prologue
    .line 5711
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5712
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->error_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1

    .prologue
    .line 5688
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 5717
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1

    .prologue
    .line 5825
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    .prologue
    .line 5828
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5794
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    .line 5795
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5796
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v1

    .line 5798
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5805
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    .line 5806
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5807
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v1

    .line 5809
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5761
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5767
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    .line 5768
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    .line 5767
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5815
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5821
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    .line 5822
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    .line 5821
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5783
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5789
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    .line 5790
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    .line 5789
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5772
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5778
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    .line 5779
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    .line 5778
    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 1

    .prologue
    .line 5692
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->error_:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()Z
    .locals 1

    .prologue
    .line 5707
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->ok_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5738
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->memoizedSerializedSize:I

    .line 5739
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5755
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 5741
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 5742
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5744
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5746
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5748
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getOk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5750
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5752
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5754
    :cond_3
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->memoizedSerializedSize:I

    move v1, v0

    .line 5755
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5713
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError:Z

    return v0
.end method

.method public hasOk()Z
    .locals 1

    .prologue
    .line 5706
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 5699
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5719
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1

    .prologue
    .line 5826
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;
    .locals 1

    .prologue
    .line 5830
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

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
    .line 5724
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getSerializedSize()I

    .line 5725
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5726
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5728
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5729
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getOk()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5731
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5732
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5734
    :cond_2
    return-void
.end method
