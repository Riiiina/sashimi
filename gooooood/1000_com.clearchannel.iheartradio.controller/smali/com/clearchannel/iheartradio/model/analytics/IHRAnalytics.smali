.class public Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;
.super Ljava/lang/Object;
.source "IHRAnalytics.java"


# static fields
.field private static final PLATFORM_NAME:Ljava/lang/String; = "Android"

.field private static final REMOVE_FAVORITE:Ljava/lang/String; = "unfavorite"


# instance fields
.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 18
    return-void
.end method


# virtual methods
.method public trackApplication(Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 110
    if-nez p2, :cond_0

    .line 111
    const-string p2, ""

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->APPLICATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    :cond_1
    return-void
.end method

.method public trackFavorite(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string p1, ""

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->FAVORITE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "! PRN"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v3, "unfavorite"

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    :cond_1
    return-void
.end method

.method public trackMode(Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 132
    if-nez p2, :cond_0

    .line 133
    const-string p2, ""

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->MODE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAModeAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    :cond_1
    return-void
.end method

.method public trackNetwork(Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 77
    if-nez p2, :cond_0

    .line 78
    const-string p2, ""

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->NETWORK:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GANetworkAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    :cond_1
    return-void
.end method

.method public trackPlayer(Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 33
    if-nez p2, :cond_0

    .line 34
    const-string p2, ""

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PLAYER:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "! PRN"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    :cond_1
    return-void
.end method

.method public trackPremium(Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 44
    if-nez p2, :cond_0

    .line 45
    const-string p2, ""

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PREMIUM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "! PRN"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    :cond_1
    return-void
.end method

.method public trackSession(Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 55
    if-nez p2, :cond_0

    .line 56
    const-string p2, ""

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->SESSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "! PRN"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    :cond_1
    return-void
.end method

.method public trackStation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_2

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string p1, ""

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const-string p2, ""

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "! PRN"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    :cond_2
    return-void
.end method

.method public trackStream(Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 66
    if-nez p2, :cond_0

    .line 67
    const-string p2, ""

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STREAM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v3, "! PRN"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    :cond_1
    return-void
.end method

.method public trackVersion()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "Android"

    .line 104
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method

.method public trackVideo(Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_1

    .line 22
    if-nez p2, :cond_0

    .line 23
    const-string p2, ""

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VIDEO:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->categoryName()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v3, "! PRN"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    :cond_1
    return-void
.end method
