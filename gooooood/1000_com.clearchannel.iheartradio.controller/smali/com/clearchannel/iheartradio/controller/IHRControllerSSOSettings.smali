.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSSOSettings.java"


# instance fields
.field private inParameters:Landroid/content/Intent;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 1
    .param p1, "inShown"    # Z

    .prologue
    .line 77
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissPopupSearch()V

    .line 78
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setActionButtonsVisible(Z)V

    .line 94
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->mView:Landroid/view/View;

    .line 35
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->mView:Landroid/view/View;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$1;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .local v2, "progress":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;Landroid/app/ProgressDialog;)V

    .line 51
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->mView:Landroid/view/View;

    const v4, 0x7f0900a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->mView:Landroid/view/View;

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, "accountName":Landroid/widget/TextView;
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->setContentView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPause()V

    .line 83
    return-void
.end method
