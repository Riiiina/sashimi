.class public Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# instance fields
.field private _defaultUrl:Ljava/lang/String;

.field private _isRedirectEnabled:Z

.field private _mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field private _webContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V
    .locals 3
    .param p1, "webContentController"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    .line 29
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_defaultUrl:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .line 31
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_defaultUrl:Ljava/lang/String;

    const-string v1, "file:///android_asset/content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iput-boolean v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "javascript:(function(){ if(document.getElementsByTagName(\'object\').length > 0 || document.getElementsByTagName(\'embed\').length > 0) window.CHECKFLASH.flashExist()})()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iget-boolean v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 52
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 53
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 55
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v5, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-void

    .line 58
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not open url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const/4 v6, 0x3

    invoke-static {v5, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 64
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityNotFoundException"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPageStarted() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->showProgressBarPanel()V

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showConnectionErrorDialog()V

    .line 97
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v15, 0x0

    .line 116
    .local v15, "username":Ljava/lang/String;
    const/4 v13, 0x0

    .line 118
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v14

    .line 121
    .local v14, "reuseHttpAuthUsernamePassword":Z
    if-eqz v14, :cond_0

    if-eqz p1, :cond_0

    .line 122
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "credentials":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v3, v12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 125
    const/4 v3, 0x0

    aget-object v15, v12, v3

    .line 126
    const/4 v3, 0x1

    aget-object v13, v12, v3

    .line 130
    .end local v12    # "credentials":[Ljava/lang/String;
    :cond_0
    if-eqz v15, :cond_1

    if-eqz v13, :cond_1

    .line 131
    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 102
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "mailto:"

    .line 74
    const-string v1, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "mailto:"

    const-string v1, ""

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 82
    :cond_0
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 85
    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v5

    .line 89
    goto :goto_0
.end method
