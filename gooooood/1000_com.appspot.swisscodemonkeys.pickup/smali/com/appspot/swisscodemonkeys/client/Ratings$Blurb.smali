.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blurb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    }
.end annotation


# static fields
.field public static final ALLOW_COMMENTING_FIELD_NUMBER:I = 0x16

.field public static final AVERAGE_RATING_FIELD_NUMBER:I = 0x3

.field public static final BROWSER_REPLACEMENT_FIELD_NUMBER:I = 0x13

.field public static final CATEGORY_FIELD_NUMBER:I = 0x6

.field public static final COLOR_FIELD_NUMBER:I = 0x9

.field public static final COMMENT_COUNT_FIELD_NUMBER:I = 0xc

.field public static final CONTENTS_FIELD_NUMBER:I = 0x1

.field public static final FAVORITED_FIELD_NUMBER:I = 0x8

.field public static final GENERATION_TIME_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x5

.field public static final IMAGE_FIELD_NUMBER:I = 0x11

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0xe

.field public static final IRC_NICKNAME_FIELD_NUMBER:I = 0x15

.field public static final IS_HTML_FIELD_NUMBER:I = 0x14

.field public static final LAST_BLURB_FIELD_NUMBER:I = 0xd

.field public static final LAST_UPDATE_TIME_FIELD_NUMBER:I = 0xf

.field public static final NEXT_TIME_FIELD_NUMBER:I = 0x12

.field public static final NICKNAME_FIELD_NUMBER:I = 0x7

.field public static final OWNED_BY_USER_FIELD_NUMBER:I = 0x10

.field public static final RATINGS_FIELD_NUMBER:I = 0x2

.field public static final TEXT_COLOR_FIELD_NUMBER:I = 0xa

.field public static final URL_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# instance fields
.field private allowCommenting_:Z

.field private averageRating_:F

.field private browserReplacement_:Ljava/lang/String;

.field private category_:J

.field private color_:I

.field private commentCount_:I

.field private contents_:Ljava/lang/String;

.field private favorited_:I

.field private generationTime_:I

.field private hasAllowCommenting:Z

.field private hasAverageRating:Z

.field private hasBrowserReplacement:Z

.field private hasCategory:Z

.field private hasColor:Z

.field private hasCommentCount:Z

.field private hasContents:Z

.field private hasFavorited:Z

.field private hasGenerationTime:Z

.field private hasId:Z

.field private hasImage:Z

.field private hasImageUrl:Z

.field private hasIrcNickname:Z

.field private hasIsHtml:Z

.field private hasLastBlurb:Z

.field private hasLastUpdateTime:Z

.field private hasNextTime:Z

.field private hasNickname:Z

.field private hasOwnedByUser:Z

.field private hasRatings:Z

.field private hasTextColor:Z

.field private hasUrl:Z

.field private id_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

.field private ircNickname_:Ljava/lang/String;

.field private isHtml_:Z

.field private lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private lastUpdateTime_:I

.field private memoizedSerializedSize:I

.field private nextTime_:I

.field private nickname_:Ljava/lang/String;

.field private ownedByUser_:Z

.field private ratings_:I

.field private textColor_:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1532
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 1533
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 1534
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->initFields()V

    .line 394
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->contents_:Ljava/lang/String;

    .line 421
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ratings_:I

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->averageRating_:F

    .line 435
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->generationTime_:I

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->id_:Ljava/lang/String;

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->category_:J

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nickname_:Ljava/lang/String;

    .line 463
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->favorited_:I

    .line 470
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->color_:I

    .line 477
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->textColor_:I

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->url_:Ljava/lang/String;

    .line 491
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->commentCount_:I

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->imageUrl_:Ljava/lang/String;

    .line 512
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastUpdateTime_:I

    .line 519
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ownedByUser_:Z

    .line 533
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nextTime_:I

    .line 540
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->browserReplacement_:Ljava/lang/String;

    .line 547
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isHtml_:Z

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ircNickname_:Ljava/lang/String;

    .line 561
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->allowCommenting_:Z

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->memoizedSerializedSize:I

    .line 398
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->initFields()V

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->contents_:Ljava/lang/String;

    .line 421
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ratings_:I

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->averageRating_:F

    .line 435
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->generationTime_:I

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->id_:Ljava/lang/String;

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->category_:J

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nickname_:Ljava/lang/String;

    .line 463
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->favorited_:I

    .line 470
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->color_:I

    .line 477
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->textColor_:I

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->url_:Ljava/lang/String;

    .line 491
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->commentCount_:I

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->imageUrl_:Ljava/lang/String;

    .line 512
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastUpdateTime_:I

    .line 519
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ownedByUser_:Z

    .line 533
    iput v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nextTime_:I

    .line 540
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->browserReplacement_:Ljava/lang/String;

    .line 547
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isHtml_:Z

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ircNickname_:Ljava/lang/String;

    .line 561
    iput-boolean v2, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->allowCommenting_:Z

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->memoizedSerializedSize:I

    .line 400
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 435
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->generationTime_:I

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId:Z

    return-void
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->id_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory:Z

    return-void
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;J)V
    .locals 0

    .prologue
    .line 449
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->category_:J

    return-void
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname:Z

    return-void
.end method

.method static synthetic access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nickname_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited:Z

    return-void
.end method

.method static synthetic access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->favorited_:I

    return-void
.end method

.method static synthetic access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor:Z

    return-void
.end method

.method static synthetic access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 470
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->color_:I

    return-void
.end method

