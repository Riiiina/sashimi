.class public Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;
.super Lcom/appsgeyser/wWindowsHotmail/Views/TabContent;
.source "WebContent.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabDelegate;


# instance fields
.field _browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

.field _progressBar:Landroid/widget/ProgressBar;

.field _tabContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

.field firstStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_tabContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .line 17
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 18
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->firstStart:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_tabContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .line 17
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 18
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->firstStart:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getBrowser()Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public init(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;)V
    .locals 1
    .param p1, "tabContentController"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_tabContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .line 33
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 34
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 35
    return-void
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public setActiveState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->firstStart:Z

    if-eq v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setInitialScale(I)V

    .line 52
    :goto_0
    invoke-virtual {p0, v2}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->setVisibility(I)V

    .line 56
    :goto_1
    return-void

    .line 50
    :cond_0
    iput-boolean v2, p0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->firstStart:Z

    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->setVisibility(I)V

    goto :goto_1
.end method

.method public showProgressBarPanel()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method
