.class public Lcom/appspot/swisscodemonkeys/featured/OfferWall;
.super Landroid/app/Activity;
.source "OfferWall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://p.appbrain.com/offerwall/"


# instance fields
.field private loading:Landroid/view/ViewGroup;

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

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->pageUrl:Ljava/lang/String;

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
    .line 116
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->pageUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->pageUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->pageUrl:Ljava/lang/String;

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

    .line 122
    const/4 v2, 0x0

    .line 127
    .local v2, "firstParam":Z
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/featured/OfferWall;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    .end local v2    # "firstParam":Z
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/featured/OfferWall;
    :cond_0
    const-string v4, "?"

    goto :goto_0

    .line 124
    :cond_1
    const-string v4, "http://p.appbrain.com/offerwall/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v2, 0x1

    .restart local v2    # "firstParam":Z
    goto :goto_1

    .line 127
    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/featured/OfferWall;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 128
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 129
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v2, 0x0

    .line 134
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 132
    :cond_3
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private loadPage(Lcmn/AppProperties;)V
    .locals 3
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v0

    .line 111
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->buildURL(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v8}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->requestWindowFeature(I)Z

    .line 45
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    .line 46
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-static {p0, v6, v11}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->configureWebView(Landroid/content/Context;Landroid/webkit/WebView;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 47
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;

    invoke-direct {v7, p0}, Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;-><init>(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;

    invoke-direct {v7, p0}, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;-><init>(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 78
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    .line 83
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v2, "loadingText":Landroid/widget/TextView;
    const-string v6, "Loading..."

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v6, -0xbbbbbc

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/16 v6, 0xa

    invoke-virtual {v2, v6, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    const v0, 0x1010079

    .line 91
    .local v0, "attr":I
    const v4, 0x1010288

    .line 92
    .local v4, "progressBarStyleSmallInverse":I
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    .line 93
    const v0, 0x1010288

    .line 95
    :cond_0
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0, v11, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    .local v3, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 97
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    const/16 v7, 0x14

    const/16 v8, 0x28

    invoke-virtual {v6, v7, v8, v9, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 100
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loading:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-static {p0}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v5

    .line 102
    .local v5, "props":Lcmn/AppProperties;
    const-string v6, "http://p.appbrain.com/offerwall/"

    iput-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->pageUrl:Ljava/lang/String;

    .line 103
    invoke-direct {p0, v5}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->loadPage(Lcmn/AppProperties;)V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
