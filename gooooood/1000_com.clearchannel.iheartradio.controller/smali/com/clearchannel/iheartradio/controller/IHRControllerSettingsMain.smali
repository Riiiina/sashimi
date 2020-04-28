.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSettingsMain.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;


# instance fields
.field private mButtonClearAutoPlay:Landroid/widget/Button;

.field private mButtonClearHistory:Landroid/widget/Button;

.field private mButtonFBAcc:Landroid/widget/Button;

.field private mButtonFeedBack:Landroid/widget/Button;

.field private mButtonIHRAcc:Landroid/widget/Button;

.field private mButtonPremAcc:Landroid/widget/Button;

.field private mEditEmail:Landroid/widget/EditText;

.field private mEditPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 188
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 206
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "Facebook login done"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->showToast(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onError(Lcom/clearchannel/iheartradio/model/facebook/DialogError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/DialogError;

    .prologue
    .line 217
    const-string v0, "Facebook"

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/facebook/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close"

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 218
    return-void
.end method

.method public onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    .prologue
    .line 213
    const-string v0, "Facebook"

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close"

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 214
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 43
    return-void
.end method

.method public prepareView()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->setContentView(I)V

    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mContent:Landroid/view/View;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonFBAcc:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonFBAcc:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mContent:Landroid/view/View;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonClearAutoPlay:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonClearAutoPlay:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mContent:Landroid/view/View;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonClearHistory:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonClearHistory:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mContent:Landroid/view/View;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonFeedBack:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonFeedBack:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mContent:Landroid/view/View;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonPremAcc:Landroid/widget/Button;

    .line 151
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->mButtonPremAcc:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public showLoggedInPopup()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "You are already logged in"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string v1, "Logout"

    new-instance v2, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$6;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$6;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const/high16 v1, 0x1040000

    .line 176
    new-instance v2, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$7;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$7;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 182
    return-void
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method
