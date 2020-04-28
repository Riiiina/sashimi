.class public Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserWebChromeClient.java"


# instance fields
.field private _webController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V
    .locals 0
    .param p1, "webController"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebChromeClient;->_webController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .line 22
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 58
    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 59
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 48
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->onHideCustomView()V

    .line 49
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebChromeClient;->_webController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    invoke-virtual {v0, p2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->setProgressBarState(I)V

    .line 27
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 42
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 43
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 53
    return-void
.end method
