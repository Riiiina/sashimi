.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;
.source "IHRControllerSSODemo.java"


# instance fields
.field private checkToken:Landroid/widget/Button;

.field private forgotPassword:Landroid/widget/Button;

.field private login:Landroid/widget/Button;

.field private partnerLogin:Landroid/widget/Button;

.field private result:Landroid/widget/Button;

.field private signup:Landroid/widget/Button;

.field private station:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildLoginPartnerDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->checkToken()V

    return-void
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildForgootPasswordDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;I)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->loginPartner(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->forgotPassword(Ljava/lang/String;)V

    return-void
.end method

.method private buildForgootPasswordDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "delegeate"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->inflateLayout(I)Landroid/view/View;

    move-result-object v3

    .line 166
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f090085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 168
    .local v2, "mEditEmail":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    const-string v4, "Mail me password"

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;

    invoke-direct {v5, p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    const/high16 v4, 0x1040000

    .line 182
    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$14;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$14;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    .line 181
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 188
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method private buildLoginPartnerDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "delegeate"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    .prologue
    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    const v4, 0x7f030025

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->inflateLayout(I)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 135
    .local v2, "mEditFbuserid":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 137
    const-string v4, "Login with Facebook ID"

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;

    invoke-direct {v5, p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const/high16 v4, 0x1040000

    .line 149
    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$12;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$12;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    .line 148
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 155
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method private checkToken()V
    .locals 4

    .prologue
    .line 192
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "Oops"

    const-string v2, "You have not logged in yet"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buttomName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "Check your token"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    .line 197
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 200
    .local v0, "pairs":Ljava/util/Hashtable;
    const-string v1, "os"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "build"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "appversion"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "token"

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getResp()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v2

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    goto :goto_0
.end method

.method private forgotPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v1, "Forgot password"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    .line 238
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 239
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 241
    .local v0, "pairs":Ljava/util/Hashtable;
    const-string v1, "os"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "build"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "appversion"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v2, 0x69

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    .line 247
    return-void
.end method

.method private loginIHR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v1, "Log in"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    .line 224
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 225
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 227
    .local v0, "pairs":Ljava/util/Hashtable;
    const-string v1, "os"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "build"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "appversion"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v2, 0x67

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    .line 234
    return-void
.end method

.method private loginPartner(I)V
    .locals 3
    .param p1, "fbuserid"    # I

    .prologue
    .line 210
    const-string v1, "Partner Login"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    .line 211
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 212
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 214
    .local v0, "pairs":Ljava/util/Hashtable;
    const-string v1, "os"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "build"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "appversion"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "fbuserid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    .line 220
    return-void
.end method


# virtual methods
.method public prepareView()V
    .locals 6

    .prologue
    .line 36
    const v4, 0x7f030022

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->setContentView(I)V

    .line 38
    const v4, 0x7f09008d

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->login:Landroid/widget/Button;

    .line 39
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->login:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$1;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v4, 0x7f09008e

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->partnerLogin:Landroid/widget/Button;

    .line 46
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->partnerLogin:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$2;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v4, 0x7f09008f

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->checkToken:Landroid/widget/Button;

    .line 53
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->checkToken:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$3;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v4, 0x7f090090

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->forgotPassword:Landroid/widget/Button;

    .line 60
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->forgotPassword:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v4, 0x7f090091

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->signup:Landroid/widget/Button;

    .line 67
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->signup:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$5;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v4, 0x7f090092

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->result:Landroid/widget/Button;

    .line 74
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->result:Landroid/widget/Button;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$6;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$6;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v4, 0x7f090093

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, "clear":Landroid/widget/Button;
    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v4, 0x7f090094

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->station:Landroid/widget/EditText;

    .line 90
    const v4, 0x7f090095

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    .local v2, "shareViaFacebook":Landroid/widget/Button;
    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$8;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$8;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v4, 0x7f090096

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 98
    .local v1, "shareViaEmail":Landroid/widget/Button;
    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$9;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$9;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v4, 0x7f090097

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 105
    .local v3, "showFavStations":Landroid/widget/Button;
    new-instance v4, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->initVersionName()V

    .line 123
    return-void
.end method
