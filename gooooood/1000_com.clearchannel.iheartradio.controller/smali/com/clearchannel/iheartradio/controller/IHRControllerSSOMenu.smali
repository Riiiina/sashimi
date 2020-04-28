.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSSOMenu.java"


# static fields
.field public static final URL_TERMS_USE:Ljava/lang/String; = "http://www.iheartradio.com/cc-common/tou.html#tou"


# instance fields
.field private inParameters:Landroid/content/Intent;

.field private mView:Landroid/view/View;

.field private slideIn:Landroid/view/animation/TranslateAnimation;

.field private slideOut:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->inParameters:Landroid/content/Intent;

    return-object v0
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public static showLoginDialog(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .param p0, "cancel"    # Ljava/lang/String;
    .param p1, "inParameters"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 1
    .param p1, "inShown"    # Z

    .prologue
    .line 111
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissPopupSearch()V

    .line 112
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setActionButtonsVisible(Z)V

    .line 159
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x320

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->prepare()V

    .line 78
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setActionButtonsVisible(Z)V

    .line 81
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideOut:Landroid/view/animation/TranslateAnimation;

    .line 82
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 83
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 85
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideIn:Landroid/view/animation/TranslateAnimation;

    .line 86
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 87
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->slideIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 89
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/AnimationUtils;->makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, "textTermsOfUse":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 93
    invoke-static {v0, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 94
    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setActionButtonsVisible(Z)V

    .line 153
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 154
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "inIntent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->inParameters:Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$1;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->mView:Landroid/view/View;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->inParameters:Landroid/content/Intent;

    const-string v3, "CancelString"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "txtCancel":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 65
    const v2, 0x7f090099

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, "bCancel":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0    # "bCancel":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPause()V

    .line 148
    return-void
.end method