.method static synthetic access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor:Z

    return-void
.end method

.method static synthetic access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 477
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->textColor_:I

    return-void
.end method

.method static synthetic access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl:Z

    return-void
.end method

.method static synthetic access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->url_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount:Z

    return-void
.end method

.method static synthetic access$27(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 491
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->commentCount_:I

    return-void
.end method

.method static synthetic access$28(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb:Z

    return-void
.end method

.method static synthetic access$29(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-void
.end method

.method static synthetic access$30(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method static synthetic access$31(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl:Z

    return-void
.end method

.method static synthetic access$32(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime:Z

    return-void
.end method

.method static synthetic access$34(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastUpdateTime_:I

    return-void
.end method

.method static synthetic access$35(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser:Z

    return-void
.end method

.method static synthetic access$36(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ownedByUser_:Z

    return-void
.end method

.method static synthetic access$37(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage:Z

    return-void
.end method

.method static synthetic access$38(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-void
.end method

.method static synthetic access$39(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents:Z

    return-void
.end method

.method static synthetic access$40(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime:Z

    return-void
.end method

.method static synthetic access$41(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 533
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nextTime_:I

    return-void
.end method

.method static synthetic access$42(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement:Z

    return-void
.end method

.method static synthetic access$43(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->browserReplacement_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml:Z

    return-void
.end method

.method static synthetic access$45(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isHtml_:Z

    return-void
.end method

.method static synthetic access$46(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname:Z

    return-void
.end method

.method static synthetic access$47(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ircNickname_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting:Z

    return-void
.end method

.method static synthetic access$49(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->allowCommenting_:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->contents_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)V
    .locals 0

    .prologue
    .line 421
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ratings_:I

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 0

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;F)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->averageRating_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 567
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 568
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 1

    .prologue
    .line 813
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 816
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 783
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    .line 786
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 794
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    .line 797
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 756
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    .line 755
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 810
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    .line 809
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 778
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    .line 777
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 767
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    .line 766
    return-object v0
.end method


# virtual methods
.method public getAllowCommenting()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->allowCommenting_:Z

    return v0
.end method

.method public getAverageRating()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->averageRating_:F

    return v0
.end method

.method public getBrowserReplacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->browserReplacement_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->category_:J

    return-wide v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->color_:I

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->commentCount_:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->contents_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    return-object v0
.end method

.method public getFavorited()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->favorited_:I

    return v0
.end method

.method public getGenerationTime()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->generationTime_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIrcNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ircNickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHtml()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isHtml_:Z

    return v0
.end method

.method public getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastBlurb_:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method public getLastUpdateTime()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->lastUpdateTime_:I

    return v0
.end method

.method public getNextTime()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nextTime_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedByUser()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ownedByUser_:Z

    return v0
.end method

.method public getRatings()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->ratings_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 650
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->memoizedSerializedSize:I

    .line 651
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 743
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 653
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 660
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 662
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 666
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 670
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 672
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 674
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 678
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 680
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 682
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 684
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getFavorited()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 686
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 688
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 690
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 692
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 694
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 696
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 698
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 700
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 702
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 704
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 706
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 708
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 710
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 712
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastUpdateTime()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 714
    :cond_f
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 716
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 718
    :cond_10
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 720
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 722
    :cond_11
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 724
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNextTime()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 726
    :cond_12
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 728
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 730
    :cond_13
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 732
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 734
    :cond_14
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 736
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIrcNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 738
    :cond_15
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 740
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 742
    :cond_16
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->memoizedSerializedSize:I

    move v1, v0

    .line 743
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->textColor_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAllowCommenting()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting:Z

    return v0
.end method

.method public hasAverageRating()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating:Z

    return v0
.end method

.method public hasBrowserReplacement()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement:Z

    return v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory:Z

    return v0
.end method

.method public hasColor()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor:Z

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount:Z

    return v0
.end method

.method public hasContents()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents:Z

    return v0
.end method

.method public hasFavorited()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited:Z

    return v0
.end method

.method public hasGenerationTime()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl:Z

    return v0
.end method

.method public hasIrcNickname()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname:Z

    return v0
.end method

.method public hasIsHtml()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml:Z

    return v0
.end method

.method public hasLastBlurb()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb:Z

    return v0
.end method

.method public hasLastUpdateTime()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime:Z

    return v0
.end method

.method public hasNextTime()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime:Z

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname:Z

    return v0
.end method

.method public hasOwnedByUser()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser:Z

    return v0
.end method

.method public hasRatings()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings:Z

    return v0
.end method

.method public hasTextColor()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 574
    :goto_0
    return v0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    .locals 1

    .prologue
    .line 818
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

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
    .line 579
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getSerializedSize()I

    .line 580
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasRatings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAverageRating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasGenerationTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 595
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 599
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 601
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasFavorited()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getFavorited()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 604
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 605
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 607
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 608
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 610
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 611
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 613
    :cond_a
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 614
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 616
    :cond_b
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastBlurb()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 617
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 619
    :cond_c
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 620
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 622
    :cond_d
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasLastUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 623
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getLastUpdateTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 625
    :cond_e
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 626
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 628
    :cond_f
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 629
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 631
    :cond_10
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNextTime()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 632
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNextTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 634
    :cond_11
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 635
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 637
    :cond_12
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIsHtml()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 638
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 640
    :cond_13
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasIrcNickname()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 641
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIrcNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 643
    :cond_14
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasAllowCommenting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 644
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 646
    :cond_15
    return-void
.end method
