.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSettingsIHRAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mButtonLogin:Landroid/widget/Button;

.field private mButtonSignUp:Landroid/widget/Button;

.field private mEditEmail:Landroid/widget/EditText;

.field private mEditPassword:Landroid/widget/EditText;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->versionName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private loginIHR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v1, "Log in"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    .line 84
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 87
    .local v0, "pairs":Ljava/util/Hashtable;
    const-string v1, "os"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "build"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "appversion"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v2, 0x67

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    .line 94
    return-void
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->afterShown(Z)V

    .line 75
    return-void
.end method

.method public beingShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->beingShown(Z)V

    .line 70
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 65
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 32
    return-void
.end method

.method public onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V
    .locals 0
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .param p2, "type"    # I
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 98
    iput-object p3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->ex:Ljava/lang/Exception;

    .line 99
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 100
    iput p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->type:I

    .line 102
    invoke-virtual {p0, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public prepareView()V
    .locals 4

    .prologue
    .line 36
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->setContentView(I)V

    .line 37
    const-string v2, "Settings"

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mTitleContent:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 42
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mContent:Landroid/view/View;

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mButtonSignUp:Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mButtonSignUp:Landroid/widget/Button;

    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$1;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mContent:Landroid/view/View;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mButtonLogin:Landroid/widget/Button;

    .line 55
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mButtonLogin:Landroid/widget/Button;

    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 43
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 106
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->progressDialog:Landroid/app/ProgressDialog;

    .line 111
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->ex:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 112
    const-string v2, "Oops"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->ex:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Return to Demo"

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 119
    const-string v2, "Oops"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Return to Form"

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 116
    :cond_3
    if-lez v0, :cond_4

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    iget v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->type:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    .line 122
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mEditEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->email:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->password:Ljava/lang/String;

    .line 124
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->type:I

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->update(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;I)V

    .line 125
    const-string v2, "SSO Demo"

    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->sessionResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popToRoot()V

    goto/16 :goto_0
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
