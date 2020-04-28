.class public Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
.super Ljava/lang/Object;
.source "IHRServiceConfiguration.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CITY_LIST_SERVICE:Ljava/lang/String; = "cities_list"

.field public static final FEATURED_CONTENT_LIST_SERVICE:Ljava/lang/String; = "featured_content"

.field public static final FETCHING_CITIES:Ljava/lang/String; = "Fetching Cities"

.field public static final FETCHING_FEATURED_CONTENT:Ljava/lang/String; = "Fetching Featured Content"

.field public static final FETCHING_FORMATS:Ljava/lang/String; = "Fetching Genres"

.field public static final FETCHING_PREMIUM:Ljava/lang/String; = "Fetching Premium"

.field public static final FETCHING_STATIONS:Ljava/lang/String; = "Fetching Stations"

.field public static final FETCHING_VIDEOS:Ljava/lang/String; = "Fetching Videos"

.field public static final GENRE_LIST_SERVICE:Ljava/lang/String; = "genre_list"

.field public static final MARKET_BY_LATITUDE_LONGITUDE:Ljava/lang/String; = "market_by_latitude_longitude"

.field public static final READING_CITIES:Ljava/lang/String; = "Reading Cities"

.field public static final READING_FORMATS:Ljava/lang/String; = "Reading Genres"

.field public static final READING_PREMIUM:Ljava/lang/String; = "Reading Premium"

.field public static final READING_STATIONS:Ljava/lang/String; = "Reading Stations"

.field public static final READING_VIDEO:Ljava/lang/String; = "Reading Videos"

.field public static final STARTUP_SERVICE:Ljava/lang/String; = "startup"

.field public static final STREAM_LIST_DELTA_SERVICE:Ljava/lang/String; = "streams_list_delta"

.field public static final STREAM_LIST_PREMIUM_SERVICE:Ljava/lang/String; = "streams_list_by_premium"

.field public static final STREAM_LIST_SERVICE:Ljava/lang/String; = "streams_list"

.field public static final VIDEO_LIST_SERVICE:Ljava/lang/String; = "video_list"

.field private static instance:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration; = null

.field public static final kAreFilesAvailable:I = 0x66

.field public static final kCachePremiumItem:I = 0xcc

.field public static final kCachePremiumItemOrPause:I = 0xcd

.field public static final kConfigurationCopyCities:I = 0xde

.field public static final kConfigurationCopyFormats:I = 0xdf

.field public static final kConfigurationCopyImage:I = 0xe2

.field public static final kConfigurationCopyLocal:I = 0xe1

.field public static final kConfigurationCopyStartup:I = 0xdd

.field public static final kConfigurationCopyStations:I = 0xe0

.field public static final kConfigurationFetchFiles:I = 0x44e

.field public static final kConfigurationFetchLocal:I = 0x44f

.field public static final kConfigurationFetchStartup:I = 0x44d

.field public static final kConfigurationPerformOnThread:I = 0x44c

.field public static final kCopyAutoplayStation:I = 0xa2

.field public static final kCopyCities:I = 0x85

.field public static final kCopyCity:I = 0x84

.field public static final kCopyCityByName:I = 0x86

.field public static final kCopyCommonParameters:I = 0x6c

.field public static final kCopyDefaultCity:I = 0xa3

.field public static final kCopyFeatured:I = 0xa1

.field public static final kCopyFormat:I = 0x7a

.field public static final kCopyFormatByName:I = 0x7c

.field public static final kCopyFormats:I = 0x7b

.field public static final kCopyLocal:I = 0xa3

.field public static final kCopyPremiumByName:I = 0x91

.field public static final kCopyPremiumBySite:I = 0x90

.field public static final kCopyPremiumChannel:I = 0x8e

.field public static final kCopyPremiumChannels:I = 0x8f

.field public static final kCopyPremiumChannelsString:I = 0x92

.field public static final kCopyPremiumItemsBySite:I = 0x93

.field public static final kCopyProgressForURL:I = 0xc9

.field public static final kCopyServerPath:I = 0x6b

.field public static final kCopyStartupAdsForPurpose:I = 0xac

.field public static final kCopyStartupAdsPrefix:I = 0xab

.field public static final kCopyStartupMediaVault:I = 0xb3

.field public static final kCopyStation:I = 0x70

.field public static final kCopyStationByLetters:I = 0x72

.field public static final kCopyStations:I = 0x71

.field public static final kCopyStatus:I = 0x6a

.field public static final kCopyUniqueParameters:I = 0x6d

.field public static final kDeletePremiumItem:I = 0xcb

.field public static final kFetchPremiumChannel:I = 0x94

.field public static final kFetchPremiumChannels:I = 0x95

.field public static final kGetCitiesCount:I = 0x83

.field public static final kGetFormatsCount:I = 0x79

.field public static final kGetPremiumCount:I = 0x8d

.field public static final kGetStationsCount:I = 0x6f

.field public static final kIsLocationAvailable:I = 0x67

.field public static final kIsOfflineMode:I = 0x68

.field public static final kIsStartupAvailable:I = 0x65

.field protected static final kKeyClientID:J = -0x53810a030843d15dL

.field public static final kMonitorConnectivity:I = 0x451

.field public static final kNotifyNameEndingOfflineMode:Ljava/lang/String; = "endingOfflineMode"

.field public static final kNotifyNameSiteValidated:Ljava/lang/String; = "siteValidated"

.field public static final kPlayPremiumItem:I = 0xca

.field public static final kSetAutoplayStation:I = 0xb5

.field public static final kSetSearchStations:I = 0x0

.field public static final kSiteDiscard:I = 0xc3

.field public static final kSiteHasAnyAuthenticated:I = 0xbf

.field public static final kSiteHasArchives:I = 0xc7

.field public static final kSiteHasAuthenticated:I = 0xc0

.field public static final kSitePropose:I = 0xc4

.field public static final kSiteUncache:I = 0xc2

.field public static final kSiteValidate:I = 0xc1

.field public static final kStreamListVersionName:Ljava/lang/String; = "stream_list_version"

.field public static final kTryAutoplayStation:I = 0x455

.field public static final mApplicationVersion:Ljava/lang/String; = "3.0.4"

.field public static mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

.field public static useNewPlayerRemoteHTTP:Z


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field private context:Landroid/content/Context;

.field public dh:Lcom/clearchannel/iheartradio/db/DataHelper;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mBackgroundDuration:I

.field public mBufferingCount:I

.field public mBufferingDuration:J

.field public mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

.field public mCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRCity;",
            ">;"
        }
    .end annotation
.end field

