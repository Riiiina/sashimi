.class public Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;
.source "IHRLocalsCursor.java"


# static fields
.field public static final kLoading:Ljava/lang/String; = "Loading Local Stations..."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 2
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mContents:Ljava/util/List;

    if-nez v1, :cond_1

    .line 37
    if-nez p1, :cond_0

    const-string v1, "Loading Local Stations..."

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 39
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRCityCursor;->getStringForIndex(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContents(Lcom/clearchannel/iheartradio/model/IHRLocal;Lcom/clearchannel/iheartradio/model/IHRCity;)V
    .locals 4
    .param p1, "inLocal"    # Lcom/clearchannel/iheartradio/model/IHRLocal;
    .param p2, "inCity"    # Lcom/clearchannel/iheartradio/model/IHRCity;

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->setContents(Ljava/util/List;)V

    .line 21
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mContents:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mHasTraffic:Z

    .line 27
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mCursorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mCursorCount:I

    .line 30
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mContents:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mHasTraffic:Z

    .line 15
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalsCursor;->mCursorCount:I

    .line 16
    return-void

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method
