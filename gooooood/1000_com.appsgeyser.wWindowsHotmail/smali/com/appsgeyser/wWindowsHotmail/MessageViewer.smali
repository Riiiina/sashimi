.class public Lcom/appsgeyser/wWindowsHotmail/MessageViewer;
.super Landroid/app/Activity;
.source "MessageViewer.java"


# instance fields
.field _activity:Landroid/app/Activity;

.field _browser:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    .line 19
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    return-void
.end method

.method private destroyActivity()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    .line 26
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 30
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 34
    const v4, 0x7f0b0013

    invoke-virtual {p0, v4}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    .line 35
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$1;

    invoke-direct {v5, p0}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/MessageViewer;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$2;

    invoke-direct {v5, p0}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$2;-><init>(Lcom/appsgeyser/wWindowsHotmail/MessageViewer;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 46
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 47
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 49
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 51
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 54
    const-wide/32 v4, 0x500000

    invoke-virtual {v1, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 56
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 61
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 62
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 63
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 66
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    invoke-direct {p0}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->destroyActivity()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 88
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    const-string v2, "ok"

    new-instance v3, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$3;

    invoke-direct {v3, p0}, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$3;-><init>(Lcom/appsgeyser/wWindowsHotmail/MessageViewer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 119
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 121
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
