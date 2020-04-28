.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurbList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_FIELD_NUMBER:I = 0x2

.field public static final LIST_FIELD_NUMBER:I = 0x1

.field public static final NEXT_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;


# instance fields
.field private category_:J

.field private hasCategory:Z

.field private hasNext:Z

.field private hasTitle:Z

.field private list_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I

.field private next_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2376
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2377
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 2378
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->initFields()V

    .line 1959
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    .line 1991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->category_:J

    .line 1998
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->next_:Ljava/lang/String;

    .line 2005
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->title_:Ljava/lang/String;

    .line 2035
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->memoizedSerializedSize:I

    .line 1963
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->initFields()V

    .line 1964
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 0

    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    .line 1991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->category_:J

    .line 1998
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->next_:Ljava/lang/String;

    .line 2005
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->title_:Ljava/lang/String;

    .line 2035
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->memoizedSerializedSize:I

    .line 1965
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V
    .locals 0

    .prologue
    .line 2004
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->title_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V
    .locals 0

    .prologue
    .line 1990
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;J)V
    .locals 0

    .prologue
    .line 1991
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->category_:J

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Z)V
    .locals 0

    .prologue
    .line 1997
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->next_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 1969
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2010
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1

    .prologue
    .line 2128
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 2131
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2097
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    .line 2098
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2099
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    .line 2101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2108
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    .line 2109
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2110
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    .line 2112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 2071
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 2070
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2118
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    .line 2125
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 2124
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2086
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2092
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 2093
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 2092
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2081
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 2082
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 2081
    return-object v0
.end method


# virtual methods
.method public getCategory()J
    .locals 2

    .prologue
    .line 1993
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->category_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 1973
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    return-object v0
.end method

.method public getList(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object p0
.end method

.method public getListCount()I
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->list_:Ljava/util/List;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->next_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2037
    iget v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->memoizedSerializedSize:I

    .line 2038
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2058
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 2040
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 2041
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2045
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2047
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2049
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2051
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2053
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2055
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2057
    :cond_3
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->memoizedSerializedSize:I

    move v2, v1

    .line 2058
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 2041
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 2043
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 1992
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory:Z

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1999
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2006
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2015
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2012
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 2013
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1

    .prologue
    .line 2129
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    .locals 1

    .prologue
    .line 2133
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getSerializedSize()I

    .line 2021
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2024
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasCategory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2025
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2027
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2028
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2030
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2031
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2033
    :cond_2
    return-void

    .line 2021
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 2022
    .local v0, "element":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0
.end method
