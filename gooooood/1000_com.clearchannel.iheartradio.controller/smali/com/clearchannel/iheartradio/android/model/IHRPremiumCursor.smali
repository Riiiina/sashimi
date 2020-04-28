.class public Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;
.source "IHRPremiumCursor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 2
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "result":Ljava/lang/String;
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->mCursorCount:I

    if-ge p2, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->mContents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->getStringForObject(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getStringForObject(ILjava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "inColumn"    # I
    .param p2, "inObject"    # Ljava/lang/Object;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 23
    :goto_0
    return-object v0

    .line 21
    .restart local p2    # "inObject":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local p2    # "inObject":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 28
    if-ltz p2, :cond_0

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->mCursorCount:I

    if-ge p2, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->mContents:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "object":Ljava/lang/Object;
    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "site":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteHasAuthenticated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string v2, "class"

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v2, "source"

    const-string v3, "premium"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v2, "site"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .end local v1    # "site":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v1    # "site":Ljava/lang/String;
    :cond_1
    const-string v2, "class"

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "source"

    const-string v3, "premium_accounts"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "site"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchPremiumChannels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->setContents(Ljava/util/List;)V

    .line 15
    invoke-super {p0}, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->requery()Z

    move-result v0

    return v0
.end method
