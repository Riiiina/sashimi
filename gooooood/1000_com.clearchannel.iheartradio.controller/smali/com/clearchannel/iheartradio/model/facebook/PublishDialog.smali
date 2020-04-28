.class public Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;
.super Landroid/app/Dialog;
.source "PublishDialog.java"


# static fields
.field private static final FB_BLUE:I = -0x927b4c

.field private static final GRAPH_PROFILE_FEED:Ljava/lang/String; = "me/feed"

.field private static final LINK_NAME:Ljava/lang/String; = "iheartradio"

.field public static final LINK_URL:Ljava/lang/String; = "http://www.iheartradio.com/share?q="

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2

.field private static final PIC_URL:Ljava/lang/String; = "http://www.iheartradio.com/cc-common/mlib/8169/04/8169_1271368570.jpg"

.field public static final SOURCE:Ljava/lang/String; = "http://www.iheartradio.com/cc-common/radio_app/index.html"

.field public static final URL:Ljava/lang/String; = "http://www.iheartradio.com/"


# instance fields
.field private caption:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private mContent:Landroid/widget/LinearLayout;

.field private mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

.field private msgEditView:Landroid/widget/EditText;

.field private publishButton:Landroid/widget/Button;

.field private skipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mFacebook"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->identifier:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .line 58
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->identifier:Ljava/lang/String;

    .line 60
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    .line 61
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p4, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->identifier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->msgEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    const v3, 0x7f020036

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, "mTitle":Landroid/widget/TextView;
    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    const v2, -0x927b4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 91
    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 93
    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private setUpView()V
    .locals 6

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "v":Landroid/view/View;
    const v2, 0x7f090077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    .local v1, "view":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    const v2, 0x7f090078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "view":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .restart local v1    # "view":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    const v2, 0x7f090076

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->msgEditView:Landroid/widget/EditText;

    .line 115
    const v2, 0x7f090079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->skipButton:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->skipButton:Landroid/widget/Button;

    new-instance v3, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$1;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$1;-><init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f09007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->publishButton:Landroid/widget/Button;

    .line 124
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->publishButton:Landroid/widget/Button;

    new-instance v3, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;-><init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    return-void

    .line 104
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    .line 69
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    const v3, 0x7f020134

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 71
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->setUpTitle()V

    .line 72
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->setUpView()V

    .line 74
    const v1, 0x3f666666    # 0.9f

    .line 75
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    .local v0, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 78
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method
