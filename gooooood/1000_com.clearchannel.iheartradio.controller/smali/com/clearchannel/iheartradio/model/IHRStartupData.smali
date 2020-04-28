.class public Lcom/clearchannel/iheartradio/model/IHRStartupData;
.super Ljava/lang/Object;
.source "IHRStartupData.java"


# instance fields
.field private adsGatewayDisplayTime:I

.field private adsGatewayEnableUserAbort:Z

.field private adsGatewayListenSeconds:I

.field private adsSplashDartUrl:Ljava/lang/String;

.field private adsSplashDisplayTime:I

.field private cityListVersion:J

.field private facebookApikey:Ljava/lang/String;

.field private facebookAppId:Ljava/lang/String;

.field private formatListVersion:J

.field private mediaVaultUrl:Ljava/lang/String;

.field private permiumListVersion:J

.field private stationListVersion:J

.field private termsUrl:Ljava/lang/String;

.field private videoListVersion:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsGatewayDisplayTime()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayDisplayTime:I

    return v0
.end method

.method public getAdsGatewayListenSeconds()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayListenSeconds:I

    return v0
.end method

.method public getAdsSplashDartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsSplashDartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsSplashDisplayTime()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsSplashDisplayTime:I

    return v0
.end method

.method public getCityListVersion()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->cityListVersion:J

    return-wide v0
.end method

.method public getFacebookApikey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->facebookApikey:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->facebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatListVersion()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->formatListVersion:J

    return-wide v0
.end method

.method public getMediaVaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->mediaVaultUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPermiumListVersion()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->permiumListVersion:J

    return-wide v0
.end method

.method public getStationListVersion()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->stationListVersion:J

    return-wide v0
.end method

.method public getTermsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->termsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoListVersion()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->videoListVersion:J

    return-wide v0
.end method

.method public isAdsGatewayEnableUserAbort()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayEnableUserAbort:Z

    return v0
.end method

.method public setAdsGatewayDisplayTime(I)V
    .locals 0
    .param p1, "adsGatewayDisplayTime"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayDisplayTime:I

    .line 35
    return-void
.end method

.method public setAdsGatewayEnableUserAbort(Z)V
    .locals 0
    .param p1, "adsGatewayEnableUserAbort"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayEnableUserAbort:Z

    .line 41
    return-void
.end method

.method public setAdsGatewayListenSeconds(I)V
    .locals 0
    .param p1, "adsGatewayListenSeconds"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsGatewayListenSeconds:I

    .line 47
    return-void
.end method

.method public setAdsSplashDartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "adsSplashDartUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsSplashDartUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setAdsSplashDisplayTime(I)V
    .locals 0
    .param p1, "adsSplashDisplayTime"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->adsSplashDisplayTime:I

    .line 53
    return-void
.end method

.method public setCityListVersion(J)V
    .locals 0
    .param p1, "cityListVersion"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->cityListVersion:J

    .line 71
    return-void
.end method

.method public setFacebookApikey(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookApikey"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->facebookApikey:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setFacebookAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookAppId"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->facebookAppId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setFormatListVersion(J)V
    .locals 0
    .param p1, "formatListVersion"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->formatListVersion:J

    .line 77
    return-void
.end method

.method public setMediaVaultUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaVaultUrl"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->mediaVaultUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setPermiumListVersion(J)V
    .locals 0
    .param p1, "permiumListVersion"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->permiumListVersion:J

    .line 83
    return-void
.end method

.method public setStationListVersion(J)V
    .locals 0
    .param p1, "stationListVersion"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->stationListVersion:J

    .line 65
    return-void
.end method

.method public setTermsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsUrl"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->termsUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setVideoListVersion(J)V
    .locals 0
    .param p1, "videoListVersion"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRStartupData;->videoListVersion:J

    .line 89
    return-void
.end method
