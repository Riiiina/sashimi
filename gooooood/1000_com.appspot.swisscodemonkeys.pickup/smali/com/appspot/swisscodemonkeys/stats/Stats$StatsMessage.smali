.class public final Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/stats/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatsMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    }
.end annotation


# static fields
.field public static final ALL_APP_COUNT_FIELD_NUMBER:I = 0xb

.field public static final ANDROID_ID_FIELD_NUMBER:I = 0x3

.field public static final APP_NAME_FIELD_NUMBER:I = 0x4

.field public static final APP_VERSION_FIELD_NUMBER:I = 0x5

.field public static final EVENT_FIELD_NUMBER:I = 0x11

.field public static final INSTALL_TIME_FIELD_NUMBER:I = 0xa

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x6

.field public static final MODEL_FIELD_NUMBER:I = 0x10

.field public static final NETWORK_COUNTRY_FIELD_NUMBER:I = 0xe

.field public static final NSCM_FIELD_NUMBER:I = 0x8

.field public static final PAID_APP_COUNT_FIELD_NUMBER:I = 0xc

.field public static final SCM_FIELD_NUMBER:I = 0x9

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0xd

.field public static final SEND_TIMESTAMP_FIELD_NUMBER:I = 0x13

.field public static final SERVER_TIMESTAMP_FIELD_NUMBER:I = 0x12

.field public static final SIM_COUNTRY_FIELD_NUMBER:I = 0xf

.field public static final SYS_VERSION_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;


# instance fields
.field private allAppCount_:I

.field private androidId_:Ljava/lang/String;

.field private appName_:Ljava/lang/String;

.field private appVersion_:Ljava/lang/String;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;",
            ">;"
        }
    .end annotation
.end field

.field private hasAllAppCount:Z

.field private hasAndroidId:Z

.field private hasAppName:Z

.field private hasAppVersion:Z

.field private hasInstallTime:Z

.field private hasLanguage:Z

.field private hasModel:Z

.field private hasNetworkCountry:Z

.field private hasNscm:Z

.field private hasPaidAppCount:Z

.field private hasScm:Z

.field private hasSdkVersion:Z

.field private hasSendTimestamp:Z

.field private hasServerTimestamp:Z

.field private hasSimCountry:Z

.field private hasSysVersion:Z

.field private hasTimestamp:Z

.field private hasVersion:Z

.field private installTime_:I

.field private language_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/String;

.field private networkCountry_:Ljava/lang/String;

.field private nscm_:Ljava/lang/String;

.field private paidAppCount_:I

.field private scm_:Ljava/lang/String;

.field private sdkVersion_:Ljava/lang/String;

.field private sendTimestamp_:J

.field private serverTimestamp_:J

.field private simCountry_:Ljava/lang/String;

.field private sysVersion_:Ljava/lang/String;

.field private timestamp_:J

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1373
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 1374
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats;->internalForceInit()V

    .line 1375
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->initFields()V

    .line 344
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->version_:Ljava/lang/String;

    .line 371
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->timestamp_:J

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->androidId_:Ljava/lang/String;

    .line 385
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appName_:Ljava/lang/String;

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appVersion_:Ljava/lang/String;

    .line 399
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->language_:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sysVersion_:Ljava/lang/String;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->nscm_:Ljava/lang/String;

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->scm_:Ljava/lang/String;

    .line 427
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->installTime_:I

    .line 434
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->allAppCount_:I

    .line 441
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->paidAppCount_:I

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sdkVersion_:Ljava/lang/String;

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->networkCountry_:Ljava/lang/String;

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->simCountry_:Ljava/lang/String;

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->model_:Ljava/lang/String;

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    .line 488
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->serverTimestamp_:J

    .line 495
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sendTimestamp_:J

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->memoizedSerializedSize:I

    .line 348
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->initFields()V

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .param p1, "noInit"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->version_:Ljava/lang/String;

    .line 371
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->timestamp_:J

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->androidId_:Ljava/lang/String;

    .line 385
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appName_:Ljava/lang/String;

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appVersion_:Ljava/lang/String;

    .line 399
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->language_:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sysVersion_:Ljava/lang/String;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->nscm_:Ljava/lang/String;

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->scm_:Ljava/lang/String;

    .line 427
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->installTime_:I

    .line 434
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->allAppCount_:I

    .line 441
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->paidAppCount_:I

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sdkVersion_:Ljava/lang/String;

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->networkCountry_:Ljava/lang/String;

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->simCountry_:Ljava/lang/String;

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->model_:Ljava/lang/String;

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    .line 488
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->serverTimestamp_:J

    .line 495
    iput-wide v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sendTimestamp_:J

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->memoizedSerializedSize:I

    .line 350
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->androidId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName:Z

    return-void
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion:Z

    return-void
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage:Z

    return-void
