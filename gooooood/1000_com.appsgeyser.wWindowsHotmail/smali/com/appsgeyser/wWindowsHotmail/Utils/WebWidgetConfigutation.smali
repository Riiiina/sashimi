.class public Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
.super Ljava/lang/Object;
.source "WebWidgetConfigutation.java"


# instance fields
.field private addUsageUrl:Ljava/lang/String;

.field private appMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field private applicationId:I

.field private bannerPosition:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

.field private contentHeight:I

.field private contentWidth:I

.field private fullScreenModeUrl:Ljava/lang/String;

.field private httpAccessLogin:Ljava/lang/String;

.field private httpAccessPassword:Ljava/lang/String;

.field private locationUrl:Ljava/lang/String;

.field private rateItemVisibility:Z

.field private registeredUrl:Ljava/lang/String;

.field private updatePeriodOfFullScreenModeInMs:J

.field private updatePeriodOfWidgetInMS:J

.field private widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->appMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 69
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->TOP:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->bannerPosition:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->rateItemVisibility:Z

    return-void
.end method


# virtual methods
.method public getAddUsageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->addUsageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->applicationId:I

    return v0
.end method

.method public getApplicationMode()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->appMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method public getBannerPosition()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->bannerPosition:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->contentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->contentWidth:I

    return v0
.end method

.method public getFullScreenModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->fullScreenModeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAccessLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->httpAccessLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAccessPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->httpAccessPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRateItemVisibility()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->rateItemVisibility:Z

    return v0
.end method

.method public getRegisteredUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->registeredUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePeriodOfFullScreenModeInMs()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->updatePeriodOfFullScreenModeInMs:J

    return-wide v0
.end method

.method public getUpdatePeriodOfWidgetInMS()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->updatePeriodOfWidgetInMS:J

    return-wide v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->widgetName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddUsageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "addUsageUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->addUsageUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setApplicationId(I)V
    .locals 0
    .param p1, "applicationId"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->applicationId:I

    .line 105
    return-void
.end method

.method public setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->appMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 164
    return-void
.end method

.method public setBannerPosition(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;)V
    .locals 0
    .param p1, "bannerPosition"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->bannerPosition:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    .line 171
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->contentHeight:I

    .line 143
    return-void
.end method

.method public setContentWidth(I)V
    .locals 0
    .param p1, "contentWidth"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->contentWidth:I

    .line 137
    return-void
.end method

.method public setFullScreenModeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullScreenModeUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->fullScreenModeUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setHttpAccessLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->httpAccessLogin:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setHttpAccessPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->httpAccessPassword:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationUrl"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->locationUrl:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRateItemVisibility(Z)V
    .locals 0
    .param p1, "rateItem"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->rateItemVisibility:Z

    .line 178
    return-void
.end method

.method public setRegisteredUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "registeredUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->registeredUrl:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUpdatePeriodOfFullScreenModeInMs(J)V
    .locals 0
    .param p1, "updatePeriodOfFullScreenModeInMs"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->updatePeriodOfFullScreenModeInMs:J

    .line 125
    return-void
.end method

.method public setUpdatePeriodOfWidgetInMS(J)V
    .locals 0
    .param p1, "updatePeriodOfWidgetInMS"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->updatePeriodOfWidgetInMS:J

    .line 118
    return-void
.end method

.method public setWidgetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->widgetName:Ljava/lang/String;

    .line 85
    return-void
.end method