.field public mCitiesData:[B

.field public mConfiguration:I

.field private mCriteria:Landroid/location/Criteria;

.field public mCurrentBufferTime:J

.field public mCurrentMode:Ljava/lang/String;

.field public mCurrentModeTime:J

.field public mCurrentNetwork:Ljava/lang/String;

.field public mCurrentNetworkTime:J

.field private mCurrentProvider:Ljava/lang/String;

.field public mDataDuration:I

.field protected mDeviceID:Ljava/lang/String;

.field private mDisplayHandler:Landroid/os/Handler;

.field public mFavorited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFeatured:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation
.end field

.field public mFeaturedContentData:[B

.field public mFirstStation:Ljava/lang/String;

.field public mForegroundDuration:I

.field public mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;",
            ">;"
        }
    .end annotation
.end field

.field public mFormatsData:[B

.field public mImageData:[B

.field protected mListeningForLocation:Z

.field public mLocationData:[B

.field private mLocationMgr:Landroid/location/LocationManager;

.field public mOfflineDuration:I

.field public mPremiumData:[B

.field private mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field protected mSessionID:Ljava/lang/String;

.field public mSessionStations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStartupData:[B

.field public mStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation
.end field

.field public mStationsData:[B

.field public mStationsLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:Ljava/lang/String;

.field public mStreamBufferingDuration:J

.field public mStreamIsNew:Z

.field public mStreamPlayDelay:I

.field public mStreamRebufferCount:I

.field public mStreamRebufferDuration:J

.field public mStreamStartTime:J

.field public mTagged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private mUpdateDisplayTask:Ljava/lang/Runnable;

.field public mVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRVideo;",
            ">;"
        }
    .end annotation
.end field

.field public mVideosData:[B

.field public mWifiDuration:I

.field public mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

.field public serviceStopped:Z

.field private statusCount:I

.field private statusDisplay:Ljava/lang/String;

.field private storedStreamVersionNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->latitude:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->longitude:Ljava/lang/String;

    .line 260
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->serviceStopped:Z

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 1509
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    .line 266
    sput-object p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->instance:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    .line 244
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    .line 252
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->latitude:Ljava/lang/String;

    .line 253
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->longitude:Ljava/lang/String;

    .line 260
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->serviceStopped:Z

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 1509
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    .line 394
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->context:Landroid/content/Context;

    .line 398
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 397
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 399
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "carrierName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t-mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    sput-boolean v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    sput-boolean v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    goto :goto_0

    .line 410
    :cond_2
    sput-boolean v3, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusDisplay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;I)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadStationList()V

    return-void
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadCityList()V

    return-void
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadFormatList()V

    return-void
.end method

.method static synthetic access$8(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Lcom/clearchannel/iheartradio/android/services/IHRService;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    return-object v0
.end method

.method private fetchCityList(IZ)V
    .locals 9
    .param p1, "inAttempts"    # I
    .param p2, "forceFetch"    # Z

    .prologue
    .line 1195
    if-nez p2, :cond_1

    .line 1197
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    if-nez v4, :cond_0

    .line 1199
    const-string v4, "Reading Cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1200
    const-string v4, "Reading Cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadCityList()V

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    const-string v4, "Fetching Cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1207
    const-string v4, "Fetching Cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_2

    .line 1227
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1228
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCitiesData:[B

    if-eqz v4, :cond_0

    .line 1229
    const-string v4, "Reading Cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1231
    sget-object v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1232
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRLocal;

    sget-object v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRLocal;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 1233
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRLocal;->getDistance()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 1234
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/model/IHRLocal;->copyStationList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    .line 1233
    invoke-virtual {p0, v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->existingStations(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    .line 1232
    invoke-direct {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    sput-object v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1240
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "fetchCityList IOException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1212
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "arguments":Ljava/lang/String;
    const-string v4, "cities_list"

    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCitiesData:[B

    .line 1214
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCitiesData:[B

    if-eqz v4, :cond_3

    .line 1216
    new-instance v3, Lcom/clearchannel/iheartradio/xml/XMLCity;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCitiesData:[B

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/xml/XMLCity;-><init>([B)V

    .line 1217
    .local v3, "xmlCity":Lcom/clearchannel/iheartradio/xml/XMLCity;
    iget-object v4, v3, Lcom/clearchannel/iheartradio/xml/XMLCity;->cityList:Ljava/util/List;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    .line 1218
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->repopulateCities(Ljava/util/List;)V

    .line 1219
    const-string v4, "cities"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 1242
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v3    # "xmlCity":Lcom/clearchannel/iheartradio/xml/XMLCity;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1244
    .local v1, "e":Lorg/xml/sax/SAXException;
    const-string v4, "fetchCityList SAXException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1223
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v4, "City list"

    const-string v5, "Unable to obtain new cities list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1246
    .end local v0    # "arguments":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1248
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "fetchCityList ParserConfigurationException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1250
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 1252
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v4, "fetchCityList IHRDataAccessException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private fetchDeltaList(I)V
    .locals 10
    .param p1, "inAttempts"    # I

    .prologue
    .line 1091
    const/4 v4, 0x0

    .line 1094
    .local v4, "updateCitiesAndFormats":Z
    :try_start_0
    const-string v7, "Fetching Stations"

    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1095
    const-string v7, "Fetching Stations"

    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1096
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_1

    .line 1121
    :goto_1
    if-eqz v4, :cond_0

    .line 1125
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchCityList(IZ)V

    .line 1126
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMarketListUpdated:Z

    .line 1127
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchFormatsList(IZ)V

    .line 1128
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mGenreListUpdated:Z

    .line 1135
    .end local v2    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 1098
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "arguments":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1100
    .local v5, "versionParams":Ljava/lang/StringBuffer;
    const-string v7, "oldversion="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVersionMap:Ljava/util/Map;

    const-string v8, "stream_list_version"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    const-string v7, "&newversion="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1104
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    const-string v7, "streams_list_delta"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 1108
    .local v3, "mDeltaList":[B
    if-eqz v3, :cond_2

    .line 1110
    new-instance v6, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;

    invoke-direct {v6, v3}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;-><init>([B)V

    .line 1111
    .local v6, "xmlStreamDeltaList":Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v8, v6, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationList:Ljava/util/List;

    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->updateStreams(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 1112
    goto :goto_1

    .line 1116
    .end local v6    # "xmlStreamDeltaList":Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;
    :cond_2
    const-string v7, "Video list"

    const-string v8, "Unable to obtain new delta list"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mDeltaList":[B
    .end local v5    # "versionParams":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1132
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "fetchDeltaList"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private fetchFeaturedContentList(IZ)V
    .locals 7
    .param p1, "inAttempts"    # I
    .param p2, "forceFetch"    # Z

    .prologue
    .line 1412
    if-eqz p2, :cond_0

    .line 1414
    const-string v4, "Fetching Featured Content"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1415
    const-string v4, "Fetching Featured Content"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1418
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_1

    .line 1436
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1452
    .end local v2    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 1420
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "arguments":Ljava/lang/String;
    const-string v4, "featured_content"

    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeaturedContentData:[B

    .line 1423
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeaturedContentData:[B

    if-eqz v4, :cond_2

    .line 1425
    new-instance v3, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeaturedContentData:[B

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;-><init>([B)V

    .line 1427
    .local v3, "xmlFeaturedContent":Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getFeaturedContentList()Ljava/util/List;

    move-result-object v4

    .line 1426
    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeatured:Ljava/util/List;

    .line 1428
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeatured:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->repopulateFeaturedContent(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1438
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v3    # "xmlFeaturedContent":Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1440
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "fetchFeaturedContentList IOException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1433
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "IHRServiceConfiguration"

    const-string v5, "Unable to obtain new featured content list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1442
    .end local v0    # "arguments":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1443
    .local v1, "e":Lorg/xml/sax/SAXException;
    const-string v4, "fetchFeaturedContentList SAXException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1445
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1446
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "fetchFeaturedContentList ParserConfigurationException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1448
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 1449
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v4, "fetchFeaturedContentList IHRDataAccessException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private fetchFormatsList(IZ)V
    .locals 7
    .param p1, "inAttempts"    # I
    .param p2, "forceFetch"    # Z

    .prologue
    .line 1265
    if-nez p2, :cond_1

    .line 1267
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    if-nez v4, :cond_0

    .line 1269
    const-string v4, "Reading Genres"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1270
    const-string v4, "Reading Genres"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1271
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadFormatList()V

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    const-string v4, "Fetching Genres"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1277
    const-string v4, "Fetching Genres"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1280
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_2

    .line 1297
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1301
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "fetchFormatList IOException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1282
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "arguments":Ljava/lang/String;
    const-string v4, "genre_list"

    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormatsData:[B

    .line 1284
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormatsData:[B

    if-eqz v4, :cond_3

    .line 1286
    new-instance v3, Lcom/clearchannel/iheartradio/xml/XMLFormat;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormatsData:[B

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/xml/XMLFormat;-><init>([B)V

    .line 1287
    .local v3, "xmlFormat":Lcom/clearchannel/iheartradio/xml/XMLFormat;
    iget-object v4, v3, Lcom/clearchannel/iheartradio/xml/XMLFormat;->formatList:Ljava/util/List;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    .line 1288
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->repopulateFormats(Ljava/util/List;)V

    .line 1289
    const-string v4, "formats"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 1303
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v3    # "xmlFormat":Lcom/clearchannel/iheartradio/xml/XMLFormat;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1305
    .local v1, "e":Lorg/xml/sax/SAXException;
    const-string v4, "fetchFormatList SAXException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1294
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v4, "Genre list"

    const-string v5, "Unable to obtain new format list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1307
    .end local v0    # "arguments":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1309
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "fetchFormatList ParserConfigurationException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1310
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 1311
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v4, "fetchFormatList IHRDataAccessException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private fetchPremiumList(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "inAttempts"    # I
    .param p2, "arguments"    # Ljava/lang/String;
    .param p3, "forceFetch"    # Z

    .prologue
    .line 1372
    const/4 v1, 0x0

    .line 1373
    .local v1, "i":I
    if-ge v1, p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v2, :cond_0

    .line 1375
    const-string v2, "Fetching Premium"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1376
    const-string v2, "Fetching Premium"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1377
    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_1

    .line 1389
    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1390
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mPremiumData:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v2, :cond_0

    .line 1392
    const-string v2, "Reading Premium"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1393
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mPremiumData:[B

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseChannelsXML([B)V

    .line 1394
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mPremiumVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->fetch(Ljava/lang/String;Z)V

    .line 1403
    :cond_0
    :goto_2
    return-void

    .line 1379
    :cond_1
    const-string v2, "streams_list_by_premium"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mPremiumData:[B

    .line 1381
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mPremiumData:[B

    if-eqz v2, :cond_2

    .line 1383
    const-string v2, "premium"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1398
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1400
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "fetchPremiumList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mPremiumData:[B

    goto :goto_2

    .line 1386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "Video list"

    const-string v3, "Unable to obtain new premiun list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private fetchStationsList(IZ)V
    .locals 7
    .param p1, "inAttempts"    # I
    .param p2, "forceFetch"    # Z

    .prologue
    .line 1146
    if-eqz p2, :cond_0

    .line 1153
    :try_start_0
    const-string v4, "Fetching Stations"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1154
    const-string v4, "Fetching Stations"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_1

    .line 1174
    .end local v2    # "i":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1186
    :goto_2
    return-void

    .line 1157
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "arguments":Ljava/lang/String;
    const-string v4, "streams_list"

    .line 1158
    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsData:[B

    .line 1161
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsData:[B

    if-eqz v4, :cond_2

    .line 1163
    new-instance v3, Lcom/clearchannel/iheartradio/xml/XMLStation;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsData:[B

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/xml/XMLStation;-><init>([B)V

    .line 1164
    .local v3, "xmlStation":Lcom/clearchannel/iheartradio/xml/XMLStation;
    iget-object v4, v3, Lcom/clearchannel/iheartradio/xml/XMLStation;->stationList:Ljava/util/List;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    .line 1165
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->repopulateStations(Ljava/util/List;)V

    .line 1166
    const-string v4, "stations"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1176
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "xmlStation":Lcom/clearchannel/iheartradio/xml/XMLStation;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1177
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "fetchStationList IOException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1170
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arguments":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    const-string v4, "Video list"

    const-string v5, "Unable to obtain new stream list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1178
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1179
    .local v1, "e":Lorg/xml/sax/SAXException;
    const-string v4, "fetchStationList SAXException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1180
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1181
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "fetchStationList ParserConfigurationException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1182
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 1183
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v4, "fetchStationList IHRDataAccessException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private fetchVideoList(IZ)V
    .locals 6
    .param p1, "inAttempts"    # I
    .param p2, "forceFetch"    # Z

    .prologue
    .line 1320
    if-eqz p2, :cond_0

    .line 1321
    const-string v4, "Fetching Videos"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1322
    const-string v4, "Fetching Videos"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1324
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_1

    .line 1356
    .end local v2    # "i":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1360
    return-void

    .line 1326
    .restart local v2    # "i":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "arguments":Ljava/lang/String;
    const-string v4, "video_list"

    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVideosData:[B

    .line 1329
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVideosData:[B

    if-eqz v4, :cond_2

    .line 1331
    new-instance v3, Lcom/clearchannel/iheartradio/xml/XMLVideo;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVideosData:[B

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/xml/XMLVideo;-><init>([B)V

    .line 1332
    .local v3, "xmlVideo":Lcom/clearchannel/iheartradio/xml/XMLVideo;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getVideoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVideos:Ljava/util/List;

    .line 1333
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVideos:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->repopulateVideos(Ljava/util/List;)V

    .line 1334
    const-string v4, "videos"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1342
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v3    # "xmlVideo":Lcom/clearchannel/iheartradio/xml/XMLVideo;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1344
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1339
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "Video list"

    const-string v5, "Unable to obtain new video list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1345
    .end local v0    # "arguments":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1347
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 1348
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1350
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 1351
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 1353
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadCityList()V
    .locals 3

    .prologue
    .line 1491
    :try_start_0
    new-instance v1, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 1492
    .local v1, "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectAllCities()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    .end local v1    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1495
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadFormatList()V
    .locals 3

    .prologue
    .line 1501
    :try_start_0
    new-instance v1, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 1502
    .local v1, "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectAllFormats()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    .end local v1    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1505
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadStationList()V
    .locals 5

    .prologue
    .line 1477
    :try_start_0
    new-instance v1, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 1478
    .local v1, "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectAllStations()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    .line 1479
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v2, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->reverseStations(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1487
    .end local v1    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :cond_0
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1483
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v2, "IHRServiceConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while loading station list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1484
    .end local v0    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1485
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IHRServiceConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while loading station list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readLists()V
    .locals 1

    .prologue
    .line 1455
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$2;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$2;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 1460
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$2;->start()V

    .line 1461
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$3;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$3;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 1466
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$3;->start()V

    .line 1467
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$4;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$4;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 1472
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$4;->start()V

    .line 1473
    return-void
.end method

.method private readStations()V
    .locals 2

    .prologue
    .line 1079
    const-string v0, "Reading Stations"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    .line 1080
    const-string v0, "Reading Stations"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->loadStationList()V

    .line 1082
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->instance:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    return-object v0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "inAction"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.clearchannel.iheartradio.configuration"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 274
    return-object v0
.end method

.method public cachePremiumItem(Ljava/util/List;Z)I
    .locals 3
    .param p2, "inOrPause"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 1782
    .local p1, "inList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-direct {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>(Ljava/util/Collection;)V

    .line 1783
    .local v0, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1785
    .local v1, "site":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->truncate()V

    .line 1787
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2, v0, p2, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveDownload(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;ZLjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public copyLocal(Z)Lcom/clearchannel/iheartradio/model/IHRLocal;
    .locals 8
    .param p1, "inTryCached"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1754
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 1756
    .local v1, "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1758
    :try_start_0
    const-string v4, "local_stations"

    const-string v5, "1"

    .line 1759
    const/4 v6, 0x0

    .line 1758
    invoke-static {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->access(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 1760
    .local v3, "xml":[B
    if-nez v3, :cond_2

    move-object v0, v7

    .line 1763
    .local v0, "local":Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;
    :goto_0
    if-eqz v0, :cond_0

    .line 1764
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRLocal;

    iget-object v4, v0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mName:Ljava/lang/String;

    iget-object v5, v0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mDistance:Ljava/lang/String;

    .line 1765
    iget-object v6, v0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 1764
    invoke-direct {v2, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/IHRLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    .local v2, "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    move-object v1, v2

    .line 1769
    .end local v0    # "local":Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;
    .end local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    .end local v3    # "xml":[B
    .restart local v1    # "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 1771
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 1774
    :cond_1
    return-object v1

    .line 1761
    .restart local v3    # "xml":[B
    :cond_2
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 1766
    .end local v3    # "xml":[B
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected deviceID()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 340
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 341
    :cond_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v8, "_-6017101585283535197"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    .line 343
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 348
    :cond_1
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 349
    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 348
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 350
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 352
    const-string v6, ""

    .line 354
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 358
    .local v0, "bytes":[B
    array-length v7, v0

    invoke-static {v0, v10, v7}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->SHA1Digest([BII)[B

    move-result-object v0

    .line 360
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const-string v6, ""

    :goto_0
    const/4 v7, 0x5

    if-lt v1, v7, :cond_4

    .line 383
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v8, "_-6017101585283535197"

    invoke-virtual {v7, v8, v6}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    iput-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    .line 389
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDeviceID:Ljava/lang/String;

    return-object v7

    .line 361
    .restart local v0    # "bytes":[B
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 372
    const/4 v5, 0x6

    .line 376
    .local v5, "n":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "k":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_2
    if-lt v4, v5, :cond_6

    .line 379
    const/4 v7, 0x4

    if-ge v1, v7, :cond_5

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 363
    .end local v4    # "k":I
    .end local v5    # "n":I
    :pswitch_0
    const/4 v5, 0x4

    .line 364
    .restart local v5    # "n":I
    goto :goto_1

    .line 368
    .end local v5    # "n":I
    :pswitch_1
    const/4 v5, 0x2

    .line 369
    .restart local v5    # "n":I
    goto :goto_1

    .line 377
    .end local v2    # "j":I
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v8, v0, v3

    invoke-static {v8, v10}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->hexify(BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public existingStations(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .param p1, "inStations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "inStationsLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List;>;"
    const/4 v3, 0x0

    .line 680
    .local v3, "result":Ljava/util/List;
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 681
    :cond_0
    move-object v3, p1

    .line 698
    :cond_1
    return-object v3

    .line 683
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 685
    .local v2, "n":I
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v3    # "result":Ljava/util/List;
    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 687
    .restart local v3    # "result":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 688
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 690
    .local v1, "letters":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 691
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public existingStationsFromStreamId(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .param p1, "inStations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 724
    .local p2, "inStationsLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List;>;"
    const/4 v2, 0x0

    .line 726
    .local v2, "result":Ljava/util/List;
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 727
    :cond_0
    move-object v2, p1

    .line 742
    :cond_1
    const-string v5, "Local"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " local stations found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-object v2

    .line 729
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 731
    .local v1, "n":I
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v2    # "result":Ljava/util/List;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 733
    .restart local v2    # "result":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 734
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 735
    .local v4, "streamId":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 736
    .local v3, "stat":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v3, :cond_3

    .line 737
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "location":Landroid/location/Location;
    const/4 v2, 0x0

    .line 615
    .local v2, "providerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    .line 616
    .local v1, "manager":Landroid/location/LocationManager;
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationProviderName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v2

    .line 622
    :cond_0
    if-eqz v2, :cond_1

    .line 623
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 627
    :cond_1
    if-nez v0, :cond_2

    .line 628
    if-eqz v2, :cond_4

    .line 629
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 645
    :cond_2
    :goto_0
    return-object v0

    .line 634
    :cond_3
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 633
    goto :goto_0

    .line 638
    :cond_4
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 637
    if-nez v0, :cond_2

    .line 640
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 639
    goto :goto_0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 4

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 565
    .local v1, "result":Landroid/location/LocationManager;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 566
    const-string v3, "location"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 565
    move-object v0, v2

    check-cast v0, Landroid/location/LocationManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-object v1

    .line 567
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLocationProvider()Landroid/location/LocationProvider;
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 608
    .local v0, "manager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 609
    :cond_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationProviderName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationProviderName(Landroid/location/LocationManager;)Ljava/lang/String;
    .locals 4
    .param p1, "manager"    # Landroid/location/LocationManager;

    .prologue
    const/4 v3, 0x0

    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 577
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 579
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 580
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 581
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 582
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 583
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 590
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 592
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 594
    if-nez v1, :cond_0

    .line 595
    invoke-virtual {p1, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 598
    .end local v0    # "criteria":Landroid/location/Criteria;
    :cond_0
    if-nez v1, :cond_1

    .line 600
    const-string v1, "network"

    .line 603
    :cond_1
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1689
    const/4 v0, 0x1

    .line 1691
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1719
    :pswitch_0
    const/4 v0, 0x0

    .line 1723
    :goto_0
    return v0

    .line 1700
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runFetchStartup(I)V

    goto :goto_0

    .line 1703
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runParseStartup(I)Z

    goto :goto_0

    .line 1706
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runFetchLocal(I)Z

    goto :goto_0

    .line 1709
    :pswitch_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$5;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$5;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 1713
    const-string v3, "IHRConfiguration"

    .line 1709
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1716
    :pswitch_5
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tryAutoplayStation()V

    goto :goto_0

    .line 1691
    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    const-wide/16 v6, 0x2a30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1867
    const/4 v0, 0x1

    .line 1869
    .local v0, "result":Z
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v1, p1, v4, p4, p2}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IIILjava/lang/Object;)Z

    .line 2069
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :goto_0
    return v0

    .line 1872
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2065
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1875
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    .line 1878
    :pswitch_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormatsData:[B

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_2

    .line 1881
    :pswitch_3
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    if-nez v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_3

    .line 1884
    :pswitch_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v1, :cond_4

    .line 1885
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v5

    .line 1884
    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_4
    move v1, v4

    .line 1885
    goto :goto_4

    .line 1888
    :pswitch_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStatus:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1891
    :pswitch_6
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1894
    :pswitch_7
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1897
    :pswitch_8
    sget-object v1, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1901
    :pswitch_9
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1904
    :pswitch_a
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCitiesData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1907
    :pswitch_b
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormatsData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1910
    :pswitch_c
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1913
    :pswitch_d
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1916
    :pswitch_e
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mImageData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1920
    :pswitch_f
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1923
    :pswitch_10
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/util/List;

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1926
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_11
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1929
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->stationByLetters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1933
    :pswitch_13
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1936
    :pswitch_14
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/util/List;

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1939
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_15
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1942
    :pswitch_16
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFormats:Ljava/util/List;

    .line 1943
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1942
    invoke-virtual {p0, v1, v2, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->locateValueInArrayByIndex(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1947
    :pswitch_17
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1950
    :pswitch_18
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/util/List;

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1953
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_19
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1956
    :pswitch_1a
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    .line 1957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1956
    invoke-virtual {p0, v1, v2, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->locateValueInArrayByIndex(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1961
    :pswitch_1b
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1964
    :pswitch_1c
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    .line 1965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 1964
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1968
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_1d
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels(Z)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto :goto_5

    .line 1971
    :pswitch_1e
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    .line 1972
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v2, :cond_6

    move v2, v5

    :goto_6
    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels(Z)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    .line 1971
    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 1972
    goto :goto_6

    .line 1976
    :pswitch_1f
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    .line 1977
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1978
    const/4 v3, 0x2

    .line 1976
    invoke-virtual {p0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->locateValueInArrayByIndex(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1982
    :pswitch_20
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    .line 1983
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1982
    invoke-virtual {p0, v1, v2, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->locateValueInArrayByIndex(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1987
    :pswitch_21
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    .line 1988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v3, :cond_7

    move v3, v5

    :goto_7
    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItems(Ljava/lang/String;Z)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    .line 1987
    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 1988
    goto :goto_7

    .line 1991
    :pswitch_22
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->refresh(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1994
    :pswitch_23
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->refresh(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1998
    :pswitch_24
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v1

    .line 1999
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAnyAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    .line 1998
    :goto_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v4

    .line 1999
    goto :goto_8

    .line 2002
    :pswitch_25
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v1

    .line 2003
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2002
    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAuthenticated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    :goto_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_9
    move v1, v4

    .line 2003
    goto :goto_9

    .line 2007
    :pswitch_26
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->hasArchives(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v5

    :goto_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v4

    .line 2008
    goto :goto_a

    .line 2011
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->validateSite(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2015
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc3

    if-ne v2, p1, :cond_b

    move v2, v5

    :goto_b
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->removeSite(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    goto :goto_b

    .line 2018
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->proposeSite([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2021
    :pswitch_2a
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 2024
    :pswitch_2b
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFeatured:Ljava/util/List;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2027
    :pswitch_2c
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v2, "autoplay_letters"

    .line 2028
    const-string v3, ""

    .line 2027
    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2033
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->setAutoplayStation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    :pswitch_2e
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsDartURLPrefix:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2040
    :pswitch_2f
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsPagePositions:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 2041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/lang/String;

    .line 2040
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2044
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_30
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMediaVaultURL:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2048
    :pswitch_31
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 2048
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2052
    :pswitch_32
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->delete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2057
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2058
    const/16 v2, 0xcd

    if-ne p1, v2, :cond_c

    move v2, v5

    .line 2057
    :goto_c
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->cachePremiumItem(Ljava/util/List;Z)I

    goto/16 :goto_0

    :cond_c
    move v2, v4

    .line 2058
    goto :goto_c

    .line 2061
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->playPremiumItem(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1872
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_31
        :pswitch_34
        :pswitch_32
        :pswitch_33
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public httpFetchComplete(Lcom/clearchannel/iheartradio/model/IHRHTTP;)V
    .locals 1
    .param p1, "http"    # Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .prologue
    .line 554
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getDataNoThrow()[B

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mImageData:[B

    .line 556
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mImageData:[B

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "splash_ad"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V

    .line 559
    :cond_0
    return-void
.end method

.method public isReadyForOffline()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1540
    const/4 v1, 0x0

    .line 1542
    .local v1, "result":Z
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1543
    const-string v2, "premium"

    .line 1544
    const-string v3, "<!@>\t"

    .line 1543
    invoke-static {v2, v3, v6}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchOrLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1546
    .local v0, "previous":[B
    if-eqz v0, :cond_0

    .line 1547
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseChannelsXML([B)V

    .line 1548
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2, v6, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->fetch(Ljava/lang/String;Z)V

    .line 1553
    .end local v0    # "previous":[B
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1556
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAnyAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1557
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->hasArchives(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v5

    .line 1567
    :cond_1
    :goto_0
    return v4

    :cond_2
    move v1, v4

    .line 1557
    goto :goto_0
.end method

.method public listenForLocation(ZLandroid/location/LocationListener;)V
    .locals 6
    .param p1, "inListen"    # Z
    .param p2, "inListener"    # Landroid/location/LocationListener;

    .prologue
    .line 649
    iget-boolean v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mListeningForLocation:Z

    if-eq p1, v2, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 652
    .local v0, "manager":Landroid/location/LocationManager;
    if-nez v0, :cond_1

    .line 653
    const/4 p1, 0x0

    .line 668
    :goto_0
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mListeningForLocation:Z

    .line 670
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_0
    return-void

    .line 654
    .restart local v0    # "manager":Landroid/location/LocationManager;
    :cond_1
    if-eqz p1, :cond_3

    .line 655
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLocationProviderName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 658
    const/4 p1, 0x0

    goto :goto_0

    .line 661
    :cond_2
    const-wide/32 v2, 0x927c0

    const/high16 v4, 0x447a0000    # 1000.0f

    move-object v5, p2

    .line 660
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 665
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public locateValueInArrayByIndex(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "inArray"    # Ljava/util/List;
    .param p2, "inValue"    # Ljava/lang/String;
    .param p3, "inIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    const/4 v3, 0x0

    .line 1731
    .local v3, "result":Ljava/util/List;
    if-nez p1, :cond_2

    const/4 v4, 0x0

    move v0, v4

    .line 1733
    .local v0, "count":I
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 1734
    :cond_0
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v3    # "result":Ljava/util/List;
    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 1736
    .restart local v3    # "result":Ljava/util/List;
    const/4 v2, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    .local v2, "index":I
    :goto_1
    if-lt v2, v0, :cond_3

    .line 1750
    :cond_1
    :goto_2
    return-object v3

    .line 1731
    .end local v0    # "count":I
    .end local v2    # "index":I
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1737
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1740
    .end local v2    # "index":I
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :cond_4
    const/4 v2, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    .restart local v2    # "index":I
    :goto_3
    if-ge v2, v0, :cond_1

    .line 1741
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1743
    .local v1, "entry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1744
    move-object v3, v1

    .line 1745
    goto :goto_2

    .line 1740
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 4
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->action(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 280
    const-string v2, "details"

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->bundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2073
    const-string v0, "configuration"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    new-instance v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$7;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$7;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 2082
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 6
    .param p1, "inService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    .line 304
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentMode:Ljava/lang/String;

    .line 306
    iput-wide v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentModeTime:J

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mFirstStation:Ljava/lang/String;

    .line 308
    iput-wide v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingDuration:J

    .line 309
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBufferingCount:I

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCurrentNetwork:Ljava/lang/String;

    .line 311
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mWifiDuration:I

    .line 312
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDataDuration:I

    .line 313
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mOfflineDuration:I

    .line 314
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mForegroundDuration:I

    .line 315
    iput v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mBackgroundDuration:I

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionStations:Ljava/util/HashMap;

    .line 318
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->deviceID()Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionID:Ljava/lang/String;

    .line 320
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    .line 321
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 322
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 323
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackVersion()V

    .line 326
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    .line 327
    const-string v2, "3.0.4"

    .line 326
    invoke-virtual {v0, v1, v2, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackApplication(Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;Ljava/lang/String;I)V

    .line 331
    sput-object p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->instance:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 332
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->stopGPS()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 337
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "arguments":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&latitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&longitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string v4, "market_by_latitude_longitude"

    invoke-static {v4, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    .line 757
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    invoke-direct {v2, v4}, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;-><init>([B)V

    .line 759
    .local v2, "local":Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;
    iget-object v4, v2, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->reverseStationsByStreamId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->existingStationsFromStreamId(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 762
    .local v3, "localMap":Ljava/util/List;
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRLocal;

    iget-object v5, v2, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mName:Ljava/lang/String;

    iget-object v6, v2, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mDistance:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/clearchannel/iheartradio/model/IHRLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    sput-object v4, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 764
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v5, "location"

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->action(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "latitude"

    .line 765
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 764
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v5

    .line 765
    const-string v6, "longitude"

    .line 766
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 765
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v5

    .line 764
    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 767
    const-string v4, "local_stations"

    const-string v5, "1"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    invoke-static {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->access(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 769
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocationData:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 770
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "local":Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;
    .end local v3    # "localMap":Ljava/util/List;
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 780
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 783
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 786
    if-nez p2, :cond_0

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 791
    :cond_0
    return-void
.end method

.method public playPremiumItem(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "inList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1847
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 1849
    .local v2, "site":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    move-object v1, v5

    .line 1851
    .local v1, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :goto_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v3, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    .line 1853
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    if-nez v1, :cond_2

    .line 1854
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v3, v0, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playArchive(Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)V

    .line 1863
    :goto_2
    return-void

    .end local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .end local v1    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .end local v2    # "site":Ljava/lang/String;
    :cond_0
    move-object v2, v5

    .line 1848
    goto :goto_0

    .line 1850
    .restart local v2    # "site":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-direct {v3, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    goto :goto_1

    .line 1855
    .restart local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .restart local v1    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->available()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1856
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->truncate()V

    .line 1858
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveDownload(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;ZLjava/lang/String;)I

    .line 1859
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v3, v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playArchive(Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)V

    goto :goto_2

    .line 1861
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getStationForItem(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStation(Ljava/util/List;)V

    goto :goto_2
.end method

.method public proposeSite([Ljava/lang/String;)V
    .locals 11
    .param p1, "inCredentials"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1828
    if-nez p1, :cond_0

    move v1, v7

    .line 1830
    .local v1, "length":I
    :goto_0
    if-lez v1, :cond_1

    aget-object v5, p1, v7

    move-object v3, v5

    .line 1831
    .local v3, "site":Ljava/lang/String;
    :goto_1
    if-le v1, v8, :cond_2

    aget-object v5, p1, v8

    move-object v4, v5

    .line 1832
    .local v4, "username":Ljava/lang/String;
    :goto_2
    if-le v1, v9, :cond_3

    aget-object v5, p1, v9

    move-object v2, v5

    .line 1833
    .local v2, "password":Ljava/lang/String;
    :goto_3
    if-le v1, v10, :cond_4

    aget-object v5, p1, v10

    move-object v0, v5

    .line 1835
    .local v0, "expiring":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v2, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    return-void

    .line 1828
    .end local v0    # "expiring":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "site":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    :cond_0
    array-length v5, p1

    move v1, v5

    goto :goto_0

    .restart local v1    # "length":I
    :cond_1
    move-object v3, v6

    .line 1830
    goto :goto_1

    .restart local v3    # "site":Ljava/lang/String;
    :cond_2
    move-object v4, v6

    .line 1831
    goto :goto_2

    .restart local v4    # "username":Ljava/lang/String;
    :cond_3
    move-object v2, v6

    .line 1832
    goto :goto_3

    .restart local v2    # "password":Ljava/lang/String;
    :cond_4
    move-object v0, v6

    .line 1833
    goto :goto_4
.end method

.method public removeSite(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inForget"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1840
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveRemoveSite(Ljava/lang/String;)V

    .line 1842
    if-eqz p2, :cond_0

    .line 1843
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    :cond_0
    return-void
.end method

.method public reverseStationsByStreamId(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p1, "inStations"    # Ljava/util/List;

    .prologue
    .line 703
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 706
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p1, :cond_0

    const/4 v5, 0x0

    move v1, v5

    .line 708
    .local v1, "n":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 719
    return-object v2

    .line 706
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 709
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 710
    .local v3, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 712
    .local v4, "streamID":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 713
    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reverseTraffic()V
    .locals 7

    .prologue
    .line 823
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 825
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 840
    return-void

    .line 826
    :cond_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mCities:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRCity;

    .line 827
    .local v0, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 831
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v6

    .line 830
    invoke-static {v6, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->parseCityTraffic(Ljava/lang/String;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    .line 832
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, "letters":Ljava/lang/String;
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 835
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStations:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .end local v3    # "letters":Ljava/lang/String;
    .end local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public runDisplayUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1533
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusDisplay:Ljava/lang/String;

    .line 1534
    iput v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    .line 1535
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1536
    iput v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->statusCount:I

    .line 1537
    return-void
.end method

.method public runFetchLocal(I)Z
    .locals 3
    .param p1, "inUseCurrent"    # I

    .prologue
    .line 1665
    const/4 v1, 0x0

    .line 1666
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 1668
    .local v0, "location":Landroid/location/Location;
    if-nez p1, :cond_0

    sget-object v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    if-nez v2, :cond_1

    .line 1670
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->getLastLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1675
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1676
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->onLocationChanged(Landroid/location/Location;)V

    .line 1677
    const/4 v1, 0x1

    .line 1680
    :cond_2
    if-nez p1, :cond_3

    .line 1681
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 1684
    :cond_3
    return v1

    .line 1671
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public runFetchStartup(I)V
    .locals 8
    .param p1, "configuration"    # I

    .prologue
    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "arguments":Ljava/lang/String;
    const-string v2, ""

    .line 883
    .local v2, "label":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 886
    iput p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mConfiguration:I

    .line 888
    packed-switch p1, :pswitch_data_0

    .line 898
    const-string v2, ""

    .line 899
    const-string v4, "production/"

    sput-object v4, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    .line 903
    :goto_0
    new-instance v4, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 904
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/db/DataHelper;->createDatabase()V

    .line 905
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->readLists()V

    .line 907
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->hasConnectivity()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->isReadyForOffline()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const/16 v5, 0x451

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IJ)Z

    .line 909
    const-string v4, "offline"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V

    .line 944
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 890
    .restart local v0    # "arguments":Ljava/lang/String;
    .restart local v2    # "label":Ljava/lang/String;
    :pswitch_0
    const-string v2, "Staging "

    .line 891
    const-string v4, "staging/"

    sput-object v4, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 938
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 940
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "runFetchStartup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 894
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arguments":Ljava/lang/String;
    .restart local v2    # "label":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    const-string v2, "Staging "

    .line 895
    const-string v4, "development/"

    sput-object v4, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    goto :goto_0

    .line 911
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->hasConnectivity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 912
    const-string v4, "noconnection"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V

    goto :goto_1

    .line 915
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fetching "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 917
    :cond_2
    iget-boolean v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->serviceStopped:Z

    if-eqz v4, :cond_3

    .line 935
    :goto_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 936
    const-string v4, "startup"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V

    goto :goto_1

    .line 919
    :cond_3
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectVersions()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVersionMap:Ljava/util/Map;

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .local v3, "url":Ljava/lang/StringBuilder;
    const-string v4, "versionid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVersionMap:Ljava/util/Map;

    const-string v5, "stream_list_version"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "1"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v4, "Start up URL"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v4, "startup"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    .line 928
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    if-eqz v4, :cond_2

    .line 929
    new-instance v4, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;-><init>([B)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    goto :goto_2

    .line 923
    :cond_4
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVersionMap:Ljava/util/Map;

    const-string v5, "stream_list_version"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 888
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public runParseStartup(I)Z
    .locals 19
    .param p1, "inAttempts"    # I

    .prologue
    .line 947
    const/4 v8, 0x0

    .line 949
    .local v8, "i":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "arguments":Ljava/lang/String;
    const/4 v10, 0x0

    .line 954
    .local v10, "isModeChanged":Z
    const-string v14, "ConfigurationMode"

    .line 955
    sget-object v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->name()Ljava/lang/String;

    move-result-object v15

    .line 954
    invoke-static {v14, v15}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 956
    sget-object v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->name()Ljava/lang/String;

    move-result-object v15

    .line 955
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 957
    const/4 v10, 0x1

    .line 960
    :cond_0
    const-string v14, "ConfigurationMode"

    .line 961
    sget-object v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->name()Ljava/lang/String;

    move-result-object v15

    .line 960
    invoke-static {v14, v15}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 963
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->serviceStopped:Z

    move v14, v0

    if-eqz v14, :cond_1

    .line 964
    const/4 v14, 0x0

    .line 1074
    .end local v4    # "arguments":Ljava/lang/String;
    .end local v10    # "isModeChanged":Z
    :goto_0
    return v14

    .line 966
    .restart local v4    # "arguments":Ljava/lang/String;
    .restart local v10    # "isModeChanged":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v14, v0

    if-nez v14, :cond_2

    .line 967
    new-instance v14, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/db/DataHelper;->createDatabase()V

    .line 971
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsSplashDisplayTime:I

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsSplashDartURL:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAdsSplashDartURL:Ljava/lang/String;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;)Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .line 976
    :cond_3
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 991
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string v14, "favorites"

    const-string v15, ""

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 992
    .local v7, "favoritesStationsPref":Ljava/lang/String;
    const-string v14, "\t"

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 993
    .local v6, "favStations":[Ljava/lang/String;
    array-length v14, v6

    const/4 v15, 0x0

    :goto_1
    if-lt v15, v14, :cond_9

    .line 1005
    const-string v14, "favorites"

    invoke-static {v14}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v14, v0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v14, v0

    if-eqz v14, :cond_7

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mVersionMap:Ljava/util/Map;

    move-object v14, v0

    const-string v15, "stream_list_version"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_4

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c

    .line 1011
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchStationsList(IZ)V

    .line 1012
    invoke-direct/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->readStations()V

    .line 1014
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchCityList(IZ)V

    .line 1016
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 1017
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchFormatsList(IZ)V

    .line 1018
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchVideoList(IZ)V

    .line 1019
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchFeaturedContentList(IZ)V

    .line 1020
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchPremiumList(ILjava/lang/String;Z)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    if-nez v14, :cond_5

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_7

    .line 1023
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_6

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_b

    .line 1025
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v15, v0

    iget-object v15, v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertStreamVersion(Ljava/lang/String;)V

    .line 1060
    :cond_7
    :goto_2
    const-string v14, "Fetching Local Stations"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runDisplayUpdate(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mDisplayHandler:Landroid/os/Handler;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mUpdateDisplayTask:Ljava/lang/Runnable;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    const-string v14, "complete"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;)V

    .line 1065
    move v0, v8

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v14, v0

    if-eqz v14, :cond_8

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const/16 v15, 0x455

    invoke-virtual {v14, v15}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(I)Z

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/android/services/IHRService;->commit()Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v14}, Lcom/clearchannel/iheartradio/model/IHRCache;->restoreDownloadsAfterLaunch()V

    .line 1074
    .end local v4    # "arguments":Ljava/lang/String;
    .end local v6    # "favStations":[Ljava/lang/String;
    .end local v7    # "favoritesStationsPref":Ljava/lang/String;
    .end local v10    # "isModeChanged":Z
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    :goto_3
    move v0, v8

    move/from16 v1, p1

    if-ge v0, v1, :cond_f

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 993
    .restart local v4    # "arguments":Ljava/lang/String;
    .restart local v6    # "favStations":[Ljava/lang/String;
    .restart local v7    # "favoritesStationsPref":Ljava/lang/String;
    .restart local v10    # "isModeChanged":Z
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_9
    aget-object v13, v6, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 995
    .local v13, "station":Ljava/lang/String;
    :try_start_1
    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_a

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v9

    .line 997
    .local v9, "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v9, :cond_a

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteStation(J)V
    :try_end_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 993
    .end local v9    # "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_a
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1001
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 1002
    .local v5, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :try_start_2
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1071
    .end local v4    # "arguments":Ljava/lang/String;
    .end local v5    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v6    # "favStations":[Ljava/lang/String;
    .end local v7    # "favoritesStationsPref":Ljava/lang/String;
    .end local v10    # "isModeChanged":Z
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "station":Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 1072
    .local v5, "e":Ljava/lang/Exception;
    const-string v14, "runParseStartup"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1027
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "arguments":Ljava/lang/String;
    .restart local v6    # "favStations":[Ljava/lang/String;
    .restart local v7    # "favoritesStationsPref":Ljava/lang/String;
    .restart local v10    # "isModeChanged":Z
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v15, v0

    iget-object v15, v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/clearchannel/iheartradio/db/DataHelper;->updateStreamVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1032
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchStationsList(IZ)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-object v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v14

    if-eqz v14, :cond_d

    .line 1038
    const/4 v11, 0x0

    .line 1041
    .local v11, "newVersion":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->storedStreamVersionNumber:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v15, v0

    iget-object v15, v15, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mStreamListVersion:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v15

    if-ge v14, v15, :cond_e

    const/4 v14, 0x1

    move v11, v14

    .line 1046
    :goto_5
    if-eqz v11, :cond_d

    .line 1047
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchDeltaList(I)V

    .line 1050
    .end local v11    # "newVersion":Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->readStations()V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mMarketListUpdated:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchCityList(IZ)V

    .line 1053
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mGenreListUpdated:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchFormatsList(IZ)V

    .line 1055
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchVideoList(IZ)V

    .line 1056
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchPremiumList(ILjava/lang/String;Z)V

    .line 1057
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->fetchFeaturedContentList(IZ)V

    goto/16 :goto_2

    .line 1041
    .restart local v11    # "newVersion":Z
    :cond_e
    const/4 v14, 0x0

    move v11, v14

    goto :goto_5

    .line 1042
    :catch_2
    move-exception v14

    move-object v5, v14

    .line 1043
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v14, "IHRServiceConfiguration.runParseStartup"

    const-string v15, "Version number is not an int."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 1074
    .end local v4    # "arguments":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "favStations":[Ljava/lang/String;
    .end local v7    # "favoritesStationsPref":Ljava/lang/String;
    .end local v10    # "isModeChanged":Z
    .end local v11    # "newVersion":Z
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public setAutoplayStation(Ljava/lang/String;)V
    .locals 5
    .param p1, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 516
    new-instance v2, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 517
    const/4 v1, 0x0

    .line 519
    .local v1, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .line 521
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 522
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/lang/String;

    .line 521
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/db/DataHelper;->setAutoplayStation(J)V

    .line 528
    :goto_1
    return-void

    .line 520
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 523
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 524
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v2, "IHRServiceConfiguration"

    .line 525
    const-string v3, "Failed to set autoplay station from call letters."

    .line 524
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    .locals 3

    .prologue
    .line 421
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;-><init>()V

    .line 422
    .local v0, "result":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    const-string v1, "apikey"

    const-string v2, "QW5kcm9pZHwzfHhtbHwzLjE="

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "clientType"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "iheartradioVersion"

    const-string v2, "3.0.4"

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "osVersion"

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "deviceId"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->deviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "view"

    const-string v2, "PlayerViewController"

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v0
.end method

.method public stationByLetters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 1778
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
    check-cast p0, Ljava/util/List;

    move-object v0, p0

    goto :goto_0
.end method

.method public stopGPS()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->listenForLocation(ZLandroid/location/LocationListener;)V

    .line 674
    return-void
.end method

.method public tagAccess(I)V
    .locals 3
    .param p1, "inAction"    # I

    .prologue
    .line 438
    const-string v0, "tagged"

    .line 439
    .local v0, "key":Ljava/lang/String;
    if-lez p1, :cond_4

    .line 440
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 441
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-nez v1, :cond_3

    .line 444
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesUnset(Ljava/lang/String;)Z

    .line 453
    :cond_2
    :goto_0
    return-void

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesWrite(Ljava/lang/String;Ljava/util/Collection;)Z

    goto :goto_0

    .line 448
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-eqz v1, :cond_5

    if-gez p1, :cond_6

    .line 449
    :cond_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesCopyStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    .line 450
    :cond_6
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-nez v1, :cond_2

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    goto :goto_0
.end method

.method public tagAppend([Ljava/lang/String;)V
    .locals 4
    .param p1, "inTagged"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    array-length v1, p1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagLocate([Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagAccess(I)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    aget-object v1, p1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagAccess(I)V

    .line 495
    :cond_1
    return-void
.end method

.method public tagExists([Ljava/lang/String;)Z
    .locals 1
    .param p1, "inTagged"    # [Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagLocate([Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tagLocate([Ljava/lang/String;)I
    .locals 7
    .param p1, "inTagged"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 460
    const/4 v2, -0x1

    .line 463
    .local v2, "result":I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 464
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-nez v3, :cond_0

    .line 465
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagAccess(I)V

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 469
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 478
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_1
    :goto_1
    return v2

    .line 470
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_2
    aget-object v3, p1, v6

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 471
    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 472
    div-int/lit8 v2, v1, 0x2

    .line 473
    goto :goto_1

    .line 469
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public tagNumber()I
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public tagRemove(I)V
    .locals 2
    .param p1, "inIndex"    # I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mTagged:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagAccess(I)V

    .line 504
    :cond_0
    return-void
.end method

.method public tagRemove([Ljava/lang/String;)V
    .locals 1
    .param p1, "inTagged"    # [Ljava/lang/String;

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagLocate([Ljava/lang/String;)I

    move-result v0

    .line 509
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tagRemove(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public tryAutoplayStation()V
    .locals 4

    .prologue
    .line 532
    new-instance v2, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 533
    const/4 v1, 0x0

    .line 535
    .local v1, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->dh:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getAutoplayStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 540
    :goto_0
    if-eqz v1, :cond_0

    .line 541
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mPlayRequested:Z

    if-nez v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->mIdentifier:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->serviceStopped:Z

    if-nez v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->playStation(Ljava/util/List;)V

    .line 551
    :cond_0
    :goto_1
    return-void

    .line 536
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 537
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v2, "IHRServiceConfiguration"

    .line 538
    const-string v3, "Exception occurred while trying to retrieve autoplay station"

    .line 537
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    .end local v0    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :cond_1
    const-string v2, "PLAYER"

    const-string v3, "Not launch service stopping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public tryFetchStartup()V
    .locals 6

    .prologue
    .line 847
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->hasConnectivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "arguments":Ljava/lang/String;
    const-string v2, "startup"

    invoke-static {v2, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    .line 851
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    if-eqz v2, :cond_0

    .line 852
    new-instance v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStartupData:[B

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;-><init>([B)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    .line 854
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-eqz v2, :cond_1

    .line 855
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->runParseStartup(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    const-string v2, "endingOfflineMode"

    .line 857
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 856
    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 863
    .end local v0    # "arguments":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const/16 v3, 0x451

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(IJ)Z

    .line 871
    :cond_2
    :goto_1
    return-void

    .line 859
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mXMLStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    .end local v0    # "arguments":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "tryFetchStartup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "inAction"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public updateAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inAction"    # Ljava/lang/String;
    .param p2, "inExtra"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->action(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    :cond_1
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "inStatus"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 298
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 297
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStatus:Ljava/lang/String;

    .line 300
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    :cond_0
    move-object v0, p1

    .line 298
    goto :goto_0
.end method

.method public validateSite(Ljava/lang/String;)V
    .locals 4
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mChannels:Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    .line 1792
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    if-eqz v0, :cond_0

    .line 1795
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1796
    new-instance v2, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V

    .line 1823
    const/4 v3, 0x0

    .line 1794
    invoke-static {v1, v2, p1, v3, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchAsynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;Ljava/lang/Object;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .line 1824
    :cond_0
    return-void
.end method