.end method

.method static synthetic access$17(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->language_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion:Z

    return-void
.end method

.method static synthetic access$19(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sysVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm:Z

    return-void
.end method

.method static synthetic access$21(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->nscm_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm:Z

    return-void
.end method

.method static synthetic access$23(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->scm_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime:Z

    return-void
.end method

.method static synthetic access$25(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V
    .locals 0

    .prologue
    .line 427
    iput p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->installTime_:I

    return-void
.end method

.method static synthetic access$26(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount:Z

    return-void
.end method

.method static synthetic access$27(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V
    .locals 0

    .prologue
    .line 434
    iput p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->allAppCount_:I

    return-void
.end method

.method static synthetic access$28(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount:Z

    return-void
.end method

.method static synthetic access$29(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->paidAppCount_:I

    return-void
.end method

.method static synthetic access$30(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion:Z

    return-void
.end method

.method static synthetic access$31(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry:Z

    return-void
.end method

.method static synthetic access$33(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->networkCountry_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry:Z

    return-void
.end method

.method static synthetic access$35(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->simCountry_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$36(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel:Z

    return-void
.end method

.method static synthetic access$37(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->model_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$38(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp:Z

    return-void
.end method

.method static synthetic access$39(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V
    .locals 0

    .prologue
    .line 488
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->serverTimestamp_:J

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$40(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp:Z

    return-void
.end method

.method static synthetic access$41(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V
    .locals 0

    .prologue
    .line 495
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sendTimestamp_:J

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->version_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V
    .locals 0

    .prologue
    .line 371
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->timestamp_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$12()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .prologue
    .line 723
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    .line 690
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    .line 693
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    .line 701
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    .line 704
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 663
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    .line 662
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    .line 717
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    .line 716
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 685
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    .line 684
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 674
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    .line 673
    return-object v0
.end method


# virtual methods
.method public getAllAppCount()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->allAppCount_:I

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->androidId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->appVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->defaultInstance:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    check-cast p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    return-object p0
.end method

.method public getEventCount()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getInstallTime()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->installTime_:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->networkCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getNscm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->nscm_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaidAppCount()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->paidAppCount_:I

    return v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->scm_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTimestamp()J
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sendTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 569
    iget v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->memoizedSerializedSize:I

    .line 570
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 650
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 572
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 579
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getTimestamp()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 587
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 589
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 593
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 595
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 597
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 599
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSysVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 601
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 603
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNscm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 605
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 607
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getScm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 609
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 611
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getInstallTime()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 613
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 615
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAllAppCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 617
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 619
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getPaidAppCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 621
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 623
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 625
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 627
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNetworkCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 629
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 631
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSimCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 633
    :cond_f
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 635
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 637
    :cond_10
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_13

    .line 641
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 643
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 645
    :cond_11
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 647
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSendTimestamp()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 649
    :cond_12
    iput v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->memoizedSerializedSize:I

    move v2, v1

    .line 650
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0

    .line 637
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 639
    .local v0, "element":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    const/16 v4, 0x11

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method public getServerTimestamp()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->serverTimestamp_:J

    return-wide v0
.end method

.method public getSimCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->simCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->sysVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->timestamp_:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAllAppCount()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount:Z

    return v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId:Z

    return v0
.end method

.method public hasAppName()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName:Z

    return v0
.end method

.method public hasAppVersion()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion:Z

    return v0
.end method

.method public hasInstallTime()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage:Z

    return v0
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel:Z

    return v0
.end method

.method public hasNetworkCountry()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry:Z

    return v0
.end method

.method public hasNscm()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm:Z

    return v0
.end method

.method public hasPaidAppCount()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount:Z

    return v0
.end method

.method public hasScm()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm:Z

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion:Z

    return v0
.end method

.method public hasSendTimestamp()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp:Z

    return v0
.end method

.method public hasServerTimestamp()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp:Z

    return v0
.end method

.method public hasSimCountry()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry:Z

    return v0
.end method

.method public hasSysVersion()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilderForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->toBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

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
    .line 507
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSerializedSize()I

    .line 508
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 520
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 523
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 524
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 526
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 529
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 530
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNscm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 532
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 533
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getScm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 535
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 536
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getInstallTime()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 538
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 539
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAllAppCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 541
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 542
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getPaidAppCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 544
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 545
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 547
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 548
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNetworkCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 550
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 551
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSimCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 553
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 554
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 556
    :cond_f
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 559
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 560
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getServerTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 562
    :cond_10
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 563
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSendTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 565
    :cond_11
    return-void

    .line 556
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .line 557
    .local v0, "element":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0
.end method
