.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;
.source "IHRControllerSSOForgotPass.java"


# instance fields
.field private mButtonSubmit:Landroid/widget/Button;

.field private mEditEmail:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mEditEmail:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public forgotPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 52
    .local v1, "pairs":Ljava/util/Hashtable;
    const-string v2, "os"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "build"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v2, "appversion"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "error":Ljava/lang/StringBuffer;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "Enter a valid email"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 62
    const-string v2, "Oops"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Return to Form"

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v2, "Requesting for password"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->progressDialog:Landroid/app/ProgressDialog;

    .line 65
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 66
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v3, 0x69

    invoke-virtual {v2, v1, v3}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    goto :goto_0
.end method

.method public prepareView()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mContent:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mContent:Landroid/view/View;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mButtonSubmit:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mContent:Landroid/view/View;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mEditEmail:Landroid/widget/EditText;

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->mButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->initVersionName()V

    .line 47
    return-void
.end method
