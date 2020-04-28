.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerPremiumPurchase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field private ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

.field mButton:Landroid/widget/Button;

.field mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

.field mEdit:Landroid/widget/EditText;

.field mSite:Ljava/lang/String;

.field protected mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method

.method private validateEmail(Landroid/widget/TextView;)Z
    .locals 3
    .param p1, "inView"    # Landroid/widget/TextView;

    .prologue
    .line 161
    const/4 v0, 0x1

    .line 163
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 171
    :cond_1
    return v0
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 1
    .param p1, "inShown"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->afterShown(Z)V

    .line 94
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->focus(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public beingShown(Z)V
    .locals 1
    .param p1, "inShown"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->beingShown(Z)V

    .line 88
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->focus(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->focus(Z)V

    .line 82
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 83
    return-void
.end method

.method public focus(Z)V
    .locals 2
    .param p1, "inFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 72
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->showKeyboard(I)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 75
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->hideKeyboard(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->hasConnectivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->finish()V

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;->SIGNUP:Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLetters()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPremium(Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getPurchaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->pushWebURL(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "inView"    # Landroid/widget/TextView;
    .param p2, "inAction"    # I
    .param p3, "inEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "result":Z
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    if-ne v1, p1, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->validateEmail(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "Email address required"

    const/16 v3, 0x4b

    const/16 v4, 0x96

    invoke-virtual {v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;II)V

    .line 145
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->request(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->finish()V

    .line 150
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 153
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "inView"    # Landroid/view/View;
    .param p2, "inFocused"    # Z

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    if-ne v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 179
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string v0, "site"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mSite:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 45
    return-void
.end method

.method public prepareView()V
    .locals 5

    .prologue
    .line 50
    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 52
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 53
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->getContext()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 54
    new-instance v1, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 56
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->inflateLayout(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "contentView":Landroid/view/View;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->getTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mContent:Landroid/view/View;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mButton:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mContent:Landroid/view/View;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    .line 64
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 66
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    return-void
.end method

.method public request(Ljava/lang/String;)V
    .locals 6
    .param p1, "inAddress"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parameters(Z)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "extras":Ljava/lang/String;
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mSite:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&command=requestSignupLink&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&emailAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    const/4 v2, 0x0

    const-string v3, "mailer_delegate"

    invoke-static {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->deliver(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .line 129
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v2, :cond_1

    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    sput-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 130
    :cond_1
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->sMailed:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-string v3, "Email sent"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v3, Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;->SUBSCRIBE:Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLetters()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPremium(Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
