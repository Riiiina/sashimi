.class public Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
.super Ljava/util/ArrayList;
.source "IHRPremiumChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final kCallLetters:I = 0x3

.field public static final kCapacity:I = 0x29

.field public static final kDayDescription:I = 0x16

.field public static final kDayDuration:I = 0x15

.field public static final kDayFields:I = 0x3

.field public static final kDayStart:I = 0x14

.field public static final kDayTotal:I = 0x15

.field public static final kDays:I = 0x7

.field public static final kDelegateURL:I = 0xc

.field public static final kDescription:I = 0x1

.field public static final kLogoURL:I = 0x4

.field public static final kMap:[Ljava/lang/String;

.field public static final kMediavaultURL:I = 0xb

.field public static final kName:I = 0x0

.field public static final kPodcastURL:I = 0x5

.field public static final kPurchaseURL:I = 0x8

.field public static final kRecoveryURL:I = 0x9

.field public static final kReminderURL:I = 0xa

.field public static final kSalesPitch:I = 0xe

.field public static final kSite:I = 0x2

.field public static final kStationURL:I = 0x6

.field public static final kStreamURL:I = 0xd

.field public static final kTimezone:I = 0x13

.field public static final kTolerance:I = 0x12

.field public static final kTrialExpiring:I = 0x11

.field public static final kTrialPassword:I = 0x10

.field public static final kTrialUsername:I = 0xf

.field public static final kValidateURL:I = 0x7

.field private static sCalendars:Lcom/clearchannel/iheartradio/android/model/IHRHashtable; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 54
    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 55
    const-string v2, "site"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 56
    const-string v2, "call_letters"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 57
    const-string v2, "logo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 58
    const-string v2, "podcast_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 59
    const-string v2, "station_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 60
    const-string v2, "validate_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 61
    const-string v2, "purchase_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 62
    const-string v2, "recovery_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 63
    const-string v2, "reminder_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 64
    sget-boolean v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v2, :cond_0

    const-string v2, "mediavault_url"

    :goto_0
    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 65
    const-string v2, "delegate_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 66
    sget-boolean v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v2, :cond_1

    const-string v2, "authenticated_stream"

    :goto_1
    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 67
    const-string v2, "sales_pitch"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 68
    const-string v2, "trial_username"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 69
    const-string v2, "trial_password"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 70
    const-string v2, "trial_expiring"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 71
    const-string v2, "tolerance"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 72
    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 73
    const-string v2, "day_0_start"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 74
    const-string v2, "day_0_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 75
    const-string v2, "day_0_description"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 76
    const-string v2, "day_1_start"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 77
    const-string v2, "day_1_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 78
    const-string v2, "day_1_description"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 79
    const-string v2, "day_2_start"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 80
    const-string v2, "day_2_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 81
    const-string v2, "day_2_description"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 82
    const-string v2, "day_3_start"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 83
    const-string v2, "day_3_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 84
    const-string v2, "day_3_description"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 85
    const-string v2, "day_4_start"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 86
    const-string v2, "day_4_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 87
    const-string v2, "day_4_description"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 88
    const-string v2, "day_5_start"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 89
    const-string v2, "day_5_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 90
    const-string v2, "day_5_description"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 91
    const-string v2, "day_6_start"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 92
    const-string v2, "day_6_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 93
    const-string v2, "day_6_description"

    aput-object v2, v0, v1

    .line 52
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    .line 47
    return-void

    .line 64
    :cond_0
    const-string v2, "mediavault_url_droid"

    goto/16 :goto_0

    .line 66
    :cond_1
    const-string v2, "authenticated_rtsp_stream"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "inChannel":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "inKeys"    # Ljava/util/List;
    .param p2, "inValues"    # Ljava/util/List;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "inChannel"    # [Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static dateNow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "inFlattened"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 550
    .local v3, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>()V

    .line 552
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    const/4 v1, 0x0

    .line 553
    .local v1, "count":I
    const/4 v4, 0x0

    .line 557
    .local v4, "start":I
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 558
    .local v2, "found":I
    if-gez v2, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 560
    .local v5, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v4, v2, 0x1

    .line 562
    add-int/lit8 v1, v1, 0x1

    .line 564
    const/16 v6, 0x29

    if-ne v1, v6, :cond_1

    .line 565
    const/4 v1, 0x0

    .line 566
    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>()V

    .line 569
    .restart local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_1
    if-gtz v4, :cond_0

    .line 571
    return-object v3

    .line 558
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0
.end method

.method public static isExpired(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inExpiring"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->dateNow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 2
    .param p0, "inKeys"    # Ljava/util/List;
    .param p1, "inLine"    # Ljava/util/List;

    .prologue
    .line 490
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 492
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 496
    :cond_0
    return-object v0
.end method

.method public static parseLines(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p0, "inKeys"    # Ljava/util/List;
    .param p1, "inLines"    # Ljava/util/List;
    .param p2, "inStart"    # I

    .prologue
    const/4 v5, 0x1

    .line 500
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 502
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 504
    .local v1, "count":I
    if-nez p0, :cond_0

    if-le p2, v5, :cond_0

    if-le v1, v5, :cond_0

    .line 505
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inKeys":Ljava/util/List;
    check-cast p0, Ljava/util/List;

    .line 508
    .restart local p0    # "inKeys":Ljava/util/List;
    :cond_0
    move v2, p2

    .local v2, "index":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 515
    return-object v4

    .line 509
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 510
    .local v3, "line":Ljava/util/List;
    invoke-static {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    .line 512
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inItems"    # Ljava/util/List;

    .prologue
    .line 479
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 480
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 482
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 486
    return-object v2

    .line 480
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 483
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parsePremiumList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inList"    # Ljava/util/List;

    .prologue
    .line 519
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 522
    .local v3, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 524
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 531
    return-object v3

    .line 525
    :cond_0
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>()V

    .line 526
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->applyMapFromXML(Ljava/util/Map;)V

    .line 528
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseXML([B)Ljava/util/List;
    .locals 4
    .param p0, "inXML"    # [B

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "result":Ljava/util/List;
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;-><init>()V

    .line 539
    .local v0, "parser":Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->parse([B)V

    .line 540
    iget-object v2, v0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inXML":[B
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->parsePremiumList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 541
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "inChannels"    # Ljava/util/List;

    .prologue
    .line 575
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 576
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v6, 0x0

    move v1, v6

    .line 578
    .local v1, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 589
    return-object v4

    .line 576
    .end local v1    # "count":I
    .end local v3    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v1, v6

    goto :goto_0

    .line 579
    .restart local v1    # "count":I
    .restart local v3    # "index":I
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 581
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v6, 0x29

    if-lt v2, v6, :cond_2

    .line 578
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 582
    :cond_2
    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 584
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "inKeys"    # Ljava/util/List;
    .param p2, "inValues"    # Ljava/util/List;

    .prologue
    .line 440
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 443
    .local v2, "map":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 445
    .local v1, "index":I
    if-le v0, v1, :cond_0

    move v0, v1

    .line 446
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 450
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->applyMapValues(Ljava/util/Map;)V

    .line 451
    return-void

    .line 447
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public applyMapFromXML(Ljava/util/Map;)V
    .locals 6
    .param p1, "inRSS"    # Ljava/util/Map;

    .prologue
    .line 454
    const-string v5, "schedule"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 455
    .local v3, "map":Ljava/util/Map;
    const-string v5, "days"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 456
    .local v1, "days":Ljava/util/List;
    const-string v5, "timezone"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 457
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 459
    .local v0, "count":I
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->applyMapValues(Ljava/util/Map;)V

    .line 461
    if-eqz v4, :cond_0

    const/16 v5, 0x13

    invoke-virtual {p0, v5, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_0
    const/4 v5, 0x7

    if-le v0, v5, :cond_1

    const/4 v0, 0x7

    .line 464
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 476
    return-void

    .line 465
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "map":Ljava/util/Map;
    check-cast v3, Ljava/util/Map;

    .line 467
    .restart local v3    # "map":Ljava/util/Map;
    const-string v5, "start"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 468
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_3

    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x14

    invoke-virtual {p0, v5, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_3
    const-string v5, "duration"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 471
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_4

    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x15

    invoke-virtual {p0, v5, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_4
    const-string v5, "description"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 474
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_5

    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x16

    invoke-virtual {p0, v5, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public applyMapValues(Ljava/util/Map;)V
    .locals 5
    .param p1, "inMap"    # Ljava/util/Map;

    .prologue
    .line 426
    sget-object v4, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    array-length v0, v4

    .line 427
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 437
    return-void

    .line 428
    :cond_0
    sget-object v4, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 429
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->size()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 432
    if-nez v3, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 432
    goto :goto_1

    .line 434
    :cond_2
    if-nez v3, :cond_3

    const-string v4, ""

    :goto_3
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v4, v3

    goto :goto_3
.end method

.method public availableText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 404
    const-string v2, "Available"

    .line 405
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->minutesToShow(J[Ljava/lang/String;)I

    move-result v1

    .line 406
    .local v1, "minutes":I
    if-gez v1, :cond_2

    neg-int v3, v1

    move v0, v3

    .line 408
    .local v0, "absolute":I
    :goto_0
    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    :cond_0
    if-lez v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    :cond_1
    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    :goto_1
    return-object v2

    .end local v0    # "absolute":I
    :cond_2
    move v0, v1

    .line 406
    goto :goto_0

    .line 412
    .restart local v0    # "absolute":I
    :cond_3
    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "about a minute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 413
    :cond_4
    const/16 v3, 0x46

    if-ge v0, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 414
    :cond_5
    const/16 v3, 0x78

    if-ge v0, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "an hour and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3c

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 415
    :cond_6
    const/16 v3, 0x5a0

    if-ge v0, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v0, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hours and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v0, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 416
    :cond_7
    const/16 v3, 0xb40

    if-ge v0, v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "a day"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 417
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v4, v0, 0x5a0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public getCalendar(Ljava/lang/String;J)Ljava/util/Calendar;
    .locals 8
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inTime"    # J

    .prologue
    .line 270
    const/4 v4, 0x0

    .line 272
    .local v4, "result":Ljava/util/Calendar;
    sget-object v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->sCalendars:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v6, :cond_5

    new-instance v6, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    sput-object v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->sCalendars:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 275
    :goto_0
    if-nez v4, :cond_4

    .line 276
    move-object v1, p1

    .line 277
    .local v1, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 282
    .local v5, "zone":Ljava/util/TimeZone;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 283
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "CST"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "EST"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "HST"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "MST"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "PST"

    aput-object v7, v3, v6

    .line 285
    .local v3, "old":[Ljava/lang/String;
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "US/Central"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "US/Eastern"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "US/Hawaii"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "US/Mountain"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "America/Los_Angeles"

    aput-object v7, v2, v6

    .line 287
    .local v2, "now":[Ljava/lang/String;
    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 289
    .local v0, "index":I
    if-ltz v0, :cond_0

    aget-object v1, v2, v0

    .line 291
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 294
    .end local v0    # "index":I
    .end local v2    # "now":[Ljava/lang/String;
    .end local v3    # "old":[Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    if-nez v6, :cond_3

    .line 295
    :cond_2
    const-string v6, "America/Los_Angeles"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 298
    :cond_3
    if-nez v5, :cond_7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 301
    :goto_1
    sget-object v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->sCalendars:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez p1, :cond_8

    const-string v7, ""

    :goto_2
    invoke-virtual {v6, v7, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "zone":Ljava/util/TimeZone;
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_9

    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 307
    :goto_3
    return-object v4

    .line 273
    :cond_5
    sget-object v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->sCalendars:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez p1, :cond_6

    const-string v7, ""

    :goto_4
    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Ljava/util/Calendar;
    check-cast v4, Ljava/util/Calendar;

    .restart local v4    # "result":Ljava/util/Calendar;
    goto/16 :goto_0

    :cond_6
    move-object v7, p1

    goto :goto_4

    .line 299
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "zone":Ljava/util/TimeZone;
    :cond_7
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    goto :goto_1

    :cond_8
    move-object v7, p1

    .line 301
    goto :goto_2

    .line 305
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "zone":Ljava/util/TimeZone;
    :cond_9
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_3
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLetters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "! PRN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    return-object v0
.end method

.method public getLogoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPodcastURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPurchaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSalesPitch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 178
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v0, 0x15

    new-array v2, v0, [Ljava/lang/String;

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "site="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    .line 180
    const-string v3, "0"

    aput-object v3, v2, v0

    .line 181
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLetters()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x3

    .line 182
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 183
    const-string v0, "1"

    aput-object v0, v2, v6

    const/4 v0, 0x5

    .line 184
    const-string v3, ""

    aput-object v3, v2, v0

    .line 185
    const-string v0, ""

    aput-object v0, v2, v7

    const/4 v0, 0x7

    .line 186
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    .line 187
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x9

    .line 188
    const-string v3, "1"

    aput-object v3, v2, v0

    const/16 v3, 0xa

    .line 189
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/16 v3, 0xb

    .line 190
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/16 v0, 0xc

    .line 191
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 192
    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v8

    const/16 v0, 0xe

    .line 193
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0xf

    .line 194
    invoke-virtual {p0, v8}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v0

    const/16 v0, 0x10

    .line 195
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x11

    .line 196
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x12

    .line 197
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x13

    .line 198
    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x14

    .line 199
    const-string v3, ""

    aput-object v3, v2, v0

    .line 178
    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public getStationForItem(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 12
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 220
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getGUID()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "guid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v4, 0x15

    new-array v6, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v4, "site="

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    .line 228
    const-string v7, "0"

    aput-object v7, v6, v4

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLetters()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    const/4 v4, 0x3

    .line 230
    aput-object v0, v6, v4

    .line 231
    const-string v4, "1"

    aput-object v4, v6, v10

    const/4 v4, 0x5

    .line 232
    aput-object v0, v6, v4

    .line 233
    const-string v4, ""

    aput-object v4, v6, v11

    const/4 v4, 0x7

    .line 234
    aput-object v2, v6, v4

    const/16 v4, 0x8

    .line 235
    aput-object v3, v6, v4

    const/16 v4, 0x9

    .line 236
    const-string v7, "1"

    aput-object v7, v6, v4

    const/16 v7, 0xa

    .line 237
    invoke-virtual {p0, v10}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    const/16 v4, 0xb

    .line 238
    aput-object v2, v6, v4

    const/16 v4, 0xc

    .line 239
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0xd

    .line 240
    invoke-virtual {p0, v11}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v4

    const/16 v4, 0xe

    .line 241
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0xf

    .line 242
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0x10

    .line 243
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0x11

    .line 244
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0x12

    .line 245
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0x13

    .line 246
    const-string v7, ""

    aput-object v7, v6, v4

    const/16 v4, 0x14

    .line 247
    const-string v7, ""

    aput-object v7, v6, v4

    .line 226
    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    return-object v5
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialExpiring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->size()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minutesToShow(J[Ljava/lang/String;)I
    .locals 12
    .param p1, "inTime"    # J
    .param p3, "outDescription"    # [Ljava/lang/String;

    .prologue
    .line 311
    const/4 v6, 0x0

    .line 317
    .local v6, "result":I
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getTimezone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getCalendar(Ljava/lang/String;J)Ljava/util/Calendar;

    move-result-object v0

    .line 319
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x1

    sub-int v1, v10, v11

    .line 320
    .local v1, "day_of_week":I
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 330
    :goto_0
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v9, v10, v11

    .line 331
    .local v9, "time_of_day":I
    add-int/lit8 v10, v1, 0x6

    rem-int/lit8 v5, v10, 0x7

    .line 334
    .local v5, "index":I
    if-nez v1, :cond_0

    const/4 v1, 0x7

    .line 337
    :cond_0
    rem-int/lit8 v10, v5, 0x7

    mul-int/lit8 v3, v10, 0x3

    .line 339
    .local v3, "field":I
    const/4 v7, 0x0

    .line 340
    .local v7, "start":I
    add-int/lit8 v10, v3, 0x14

    invoke-virtual {p0, v10}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 342
    .local v8, "string":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 343
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 345
    .local v4, "found":I
    if-lez v4, :cond_1

    .line 346
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v7, v10

    .line 349
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v4, 0x1

    if-le v10, v11, :cond_2

    .line 350
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v7, v10

    .line 353
    :cond_2
    const/16 v10, 0x18

    if-ge v7, v10, :cond_3

    if-gez v4, :cond_3

    mul-int/lit8 v7, v7, 0x3c

    .line 356
    .end local v4    # "found":I
    :cond_3
    const/4 v2, 0x0

    .line 357
    .local v2, "duration":I
    add-int/lit8 v10, v3, 0x15

    invoke-virtual {p0, v10}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "string":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 359
    .restart local v8    # "string":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 360
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 362
    .restart local v4    # "found":I
    if-lez v4, :cond_4

    .line 363
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v2, v10

    .line 366
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v4, 0x1

    if-le v10, v11, :cond_5

    .line 367
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v2, v10

    .line 370
    :cond_5
    const/16 v10, 0xc

    if-ge v2, v10, :cond_6

    if-gez v4, :cond_6

    mul-int/lit8 v2, v2, 0x3c

    .line 373
    .end local v4    # "found":I
    :cond_6
    const/4 v10, 0x1

    if-lt v2, v10, :cond_7

    .line 375
    add-int/lit8 v10, v5, 0x1

    rem-int/lit8 v10, v10, 0x7

    if-ne v10, v1, :cond_9

    .line 377
    add-int/lit16 v10, v9, 0x5a0

    add-int v11, v7, v2

    if-ge v10, v11, :cond_7

    .line 378
    add-int/lit16 v10, v9, 0x5a0

    add-int v11, v7, v2

    sub-int v6, v10, v11

    .line 391
    :cond_7
    :goto_1
    if-eqz v6, :cond_c

    .line 392
    if-eqz p3, :cond_8

    array-length v10, p3

    if-lez v10, :cond_8

    .line 393
    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x16

    invoke-virtual {p0, v11}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    aput-object p0, p3, v10

    .line 400
    :cond_8
    :goto_2
    return v6

    .line 321
    .end local v2    # "duration":I
    .end local v3    # "field":I
    .end local v5    # "index":I
    .end local v7    # "start":I
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "time_of_day":I
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :pswitch_0
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 322
    :pswitch_1
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 323
    :pswitch_2
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 324
    :pswitch_3
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 325
    :pswitch_4
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 326
    :pswitch_5
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 327
    :pswitch_6
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 380
    .restart local v2    # "duration":I
    .restart local v3    # "field":I
    .restart local v5    # "index":I
    .restart local v7    # "start":I
    .restart local v8    # "string":Ljava/lang/String;
    .restart local v9    # "time_of_day":I
    :cond_9
    if-ge v1, v5, :cond_a

    .line 382
    sub-int v10, v5, v1

    mul-int/lit8 v10, v10, 0x18

    mul-int/lit8 v10, v10, 0x3c

    sub-int/2addr v10, v9

    add-int v6, v10, v7

    goto :goto_1

    .line 383
    :cond_a
    if-ge v9, v7, :cond_b

    .line 385
    sub-int v6, v7, v9

    goto :goto_1

    .line 386
    :cond_b
    add-int v10, v7, v2

    if-ge v9, v10, :cond_7

    .line 388
    add-int v10, v7, v2

    sub-int v6, v9, v10

    goto :goto_1

    .line 398
    :cond_c
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v1, 0x7

    if-lt v5, v10, :cond_0

    goto :goto_2

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public tolerance()I
    .locals 2

    .prologue
    .line 172
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public trialExpiring()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public trialPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public trialUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
