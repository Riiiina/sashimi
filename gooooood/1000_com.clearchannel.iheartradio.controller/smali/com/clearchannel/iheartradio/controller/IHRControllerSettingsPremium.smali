.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;
.source "IHRControllerSettingsPremium.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public channelsWithPasswords()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 7

    .prologue
    .line 16
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 17
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v3

    .line 18
    .local v3, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchPremiumChannels()Ljava/util/List;

    move-result-object v2

    .line 20
    .local v2, "channels":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 28
    return-object v4

    .line 20
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "channel":Ljava/lang/Object;
    instance-of v5, v1, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    if-eqz v5, :cond_0

    .line 22
    move-object v0, v1

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteHasAuthenticated(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v4, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getContents()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->mContents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->channelsWithPasswords()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->mContents:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->mContents:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 52
    invoke-virtual {p0, p3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 54
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "site"

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "channel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 62
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
