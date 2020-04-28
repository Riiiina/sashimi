.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;
.source "IHRControllerSSOSignUp.java"


# static fields
.field private static final LOG_LABEL:Ljava/lang/String; = "IHRControllerSSOSignUp"

.field private static final appVersion:Ljava/lang/String; = "appversion"

.field private static final build:Ljava/lang/String; = "build"

.field private static final displayname:Ljava/lang/String; = "displayname"

.field private static final dob:Ljava/lang/String; = "dob"

.field private static final email:Ljava/lang/String; = "email"

.field private static final female:Ljava/lang/String; = "Female"

.field private static final gender:Ljava/lang/String; = "gender"

.field private static final male:Ljava/lang/String; = "Male"

.field private static final newsletter:Ljava/lang/String; = "newsletter"

.field private static final os:Ljava/lang/String; = "os"

.field private static final password:Ljava/lang/String; = "password"

.field private static final zip:Ljava/lang/String; = "zip"


# instance fields
.field private context:Landroid/content/Context;

.field private error:Ljava/lang/StringBuffer;

.field private mButton:Landroid/widget/Button;

.field private mCBoxReceiveNewsLetter:Landroid/widget/CheckBox;

.field private mDOB:Landroid/widget/EditText;

.field private mEditEmail:Landroid/widget/EditText;

.field private mEditPassword:Landroid/widget/EditText;

.field private mEditRePassword:Landroid/widget/EditText;

.field private mEditScreenName:Landroid/widget/EditText;

.field private mEditZip:Landroid/widget/EditText;

.field private mFemale:Landroid/widget/RadioButton;

.field private mMale:Landroid/widget/RadioButton;

.field private onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;-><init>()V

    .line 34
    const-string v0, "MMM dd, yyyy"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->pattern:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mDOB:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method private appendError(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method protected buildDialog(Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)Landroid/app/Dialog;
    .locals 6
    .param p1, "onDateSetListener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p2, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x5

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 226
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 227
    .local v4, "month":I
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 229
    .local v5, "day":I
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-eq v5, v0, :cond_0

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 232
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->getContext()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method

.method protected getCalendar(Landroid/widget/EditText;Ljava/lang/String;Z)Ljava/util/Calendar;
    .locals 5
    .param p1, "txt"    # Landroid/widget/EditText;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "nullable"    # Z

    .prologue
    .line 208
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 209
    .local v3, "formats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 212
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    move-object v4, v0

    .line 216
    :goto_0
    return-object v4

    .line 213
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public prepareView()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditEmail:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditPassword:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditRePassword:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditScreenName:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditZip:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mDOB:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mDOB:Landroid/widget/EditText;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mDOB:Landroid/widget/EditText;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mMale:Landroid/widget/RadioButton;

    .line 110
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mMale:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mFemale:Landroid/widget/RadioButton;

    .line 113
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mCBoxReceiveNewsLetter:Landroid/widget/CheckBox;

    .line 115
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->initVersionName()V

    .line 128
    return-void
.end method

.method protected showDialog(Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "onDateSetListener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p2, "c"    # Ljava/util/Calendar;

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->buildDialog(Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)Landroid/app/Dialog;

    move-result-object v0

    .line 221
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    :cond_0
    return-void
.end method

.method public signup()V
    .locals 13

    .prologue
    .line 132
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    .line 134
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 135
    .local v4, "pairs":Ljava/util/Hashtable;
    const-string v9, "os"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v9, "build"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v9, "appversion"

    iget-object v10, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditEmail:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "eMail":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->validateEmail(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 142
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070032

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 148
    :goto_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "pw":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 150
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070035

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 163
    :goto_1
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditScreenName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "dname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 165
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070034

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 170
    :goto_2
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditZip:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "zipString":Ljava/lang/String;
    const/4 v7, -0x1

    .line 172
    .local v7, "zipCode":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_5

    .line 173
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070030

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 183
    :goto_3
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mDOB:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->pattern:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->getCalendar(Landroid/widget/EditText;Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 184
    .local v0, "DOB":Ljava/util/Calendar;
    if-nez v0, :cond_6

    .line 185
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070033

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 190
    :goto_4
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mMale:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mFemale:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    .line 191
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070036

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    .line 196
    :goto_5
    const-string v9, "newsletter"

    iget-object v10, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mCBoxReceiveNewsLetter:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 199
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070011

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->error:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v12, 0x7f070039

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 205
    :goto_6
    return-void

    .line 144
    .end local v0    # "DOB":Ljava/util/Calendar;
    .end local v1    # "dname":Ljava/lang/String;
    .end local v5    # "pw":Ljava/lang/String;
    .end local v7    # "zipCode":I
    .end local v8    # "zipString":Ljava/lang/String;
    :cond_0
    const-string v9, "email"

    invoke-virtual {v4, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v9, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    const-string v10, "email"

    invoke-virtual {v9, v10}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .restart local v5    # "pw":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-ge v9, v10, :cond_2

    .line 152
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070037

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :cond_2
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mEditRePassword:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "repassword":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070038

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :cond_3
    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v9, "password"

    invoke-virtual {v4, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 167
    .end local v6    # "repassword":Ljava/lang/String;
    .restart local v1    # "dname":Ljava/lang/String;
    :cond_4
    const-string v9, "displayname"

    invoke-virtual {v4, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 176
    .restart local v7    # "zipCode":I
    .restart local v8    # "zipString":Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 180
    :goto_7
    const-string v9, "zip"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f070031

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->appendError(Ljava/lang/String;)V

    goto :goto_7

    .line 187
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "DOB":Ljava/util/Calendar;
    :cond_6
    const-string v9, "dob"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 193
    :cond_7
    const-string v9, "gender"

    iget-object v10, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mMale:Landroid/widget/RadioButton;

    invoke-virtual {v10}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "Male"

    :goto_8
    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_8
    const-string v10, "Female"

    goto :goto_8

    .line 201
    :cond_9
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->context:Landroid/content/Context;

    const v10, 0x7f07003a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->progressDialog:Landroid/app/ProgressDialog;

    .line 202
    iget-object v9, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 203
    new-instance v9, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    invoke-direct {v9, p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V

    const/16 v10, 0x65

    invoke-virtual {v9, v4, v10}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V

    goto/16 :goto_6
.end method
