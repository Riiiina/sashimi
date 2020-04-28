.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;,
        Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    }
.end annotation


# static fields
.field public static final BASE_PROFILE_URL_FIELD_NUMBER:I = 0xf

.field public static final BLOCKED_HOURS_FIELD_NUMBER:I = 0x11

.field public static final CHANNEL_FIELD_NUMBER:I = 0x4

.field public static final CONTACT_AGAIN_SECONDS_FIELD_NUMBER:I = 0x7

.field public static final END_CHANNEL_LIST_LIMIT_FIELD_NUMBER:I = 0xc

.field public static final HOST_FIELD_NUMBER:I = 0x1

.field public static final MAX_BLOCKS_FIELD_NUMBER:I = 0x10

.field public static final MIN_SHORT_WAIT_MS_FIELD_NUMBER:I = 0xb

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final REQUEST_IMAGES_FIELD_NUMBER:I = 0x8

.field public static final SHORT_M_LEN_FIELD_NUMBER:I = 0xa

.field public static final USER_PREFIX_FIELD_NUMBER:I = 0x5

.field public static final USE_EXIT_DIALOG_FIELD_NUMBER:I = 0xe

.field public static final USE_WEBVIEW_FIELD_NUMBER:I = 0xd

.field public static final WELCOME_BLURB_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;


# instance fields
.field private baseProfileUrl_:Ljava/lang/String;

.field private blockedHours_:I

.field private channel_:Ljava/lang/String;

.field private contactAgainSeconds_:I

.field private endChannelListLimit_:I

.field private hasBaseProfileUrl:Z

.field private hasBlockedHours:Z

.field private hasChannel:Z

.field private hasContactAgainSeconds:Z

.field private hasEndChannelListLimit:Z

.field private hasHost:Z

.field private hasMaxBlocks:Z

.field private hasMinShortWaitMs:Z

.field private hasPassword:Z

.field private hasPort:Z

.field private hasRequestImages:Z

.field private hasShortMLen:Z

.field private hasUseExitDialog:Z

.field private hasUseWebview:Z

.field private hasUserPrefix:Z

.field private hasWelcomeBlurb:Z

.field private host_:Ljava/lang/String;

.field private maxBlocks_:I

.field private memoizedSerializedSize:I

.field private minShortWaitMs_:I

.field private password_:Ljava/lang/String;

.field private port_:I

.field private requestImages_:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

.field private shortMLen_:I

.field private useExitDialog_:Z

.field private useWebview_:Z

.field private userPrefix_:Ljava/lang/String;

.field private welcomeBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5670
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .line 5671
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 5672
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->initFields()V

    .line 4749
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4810
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->host_:Ljava/lang/String;

    .line 4817
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->port_:I

    .line 4824
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->password_:Ljava/lang/String;

    .line 4831
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->channel_:Ljava/lang/String;

    .line 4838
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->userPrefix_:Ljava/lang/String;

    .line 4845
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->contactAgainSeconds_:I

    .line 4866
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->shortMLen_:I

    .line 4873
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->minShortWaitMs_:I

    .line 4880
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->endChannelListLimit_:I

    .line 4887
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useWebview_:Z

    .line 4894
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useExitDialog_:Z

    .line 4901
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->baseProfileUrl_:Ljava/lang/String;

    .line 4908
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->maxBlocks_:I

    .line 4915
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->blockedHours_:I

    .line 4983
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->memoizedSerializedSize:I

    .line 4753
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->initFields()V

    .line 4754
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)V
    .locals 0

    .prologue
    .line 4752
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4810
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->host_:Ljava/lang/String;

    .line 4817
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->port_:I

    .line 4824
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->password_:Ljava/lang/String;

    .line 4831
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->channel_:Ljava/lang/String;

    .line 4838
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->userPrefix_:Ljava/lang/String;

    .line 4845
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->contactAgainSeconds_:I

    .line 4866
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->shortMLen_:I

    .line 4873
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->minShortWaitMs_:I

    .line 4880
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->endChannelListLimit_:I

    .line 4887
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useWebview_:Z

    .line 4894
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useExitDialog_:Z

    .line 4901
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->baseProfileUrl_:Ljava/lang/String;

    .line 4908
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->maxBlocks_:I

    .line 4915
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->blockedHours_:I

    .line 4983
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->memoizedSerializedSize:I

    .line 4755
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4830
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4831
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->channel_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4837
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix:Z

    return-void
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4838
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->userPrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4844
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds:Z

    return-void
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4845
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->contactAgainSeconds_:I

    return-void
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4851
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages:Z

    return-void
.end method

.method static synthetic access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;)V
    .locals 0

    .prologue
    .line 4852
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->requestImages_:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    return-void
.end method

.method static synthetic access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4858
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb:Z

    return-void
.end method

.method static synthetic access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 4859
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->welcomeBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-void
.end method

.method static synthetic access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 4859
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->welcomeBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method static synthetic access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4865
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen:Z

    return-void
.end method

.method static synthetic access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4866
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->shortMLen_:I

    return-void
.end method

.method static synthetic access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4872
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs:Z

    return-void
.end method

.method static synthetic access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4873
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->minShortWaitMs_:I

    return-void
.end method

.method static synthetic access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4879
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit:Z

    return-void
.end method

.method static synthetic access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4880
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->endChannelListLimit_:I

    return-void
.end method

.method static synthetic access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4886
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview:Z

    return-void
.end method

.method static synthetic access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4887
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useWebview_:Z

    return-void
.end method

.method static synthetic access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4893
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog:Z

    return-void
.end method

.method static synthetic access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4894
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useExitDialog_:Z

    return-void
.end method

.method static synthetic access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4900
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl:Z

    return-void
.end method

.method static synthetic access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4901
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->baseProfileUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4907
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks:Z

    return-void
