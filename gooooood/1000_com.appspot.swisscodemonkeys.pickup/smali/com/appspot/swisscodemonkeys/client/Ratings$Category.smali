.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_LINK_FIELD_NUMBER:I = 0x5

.field public static final COMMENT_COUNT_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IS_APPS_CATEGORY_FIELD_NUMBER:I = 0x6

.field public static final LAST_BLURB_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;


# instance fields
.field private categoryLink_:Ljava/lang/String;

.field private commentCount_:I

.field private hasCategoryLink:Z

.field private hasCommentCount:Z

.field private hasId:Z

.field private hasIsAppsCategory:Z

.field private hasLastBlurb:Z

.field private hasTitle:Z

.field private id_:Ljava/lang/String;

.field private isAppsCategory_:Z

.field private lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3877
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .line 3878
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 3879
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->initFields()V

    .line 3398
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3401
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3418
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->id_:Ljava/lang/String;

    .line 3425
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->title_:Ljava/lang/String;

    .line 3432
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->commentCount_:I

    .line 3446
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->categoryLink_:Ljava/lang/String;

    .line 3453
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isAppsCategory_:Z

    .line 3493
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->memoizedSerializedSize:I

    .line 3402
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->initFields()V

    .line 3403
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)V
    .locals 0

    .prologue
    .line 3401
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3418
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->id_:Ljava/lang/String;

    .line 3425
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->title_:Ljava/lang/String;

    .line 3432
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->commentCount_:I

    .line 3446
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->categoryLink_:Ljava/lang/String;

    .line 3453
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isAppsCategory_:Z

    .line 3493
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->memoizedSerializedSize:I

    .line 3404
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3438
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 3439
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3445
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink:Z

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->categoryLink_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3452
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory:Z

    return-void
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3453
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isAppsCategory_:Z

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3417
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3418
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->id_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3424
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3425
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->title_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;Z)V
    .locals 0

    .prologue
    .line 3431
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;I)V
    .locals 0

    .prologue
    .line 3432
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->commentCount_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1

    .prologue
    .line 3408
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3458
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 3459
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1

    .prologue
    .line 3594
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    .prologue
    .line 3597
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3563
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    .line 3564
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3565
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    .line 3567
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3574
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    .line 3575
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3576
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v1

    .line 3578
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3530
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3536
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3537
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    .line 3536
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3584
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3590
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    .line 3591
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    .line 3590
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3552
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3558
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3559
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    .line 3558
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3541
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3547
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    .line 3548
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    .line 3547
    return-object v0
.end method


# virtual methods
.method public getCategoryLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->categoryLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 3434
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->commentCount_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;
    .locals 1

    .prologue
    .line 3412
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAppsCategory()Z
    .locals 1

    .prologue
    .line 3455
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->isAppsCategory_:Z

    return v0
.end method

.method public getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3495
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->memoizedSerializedSize:I

    .line 3496
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3524
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3498
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3499
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3501
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3503
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3505
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3507
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3509
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCommentCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3511
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3513
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3515
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3517
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCategoryLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3519
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3521
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getIsAppsCategory()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3523
    :cond_6
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->memoizedSerializedSize:I

    move v1, v0

    .line 3524
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategoryLink()Z
    .locals 1

    .prologue
    .line 3447
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink:Z

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 3433
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 3419
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId:Z

    return v0
.end method

.method public hasIsAppsCategory()Z
    .locals 1

    .prologue
    .line 3454
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory:Z

    return v0
.end method

.method public hasLastBlurb()Z
    .locals 1

    .prologue
    .line 3440
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 3426
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3461
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 3467
    :goto_0
    return v0

    .line 3462
    :cond_0
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 3463
    :cond_1
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 3464
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3465
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 3467
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1

    .prologue
    .line 3595
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;
    .locals 1

    .prologue
    .line 3599
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Category;)Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Category$Builder;

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
    .line 3472
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getSerializedSize()I

    .line 3473
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3474
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3476
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3477
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3479
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3480
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCommentCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3482
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3483
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3485
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasCategoryLink()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3486
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getCategoryLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3488
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->hasIsAppsCategory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3489
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Category;->getIsAppsCategory()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3491
    :cond_5
    return-void
.end method
