.class public Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;


# static fields
.field private static final APPMAXCACHESIZE:I = 0x14


# instance fields
.field private _browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

.field private _parent:Landroid/view/ViewGroup;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabsPadding:I

.field private _webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

.field private _widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V
    .locals 1
    .param p1, "wdgtInfo"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_tabsPadding:I

    .line 38
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    return-object v0
.end method

.method private callHiddenWebViewMethod(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    if-eqz v2, :cond_0

    .line 189
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 190
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 192
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation Target Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 42
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v6, p0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->init(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;)V

    .line 44
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    iget-object v7, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v7}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->navigate(Ljava/lang/String;)V

    .line 45
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->getBrowser()Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    move-result-object v6

    iput-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 46
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v6

    iput-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    .line 48
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    new-instance v7, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;

    invoke-direct {v7, p0}, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebViewClient;-><init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    new-instance v7, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebChromeClient;

    invoke-direct {v7, p0}, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserWebChromeClient;-><init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    new-instance v7, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserDownloadListener;

    invoke-direct {v7, p0}, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserDownloadListener;-><init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 52
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 53
    .local v5, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 55
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 56
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 57
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 58
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 59
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 61
    const-wide/32 v6, 0x1400000

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 64
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 65
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    .local v2, "ctx":Landroid/content/Context;
    const-string v6, "appcache"

    invoke-virtual {v2, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "appCachePath":Ljava/lang/String;
    const-string v6, "databases"

    invoke-virtual {v2, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "databasePath":Ljava/lang/String;
    const-string v6, "geolocation"

    invoke-virtual {v2, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "geolocationDatabasePath":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 74
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 75
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 77
    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 78
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 80
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 82
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v6, v9}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setVerticalScrollBarEnabled(Z)V

    .line 83
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v6, v9}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file:///android_asset/content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 86
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->calculateScale()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setInitialScale(I)V

    .line 87
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v6

    invoke-interface {v6}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->widgetsCount()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 96
    const/16 v6, 0x3d

    iput v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_tabsPadding:I

    .line 98
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 90
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 91
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v6, v9}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setInitialScale(I)V

    .line 92
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method


# virtual methods
.method public calculateScale()I
    .locals 14

    .prologue
    .line 203
    const-string v10, "window"

    .line 204
    .local v10, "windowServiceContext":Ljava/lang/String;
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 206
    .local v9, "windowManager":Landroid/view/WindowManager;
    const/4 v4, 0x0

    .line 207
    .local v4, "dBrowserWidth":I
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x6

    if-le v11, v12, :cond_0

    .line 208
    const/16 v4, 0xa

    .line 212
    :goto_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dBrowserWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v11

    const/16 v12, 0x32

    sub-int v0, v11, v12

    .line 215
    .local v0, "browserHeight":I
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v11

    sub-int v1, v11, v4

    .line 217
    .local v1, "browserWidth":I
    iget-object v11, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v11}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    int-to-float v2, v11

    .line 218
    .local v2, "contentHeight":F
    iget v11, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_tabsPadding:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 219
    iget-object v11, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v11}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getWidth()I

    move-result v11

    int-to-float v3, v11

    .line 220
    .local v3, "contentWidth":F
    int-to-float v11, v0

    div-float v5, v11, v2

    .line 221
    .local v5, "dH":F
    int-to-float v11, v1

    div-float v7, v11, v3

    .line 222
    .local v7, "dW":F
    const/high16 v6, 0x42c80000    # 100.0f

    .line 223
    .local v6, "dScale":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v5, v11

    if-lez v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-lez v11, :cond_1

    .line 224
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v6, v11, v12

    .line 228
    :goto_1
    float-to-int v8, v6

    .line 229
    .local v8, "scale":I
    return v8

    .line 210
    .end local v0    # "browserHeight":I
    .end local v1    # "browserWidth":I
    .end local v2    # "contentHeight":F
    .end local v3    # "contentWidth":F
    .end local v5    # "dH":F
    .end local v6    # "dScale":F
    .end local v7    # "dW":F
    .end local v8    # "scale":I
    :cond_0
    const/16 v4, 0x14

    goto :goto_0

    .line 226
    .restart local v0    # "browserHeight":I
    .restart local v1    # "browserWidth":I
    .restart local v2    # "contentHeight":F
    .restart local v3    # "contentWidth":F
    .restart local v5    # "dH":F
    .restart local v6    # "dScale":F
    .restart local v7    # "dW":F
    :cond_1
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v6, v11, v12

    goto :goto_1
.end method

.method public createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabContent(Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "contentView":Landroid/view/View;
    check-cast v0, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    .end local v0    # "contentView":Landroid/view/View;
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    .line 104
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    .line 106
    invoke-direct {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->init()V

    .line 107
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->destroy()V

    .line 133
    return-void
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->hideProgressBarPanel()V

    .line 137
    return-void
.end method

.method public onBackKeyDown()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->goBack()V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showCloseAppDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->pauseTimers()V

    .line 177
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->resumeTimers()V

    .line 183
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setActiveState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 155
    if-eqz p1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->onResume()V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v1, p1}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->setActiveState(Z)V

    .line 171
    return-void

    .line 164
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 166
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->onPause()V

    goto :goto_0
.end method

.method public setProgressBarState(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController$1;

    const-string v2, "progressFinishDelay"

    invoke-direct {v1, p0, v2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_0
    return-void
.end method

.method public showProgressBarPanel()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->_webContent:Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->showProgressBarPanel()V

    .line 141
    return-void
.end method
