.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerPremiumRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/clearchannel/iheartradio/model/IHRListener;


# instance fields
.field private analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

.field private ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

.field mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

.field mPassword:Landroid/widget/EditText;

.field mProgress:Landroid/widget/ProgressBar;

.field mSite:Ljava/lang/String;

.field mSubmit:Landroid/widget/Button;

.field protected mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field mUsername:Landroid/widget/EditText;

.field mValidating:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 2
    .param p1, "inShown"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->afterShown(Z)V

    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Does ity come hetre 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_0

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public beingShown(Z)V
    .locals 2
    .param p1, "inShown"    # Z

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->beingShown(Z)V

    .line 165
    if-eqz p1, :cond_0

    .line 167
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v0

    const-string v1, "siteValidated"

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v0

    sget-object v1, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->kRemoveEveryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->removeFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 110
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 111
    return-void
.end method

.method public focus(I)V
    .locals 4
    .param p1, "inFocus"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 82
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 83
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->hideKeyboard(I)V

    .line 105
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    move-object v0, v1

    .line 87
    .local v0, "edit":Landroid/widget/EditText;
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 88
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 90
    if-nez p1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->onFocusChange(Landroid/view/View;Z)V

    .line 93
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->onFocusChange(Landroid/view/View;Z)V

    .line 96
    :cond_1
    if-ne p1, v3, :cond_2

    .line 98
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->onFocusChange(Landroid/view/View;Z)V

    .line 99
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->onFocusChange(Landroid/view/View;Z)V

    .line 103
    :cond_2
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->showKeyboard(I)V

    goto :goto_0

    .line 85
    .end local v0    # "edit":Landroid/widget/EditText;
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    move-object v0, v1

    goto :goto_1
.end method

.method public handleAcceptance(ZLjava/lang/String;)V
    .locals 8
    .param p1, "inAccepted"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 117
    iput-boolean v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mValidating:Z

    .line 118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;->LOGIN:Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLetters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;->trackPremium(Lcom/clearchannel/iheartradio/model/analytics/GAPremiumAction;Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v7

    .line 125
    .local v7, "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 128
    const/4 v0, 0x2

    invoke-virtual {v7, p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->ancestor(Lcom/clearchannel/iheartradio/controller/IHRController;I)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popToController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "class"

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "site"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 141
    .end local v7    # "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister$1;

    const-string v4, "OK"

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 4
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string v0, "siteValidated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "connection-issue"

    invoke-virtual {p2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "Unable to connect to the server at this time. Please try again later"

    invoke-virtual {p0, v3, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->handleAcceptance(ZLjava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    const-string v1, "site"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "accepted"

    invoke-virtual {p2, v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "Invalid username or password"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->handleAcceptance(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->warnRequired(Z)V

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->warnRequired(Z)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->verifyCredentials()V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "inView"    # Landroid/widget/TextView;
    .param p2, "inAction"    # I
    .param p3, "inEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 231
    .local v0, "propose":Z
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 232
    const/4 v1, 0x1

    .line 257
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->verifyCredentials()V

    .line 261
    :cond_1
    return v1

    .line 233
    :cond_2
    iget-boolean v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mValidating:Z

    if-eqz v2, :cond_3

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->warnRequired(Z)V

    .line 238
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 239
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    if-ne v2, p1, :cond_7

    .line 240
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 241
    const/4 v0, 0x1

    .line 246
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    :cond_6
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 247
    :cond_7
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    if-ne v2, p1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 249
    const/4 v0, 0x1

    .line 254
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 251
    :cond_8
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "inView"    # Landroid/view/View;
    .param p2, "inFocused"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FOcus changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    if-ne v0, p1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v3

    :goto_0
    invoke-virtual {v0, v5, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 273
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    .line 269
    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    if-ne v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v5, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v0, "site"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 46
    return-void
.end method

.method public prepareView()V
    .locals 5

    .prologue
    .line 51
    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 54
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 55
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->getContext()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 56
    new-instance v1, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->analytics:Lcom/clearchannel/iheartradio/model/analytics/IHRAnalytics;

    .line 58
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->inflateLayout(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "contentView":Landroid/view/View;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V

    .line 61
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->getTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mContent:Landroid/view/View;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSubmit:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mContent:Landroid/view/View;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    .line 66
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mContent:Landroid/view/View;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    .line 67
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mContent:Landroid/view/View;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mProgress:Landroid/widget/ProgressBar;

    .line 69
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 73
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 76
    return-void
.end method

.method public verifyCredentials()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 194
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mValidating:Z

    .line 195
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteValidate(Ljava/lang/String;)Z

    .line 200
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 201
    return-void
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public warnRequired(Z)V
    .locals 3
    .param p1, "inPassword"    # Z

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "password"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;)V

    .line 205
    return-void

    .line 204
    :cond_0
    const-string v2, "username"

    goto :goto_0
.end method