.end method

.method static synthetic access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4908
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->maxBlocks_:I

    return-void
.end method

.method static synthetic access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4914
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours:Z

    return-void
.end method

.method static synthetic access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4915
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->blockedHours_:I

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4809
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4810
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->host_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4816
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;I)V
    .locals 0

    .prologue
    .line 4817
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->port_:I

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Z)V
    .locals 0

    .prologue
    .line 4823
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4824
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->password_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1

    .prologue
    .line 4759
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4920
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->requestImages_:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    .line 4921
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->welcomeBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 4922
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1

    .prologue
    .line 5124
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    .prologue
    .line 5127
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5093
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    .line 5094
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5095
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    .line 5097
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5104
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    .line 5105
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5106
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v1

    .line 5108
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5060
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5066
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5067
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    .line 5066
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5114
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5120
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    .line 5121
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    .line 5120
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5082
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5088
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5089
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    .line 5088
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5071
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5077
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    .line 5078
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    .line 5077
    return-object v0
.end method


# virtual methods
.method public getBaseProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->baseProfileUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockedHours()I
    .locals 1

    .prologue
    .line 4917
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->blockedHours_:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4833
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->channel_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactAgainSeconds()I
    .locals 1

    .prologue
    .line 4847
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->contactAgainSeconds_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 1

    .prologue
    .line 4763
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEndChannelListLimit()I
    .locals 1

    .prologue
    .line 4882
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->endChannelListLimit_:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBlocks()I
    .locals 1

    .prologue
    .line 4910
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->maxBlocks_:I

    return v0
.end method

.method public getMinShortWaitMs()I
    .locals 1

    .prologue
    .line 4875
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->minShortWaitMs_:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 4819
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->port_:I

    return v0
.end method

.method public getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 1

    .prologue
    .line 4854
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->requestImages_:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4985
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->memoizedSerializedSize:I

    .line 4986
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5054
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4988
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4989
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4991
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4993
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4995
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4997
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4999
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5001
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5003
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5005
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5007
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUserPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5009
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5011
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getContactAgainSeconds()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5013
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5015
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5017
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5019
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5021
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5023
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getShortMLen()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5025
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5027
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMinShortWaitMs()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5029
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5031
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getEndChannelListLimit()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5033
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5035
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseWebview()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5037
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5039
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseExitDialog()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5041
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5043
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBaseProfileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5045
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5047
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMaxBlocks()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5049
    :cond_f
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5051
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBlockedHours()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5053
    :cond_10
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->memoizedSerializedSize:I

    move v1, v0

    .line 5054
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getShortMLen()I
    .locals 1

    .prologue
    .line 4868
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->shortMLen_:I

    return v0
.end method

.method public getUseExitDialog()Z
    .locals 1

    .prologue
    .line 4896
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useExitDialog_:Z

    return v0
.end method

.method public getUseWebview()Z
    .locals 1

    .prologue
    .line 4889
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->useWebview_:Z

    return v0
.end method

.method public getUserPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->userPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 4861
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->welcomeBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method public hasBaseProfileUrl()Z
    .locals 1

    .prologue
    .line 4902
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl:Z

    return v0
.end method

.method public hasBlockedHours()Z
    .locals 1

    .prologue
    .line 4916
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours:Z

    return v0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 4832
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel:Z

    return v0
.end method

.method public hasContactAgainSeconds()Z
    .locals 1

    .prologue
    .line 4846
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds:Z

    return v0
.end method

.method public hasEndChannelListLimit()Z
    .locals 1

    .prologue
    .line 4881
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit:Z

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 4811
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost:Z

    return v0
.end method

.method public hasMaxBlocks()Z
    .locals 1

    .prologue
    .line 4909
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks:Z

    return v0
.end method

.method public hasMinShortWaitMs()Z
    .locals 1

    .prologue
    .line 4874
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 4825
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword:Z

    return v0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 4818
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort:Z

    return v0
.end method

.method public hasRequestImages()Z
    .locals 1

    .prologue
    .line 4853
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages:Z

    return v0
.end method

.method public hasShortMLen()Z
    .locals 1

    .prologue
    .line 4867
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen:Z

    return v0
.end method

.method public hasUseExitDialog()Z
    .locals 1

    .prologue
    .line 4895
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog:Z

    return v0
.end method

.method public hasUseWebview()Z
    .locals 1

    .prologue
    .line 4888
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview:Z

    return v0
.end method

.method public hasUserPrefix()Z
    .locals 1

    .prologue
    .line 4839
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix:Z

    return v0
.end method

.method public hasWelcomeBlurb()Z
    .locals 1

    .prologue
    .line 4860
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4924
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4925
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1

    .prologue
    .line 5125
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;
    .locals 1

    .prologue
    .line 5129
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$Builder;

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
    .line 4932
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getSerializedSize()I

    .line 4933
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4934
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4936
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4937
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4939
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4940
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4942
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4943
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4945
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUserPrefix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4946
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUserPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4948
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasContactAgainSeconds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4949
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getContactAgainSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4951
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasRequestImages()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4952
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getRequestImages()Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4954
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasWelcomeBlurb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4955
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getWelcomeBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4957
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasShortMLen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4958
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getShortMLen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4960
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMinShortWaitMs()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4961
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMinShortWaitMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4963
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasEndChannelListLimit()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4964
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getEndChannelListLimit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4966
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseWebview()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4967
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseWebview()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4969
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasUseExitDialog()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4970
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getUseExitDialog()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4972
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBaseProfileUrl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4973
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBaseProfileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4975
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasMaxBlocks()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4976
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getMaxBlocks()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4978
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->hasBlockedHours()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4979
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->getBlockedHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4981
    :cond_f
    return-void
.end method
