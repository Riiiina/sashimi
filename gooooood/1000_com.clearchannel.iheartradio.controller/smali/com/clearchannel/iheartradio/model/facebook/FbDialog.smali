.class public Lcom/clearchannel/iheartradio/model/facebook/FbDialog;
.super Landroid/app/Dialog;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mUrl:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mListener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mListener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    const v2, 0x7f020036

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    const v2, -0x927b4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 101
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 103
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;-><init>(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const v7, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 71
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 72
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v3, "Loading..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    .line 75
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    const v3, 0x7f020134

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->setUpTitle()V

    .line 78
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->setUpWebView()V

    .line 79
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 81
    .local v0, "display":Landroid/view/Display;
    const v1, 0x3f666666    # 0.9f

    .line 87
    .local v1, "scale":F
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 89
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method
