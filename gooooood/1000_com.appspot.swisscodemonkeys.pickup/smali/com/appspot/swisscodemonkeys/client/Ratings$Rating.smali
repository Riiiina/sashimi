.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rating"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IP_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final RATING_FIELD_NUMBER:I = 0x2

.field public static final SCMID_FIELD_NUMBER:I = 0x4

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;


# instance fields
.field private hasId:Z

.field private hasIpAddress:Z

.field private hasRating:Z

.field private hasScmid:Z

.field private hasTime:Z

.field private id_:Ljava/lang/String;

.field private ipAddress_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private rating_:I

.field private scmid_:Ljava/lang/String;

.field private time_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1951
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .line 1952
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 1953
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->initFields()V

    .line 1540
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1543
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1560
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->id_:Ljava/lang/String;

    .line 1567
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->rating_:I

    .line 1574
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->ipAddress_:Ljava/lang/String;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->scmid_:Ljava/lang/String;

    .line 1588
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->time_:I

    .line 1620
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->memoizedSerializedSize:I

    .line 1544
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->initFields()V

    .line 1545
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1560
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->id_:Ljava/lang/String;

    .line 1567
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->rating_:I

    .line 1574
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->ipAddress_:Ljava/lang/String;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->scmid_:Ljava/lang/String;

    .line 1588
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->time_:I

    .line 1620
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->memoizedSerializedSize:I

    .line 1546
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V
    .locals 0

    .prologue
    .line 1580
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->scmid_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V
    .locals 0

    .prologue
    .line 1587
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime:Z

    return-void
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V
    .locals 0

    .prologue
    .line 1588
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->time_:I

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V
    .locals 0

    .prologue
    .line 1559
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->id_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V
    .locals 0

    .prologue
    .line 1566
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;I)V
    .locals 0

    .prologue
    .line 1567
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->rating_:I

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Z)V
    .locals 0

    .prologue
    .line 1573
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->ipAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1

    .prologue
    .line 1550
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1593
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    .prologue
    .line 1720
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1686
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    .line 1687
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1688
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v1

    .line 1690
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1697
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    .line 1698
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v1

    .line 1701
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1653
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1660
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    .line 1659
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1707
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1713
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    .line 1714
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    .line 1713
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1681
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1682
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    .line 1681
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1664
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1670
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    .line 1671
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    .line 1670
    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;
    .locals 1

    .prologue
    .line 1554
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->ipAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 1569
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->rating_:I

    return v0
.end method

.method public getScmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->scmid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1622
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->memoizedSerializedSize:I

    .line 1623
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1647
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1625
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1626
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1628
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1630
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1632
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getRating()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1634
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1636
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1638
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1640
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getScmid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1642
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1644
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getTime()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1646
    :cond_5
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->memoizedSerializedSize:I

    move v1, v0

    .line 1647
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->time_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId:Z

    return v0
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress:Z

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating:Z

    return v0
.end method

.method public hasScmid()Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1595
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1597
    :goto_0
    return v0

    .line 1596
    :cond_0
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1597
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1

    .prologue
    .line 1718
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;
    .locals 1

    .prologue
    .line 1722
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;)Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Rating$Builder;

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
    .line 1602
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getSerializedSize()I

    .line 1603
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1609
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1610
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1612
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasScmid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1613
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getScmid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1615
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1616
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Rating;->getTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1618
    :cond_4
    return-void
.end method
