.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;
.source "IHRControllerSSOLogin.java"


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonLogin:Landroid/widget/Button;

.field private mEditEmail:Landroid/widget/EditText;

.field private mEditPassword:Landroid/widget/EditText;

.field private mTextForgotPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mEditEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mEditPassword:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public forgotPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 75
    .local v1, "pairs":Ljava/util/Hashtable;
    const-string v2, "os"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "build"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "appversion"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v0, "error":Ljava/lang/StringBuffer;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const-string v2, "Enter a valid email"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 85
    const-string v2, "Oops"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Return to Form"

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v2, "Requesting for password"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->progressDialog:Landroid/app/ProgressDialog;

    .line 88
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 89
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v3, 0x69

    invoke-virtual {v2, v1, v3}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    goto :goto_0
.end method

.method public prepareView()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mButtonLogin:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mButtonCancel:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mEditEmail:Landroid/widget/EditText;

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mEditPassword:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mContent:Landroid/view/View;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mTextForgotPassword:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mButtonLogin:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mButtonCancel:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->mTextForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->initVersionName()V

    .line 70
    return-void
.end method

.method public signin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 98
    .local v1, "pairs":Ljava/util/Hashtable;
    const-string v2, "os"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "build"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "appversion"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "error":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    const-string v2, "Enter a valid email"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    const-string v2, "Password is empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 119
    const-string v2, "Oops"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Return to Form"

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 125
    :goto_2
    return-void

    .line 106
    :cond_1
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_3
    const-string v2, "Log in"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->progressDialog:Landroid/app/ProgressDialog;

    .line 122
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 123
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v3, 0x67

    invoke-virtual {v2, v1, v3}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    goto :goto_2
.end method
