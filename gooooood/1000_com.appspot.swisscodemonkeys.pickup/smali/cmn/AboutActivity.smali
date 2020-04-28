.class public Lcmn/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/AboutActivity$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://swisscodemonkeys.appspot.com/mobile/"


# instance fields
.field private loading:Landroid/widget/TextView;

.field private pageUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcmn/AboutActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcmn/AboutActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcmn/AboutActivity;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method private buildURL(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcmn/AboutActivity;->pageUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcmn/AboutActivity;->pageUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v4, p0, Lcmn/AboutActivity;->pageUrl:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "&"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v2, 0x0

    .line 134
    .local v2, "firstParam":Z
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0    # "this":Lcmn/AboutActivity;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 128
    .end local v2    # "firstParam":Z
    .restart local p0    # "this":Lcmn/AboutActivity;
    :cond_0
    const-string v4, "?"

    goto :goto_0

    .line 131
    :cond_1
    const-string v4, "http://swisscodemonkeys.appspot.com/mobile/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v2, 0x1

    .restart local v2    # "firstParam":Z
    goto :goto_1

    .line 134
    .end local p0    # "this":Lcmn/AboutActivity;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 135
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 136
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v2, 0x0

    .line 141
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 139
    :cond_3
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private loadPage(Lcmn/AppProperties;)V
    .locals 3
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v0

    .line 118
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcmn/AboutActivity;->buildURL(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v7}, Lcmn/AboutActivity;->requestWindowFeature(I)Z

    .line 46
    new-instance v3, Lcmn/AboutActivity$1;

    invoke-direct {v3, p0, p0}, Lcmn/AboutActivity$1;-><init>(Lcmn/AboutActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    .line 64
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 65
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 67
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 70
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcmn/AboutActivity$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcmn/AboutActivity$MyWebChromeClient;-><init>(Lcmn/AboutActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 71
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 73
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcmn/AboutActivity$2;

    invoke-direct {v4, p0}, Lcmn/AboutActivity$2;-><init>(Lcmn/AboutActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 97
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 99
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcmn/AboutActivity;->setContentView(Landroid/view/View;)V

    .line 101
    iget-object v3, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v3, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    iget-object v3, p0, Lcmn/AboutActivity;->loading:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcmn/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "props"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcmn/AppProperties;

    .line 109
    .local v1, "props":Lcmn/AppProperties;
    invoke-virtual {p0}, Lcmn/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcmn/AboutActivity;->pageUrl:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v1}, Lcmn/AboutActivity;->loadPage(Lcmn/AppProperties;)V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcmn/AboutActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
