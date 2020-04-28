.class public Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRConfigurationStartup.java"


# instance fields
.field public mAdsBannerRefreshInterval:I

.field public mAdsDartURLPrefix:Ljava/lang/String;

.field public mAdsGatewayDisplayTime:I

.field public mAdsGatewayEnableUserAbort:Z

.field public mAdsGatewayInterval:I

.field public mAdsGatewayListenSeconds:I

.field public mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public mAdsSplashDartURL:Ljava/lang/String;

.field public mAdsSplashDisplayTime:I

.field public mAndroidAutoupdateEnabled:Z

.field public mAndroidAutoupdateForced:Z

.field public mAndroidAutoupdateMessage:Ljava/lang/String;

.field public mAndroidAutoupdateWarnInterval:I

.field public mAndroidUpdateURL:Ljava/lang/String;

.field public mAndroidVersion:Ljava/lang/String;

.field public mCitiesVersion:Ljava/lang/String;

.field public mFeatured:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public mFormatsVersion:Ljava/lang/String;

.field public mGenreListUpdated:Z

.field public mMarketListUpdated:Z

.field public mMediaVaultURL:Ljava/lang/String;

.field public mPremiumVersion:Ljava/lang/String;

.field protected mReadingFeatured:Z

.field public mStationListVersion:Ljava/lang/String;

.field public mStreamListVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "inBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 51
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 75
    const-string v0, "ads_banner_refresh_interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsBannerRefreshInterval:I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "ads_dart_url_prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsDartURLPrefix:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "ads_gateway_display_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "ads_gateway_enable_user_abort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayEnableUserAbort:Z

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "ads_gateway_interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayInterval:I

    goto :goto_0

    .line 89
    :cond_5
    const-string v0, "ads_gateway_listen_seconds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayListenSeconds:I

    goto :goto_0

    .line 91
    :cond_6
    const-string v0, "ads_splash_dart_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsSplashDartURL:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_7
    const-string v0, "ads_splash_display_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsSplashDisplayTime:I

    goto :goto_0

    .line 95
    :cond_8
    const-string v0, "android_application_update_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidUpdateURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 97
    :cond_9
    const-string v0, "android_autoupdate_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateEnabled:Z

    goto/16 :goto_0

    .line 99
    :cond_a
    const-string v0, "android_autoupdate_forced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateForced:Z

    goto/16 :goto_0

    .line 101
    :cond_b
    const-string v0, "android_autoupdate_message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 103
    :cond_c
    const-string v0, "android_application_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 105
    :cond_d
    const-string v0, "android_autoupdate_warn_interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateWarnInterval:I

    if-ge v0, v2, :cond_0

    .line 107
    iput v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateWarnInterval:I

    goto/16 :goto_0

    .line 109
    :cond_e
    const-string v0, "call_letters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 110
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mReadingFeatured:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mFeatured:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_f
    const-string v0, "cities_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 114
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mCitiesVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 115
    :cond_10
    const-string v0, "featured"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mReadingFeatured:Z

    goto/16 :goto_0

    .line 117
    :cond_11
    const-string v0, "formats_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 118
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mFormatsVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :cond_12
    const-string v0, "premium_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mPremiumVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    :cond_13
    const-string v0, "mediavault_url_droid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMediaVaultURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 123
    :cond_14
    const-string v0, "page_pos_click_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 124
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    :cond_15
    const-string v0, "page_pos_click_player_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    :cond_16
    const-string v0, "page_pos_click_player_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 128
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 129
    :cond_17
    const-string v0, "page_pos_click_stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 130
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 131
    :cond_18
    const-string v0, "page_pos_impression_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 132
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 133
    :cond_19
    const-string v0, "page_pos_impression_banner_secondary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 134
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 135
    :cond_1a
    const-string v0, "page_pos_impression_player_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 136
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    :cond_1b
    const-string v0, "page_pos_impression_player_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :cond_1c
    const-string v0, "page_pos_impression_splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 140
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 141
    :cond_1d
    const-string v0, "page_pos_impression_stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 142
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :cond_1e
    const-string v0, "page_pos_request_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 145
    :cond_1f
    const-string v0, "page_pos_request_player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 146
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    :cond_20
    const-string v0, "page_pos_request_splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 148
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 149
    :cond_21
    const-string v0, "page_pos_request_stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 150
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 151
    :cond_22
    const-string v0, "streams_list_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 153
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 155
    :cond_23
    const-string v0, "genre_list_updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 157
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mGenreListUpdated:Z

    goto/16 :goto_0

    .line 162
    :cond_24
    const-string v0, "market_list_updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMarketListUpdated:Z

    goto/16 :goto_0
.end method

.method public parseEnter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 56
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mFeatured:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 57
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mReadingFeatured:Z

    .line 58
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMarketListUpdated:Z

    .line 59
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mGenreListUpdated:Z

    .line 60
    return-void
.end method

.method public parseLeave()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 67
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsGatewayDisplayTime:I

    .line 68
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mContents:Ljava/lang/String;

    .line 175
    const-string v0, "featured"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mReadingFeatured:Z

    .line 178
    :cond_0
    return-void
.end method
