.class public Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
.source "IHRCityCursor.java"


# instance fields
.field mHasTraffic:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 3
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "result":Ljava/lang/String;
    if-nez p2, :cond_2

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    if-eqz v1, :cond_2

    .line 62
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mContents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->trafficName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 62
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
    :cond_1
    const-string v1, "Updates every 15 minutes Mon-Fri 5AM-10PM"

    move-object v0, v1

    goto :goto_0

    .line 63
    :cond_2
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    if-ge p2, v1, :cond_0

    .line 64
    add-int/lit8 p2, p2, 0x3

    .line 66
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    if-eqz v1, :cond_3

    .line 67
    add-int/lit8 p2, p2, -0x1

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mContents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->getStringForObject(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "inIndex"    # I

    .prologue
    .line 28
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "station"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mContents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->trafficCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
    :cond_1
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    if-ge p2, v0, :cond_0

    .line 42
    add-int/lit8 p2, p2, 0x3

    .line 46
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    .line 48
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    if-eqz v0, :cond_2

    .line 49
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    .line 50
    add-int/lit8 p2, p2, -0x1

    .line 53
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->prepareIntent(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public setContents(Ljava/util/List;)V
    .locals 5
    .param p1, "list"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_3

    move v0, v3

    .line 18
    .local v0, "count":I
    :goto_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mContents:Ljava/util/List;

    .line 19
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    .line 20
    const/4 v2, 0x3

    sub-int v2, v0, v2

    iput v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    .line 22
    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    if-gez v2, :cond_1

    iput v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    .line 23
    :cond_1
    iget-boolean v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mHasTraffic:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->mCursorCount:I

    .line 24
    :cond_2
    return-void

    .line 16
    .end local v0    # "count":I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v0, v2

    goto :goto_0

    .restart local v0    # "count":I
    :cond_4
    move v2, v4

    .line 19
    goto :goto_1
.end method
