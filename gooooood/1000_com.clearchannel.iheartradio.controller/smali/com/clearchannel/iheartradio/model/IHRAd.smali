.class public Lcom/clearchannel/iheartradio/model/IHRAd;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRAd$Report;,
        Lcom/clearchannel/iheartradio/model/IHRAd$Request;
    }
.end annotation


# static fields
.field public static kAdIntervalRequestingDelay:J = 0x0L

.field public static final kAdPurposeClickBanner:I = 0x1

.field public static final kAdPurposeClickPlayerLarge:I = 0x2

.field public static final kAdPurposeClickPlayerSmall:I = 0x3

.field public static final kAdPurposeClickStream:I = 0x4

.field public static final kAdPurposeImpressionBanner:I = 0x5

.field public static final kAdPurposeImpressionBannerSecondary:I = 0x6

.field public static final kAdPurposeImpressionPlayerLarge:I = 0x7

.field public static final kAdPurposeImpressionPlayerSmall:I = 0x8

.field public static final kAdPurposeImpressionSplash:I = 0x9

.field public static final kAdPurposeImpressionStream:I = 0xa

.field protected static final kAdPurposeRequestBanner:I = 0xb

.field protected static final kAdPurposeRequestPlayer:I = 0xc

.field protected static final kAdPurposeRequestSplash:I = 0xd

.field protected static final kAdPurposeRequestStream:I = 0xe

.field public static final kAdTypeBanner:I = 0x1

.field public static final kAdTypeNone:I = 0x0

.field public static final kAdTypePlayer:I = 0x2

.field public static final kAdTypeSplash:I = 0x4

.field public static final kAdTypeStream:I = 0x8

.field public static final kMessageAdAcquired:I

.field protected static sSingleton:Lcom/clearchannel/iheartradio/model/IHRAd;


# instance fields
.field public mAdBanner:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public mAdPlayer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public mBannerHeight:I

.field public mBannerWidth:I

.field public mContextPlayer:Ljava/lang/Object;

.field public mHandlerBanner:Landroid/os/Handler;

.field public mHandlerPlayer:Landroid/os/Handler;

.field public mNoAds:[J

.field public mPlayerLargeHeight:I

.field public mPlayerLargeWidth:I

.field public mPlayerSmallHeight:I

.field public mPlayerSmallWidth:I

.field protected mReport:Lcom/clearchannel/iheartradio/model/IHRAd$Report;

.field protected mRequestsInProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "AdAq"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->osType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clearchannel/iheartradio/model/IHRAd;->kMessageAdAcquired:I

    .line 35
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/clearchannel/iheartradio/model/IHRAd;->kAdIntervalRequestingDelay:J

    .line 14
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x140

    .line 127
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 56
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRAd$Report;-><init>(Lcom/clearchannel/iheartradio/model/IHRAd;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mReport:Lcom/clearchannel/iheartradio/model/IHRAd$Report;

    .line 128
    const/16 v0, 0x32

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mBannerHeight:I

    .line 129
    const/16 v0, 0x12c

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mBannerWidth:I

    .line 131
    const/16 v0, 0xd2

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerLargeHeight:I

    .line 132
    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerLargeWidth:I

    .line 133
    const/16 v0, 0x14

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerSmallHeight:I

    .line 134
    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerSmallWidth:I

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mNoAds:[J

    .line 137
    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/model/IHRAd;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRAd;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRAd;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRAd;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAd;

    .line 65
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRAd;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAd;

    return-object v0
.end method


# virtual methods
.method protected adURLForPurpose(I)Ljava/lang/String;
    .locals 8
    .param p1, "purpose"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 144
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    .line 146
    .local v1, "config":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->adsDartPrefix()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "template":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 178
    :goto_0
    return-object v5

    .line 149
    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v5, v6

    .line 165
    goto :goto_0

    .line 150
    :pswitch_0
    const-string v4, "page_pos_click_banner"

    .line 168
    .local v4, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->adsPositionForPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v5, "{$PAGEPOS}"

    invoke-static {v3, v5, v4, v7}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->stringByReplacingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parameters(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v2, :cond_2

    .line 173
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "adParams":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "adParams":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 178
    goto :goto_0

    .line 151
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_1
    const-string v4, "page_pos_click_player_large"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_2
    const-string v4, "page_pos_click_player_small"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_3
    const-string v4, "page_pos_click_stream"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_4
    const-string v4, "page_pos_impression_banner"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 155
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_5
    const-string v4, "page_pos_impression_banner_secondary"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_6
    const-string v4, "page_pos_impression_player_large"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 157
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_7
    const-string v4, "page_pos_impression_player_small"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_8
    const-string v4, "page_pos_impression_splash"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 159
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_9
    const-string v4, "page_pos_impression_stream"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 160
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_a
    const-string v4, "page_pos_request_banner"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_b
    const-string v4, "page_pos_request_player"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 162
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_c
    const-string v4, "page_pos_request_splash"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 163
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_d
    const-string v4, "page_pos_request_stream"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public report(I)V
    .locals 1
    .param p1, "purpose"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mReport:Lcom/clearchannel/iheartradio/model/IHRAd$Report;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->report(I)V

    .line 71
    return-void
.end method

.method public declared-synchronized request(ILjava/lang/Object;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 7
    .param p1, "type"    # I
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 74
    monitor-enter p0

    const/4 v0, 0x0

    .line 83
    .local v0, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :try_start_0
    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mRequestsInProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 84
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 122
    :goto_0
    monitor-exit p0

    return-object v1

    .line 86
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mContextPlayer:Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_1

    move-object v1, v2

    .line 110
    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdBanner:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdBanner:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdBanner:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 113
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mNoAds:[J

    aget-wide v3, v3, p1

    sget-wide v5, Lcom/clearchannel/iheartradio/model/IHRAd;->kAdIntervalRequestingDelay:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 116
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRAd$Request;

    invoke-direct {v1, p0, p1}, Lcom/clearchannel/iheartradio/model/IHRAd$Request;-><init>(Lcom/clearchannel/iheartradio/model/IHRAd;I)V

    :cond_2
    move-object v1, v0

    .line 122
    goto :goto_0

    .line 102
    :pswitch_2
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRAd;->mContextPlayer:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v0, 0x0

    .line 108
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
