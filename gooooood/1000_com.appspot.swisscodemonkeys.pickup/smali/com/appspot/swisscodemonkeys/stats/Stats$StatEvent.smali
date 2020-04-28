.class public final Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/stats/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    }
.end annotation


# static fields
.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;


# instance fields
.field private event_:Ljava/lang/String;

.field private hasEvent:Z

.field private hasTimestamp:Z

.field private hasValue:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J

.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 337
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats;->internalForceInit()V

    .line 338
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->initFields()V

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->timestamp_:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->event_:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->value_:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->timestamp_:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->event_:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->value_:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;J)V
    .locals 0

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->timestamp_:J

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->event_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->value_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$12()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .prologue
    .line 161
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    .line 139
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 101
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 123
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 112
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    .line 111
    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->event_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 71
    iget v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->memoizedSerializedSize:I

    .line 72
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 88
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 74
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 87
    :cond_3
    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 88
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->timestamp_:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->value_:I

    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilderForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->toBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

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
    .line 57
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getSerializedSize()I

    .line 58
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 67
    :cond_2
    return-void
.end method
