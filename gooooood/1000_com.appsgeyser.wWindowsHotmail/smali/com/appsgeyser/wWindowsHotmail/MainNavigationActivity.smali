.class public Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
.super Landroid/app/Activity;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;,
        Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    }
.end annotation


# static fields
.field public static final APPMODE_PARAM:Ljava/lang/String; = "applicationMode"

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "AppsgeyserPrefs"


# instance fields
.field private final BANNERSHOWTIME:J

.field _activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field _config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

.field _connectionErrorDialog:Landroid/app/Dialog;

.field private _currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field _serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

.field _tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

.field bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

.field bannerUrl:Ljava/lang/String;

.field mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideo:Landroid/widget/VideoView;

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 89
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    .line 77
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->BANNERSHOWTIME:J

    .line 78
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-void
.end method

.method static synthetic access$002(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .param p1, "x1"    # Landroid/webkit/HttpAuthHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method private callHiddenWebViewMethod(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "browser"    # Landroid/webkit/WebView;

    .prologue
    .line 347
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 348
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 356
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 350
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

    .line 351
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 352
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

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 354
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


# virtual methods
.method public getConfig()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 506
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 507
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    .line 510
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method public invoke(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .param p3, "remember"    # Z

    .prologue
    .line 502
    return-void
.end method

.method public loadPreviousApplicationMode()V
    .locals 4

    .prologue
    .line 282
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "applicationMode"

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "mode":I
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 285
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 289
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2, v3}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    .line 291
    :cond_1
    return-void

    .line 286
    :cond_2
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 287
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 305
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 310
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 311
    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 308
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 558
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->onHideCustomView()V

    .line 559
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 463
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b000c

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iput-object p0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .line 109
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v5

    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->Init(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    .line 111
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    move-result-object v3

    .line 115
    .local v3, "manager":Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;
    :try_start_0
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->loadConfiguration()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-result-object v5

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    .line 117
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->getInstance(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    move-result-object v5

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .line 119
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendAfterInstallInfo()V

    .line 121
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendUsageInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const/high16 v7, 0x7f090000

    invoke-direct {v5, v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;I)V

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    .line 133
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->loadPreviousApplicationMode()V

    .line 135
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->GetApplicationMode()V

    .line 137
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0, v8}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    .line 139
    const v5, 0x7f0b0012

    invoke-virtual {p0, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 141
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    move-result-object v5

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 142
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v6

    invoke-interface {v6}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 145
    const v5, 0x7f0b000f

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 146
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setVerticalScrollBarEnabled(Z)V

    .line 147
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 148
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 149
    .local v4, "settings":Landroid/webkit/WebSettings;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 151
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 152
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->GetBunnerUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerUrl:Ljava/lang/String;

    .line 153
    new-instance v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    .line 213
    .local v1, "bannerThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 215
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getBannerPosition()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->BOTTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    if-ne v5, v6, :cond_0

    .line 216
    const v5, 0x7f0b000d

    invoke-virtual {p0, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, "bannerPanel":Landroid/view/View;
    const v5, 0x7f0b000c

    invoke-virtual {p0, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 218
    .local v2, "contentFrame":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    .end local v0    # "bannerPanel":Landroid/view/View;
    .end local v1    # "bannerThread":Ljava/lang/Thread;
    .end local v2    # "contentFrame":Landroid/view/ViewGroup;
    .end local v4    # "settings":Landroid/webkit/WebSettings;
    :cond_0
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v5

    goto :goto_1

    .line 129
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 413
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 414
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 368
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 539
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 552
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 397
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->onHideCustomView()V

    move v0, v1

    .line 406
    :goto_0
    return v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->onBackKeyDown()V

    move v0, v1

    .line 403
    goto :goto_0

    .line 406
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 434
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 455
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 436
    :pswitch_0
    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->finish()V

    move v3, v6

    .line 437
    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->showDialog()V

    move v3, v6

    .line 440
    goto :goto_0

    .line 442
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v3, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 444
    goto :goto_0

    .line 446
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, "sharingIntent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "bodyText":Ljava/lang/String;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v3, "Share using"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 453
    goto/16 :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b001d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->pauseTimers()V

    .line 321
    const-string v0, "onPause"

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->callHiddenWebViewMethod(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->onPause()V

    .line 325
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0b0020

    const/4 v4, 0x1

    .line 419
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    if-ne v2, v3, :cond_0

    .line 420
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 421
    .local v1, "itemShare":Landroid/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    :goto_0
    const v2, 0x7f0b001e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 427
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getRateItemVisibility()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    return v4

    .line 423
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "itemShare":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 424
    .restart local v1    # "itemShare":Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 331
    invoke-static {p0}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "regId":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRegisteredId(Ljava/lang/String;)V

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->resumeTimers()V

    .line 339
    const-string v1, "onResume"

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    invoke-direct {p0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->callHiddenWebViewMethod(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-interface {v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->onResume()V

    .line 343
    :cond_1
    return-void

    .line 335
    :cond_2
    const-string v1, "softotest@gmail.com"

    invoke-static {p0, v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 515
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 516
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 536
    :goto_0
    return-void

    .line 519
    :cond_0
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 520
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v1, v0

    .line 521
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/VideoView;

    if-eqz v2, :cond_1

    .line 522
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    .line 523
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 524
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 528
    .end local v1    # "frame":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 530
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 532
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 535
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 3
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
    .line 295
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "File Chooser"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    return-void
.end method

.method public setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .prologue
    .line 268
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    if-eq v2, p1, :cond_0

    .line 269
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "applicationMode"

    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 276
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mAboutDialog:Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;

    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_currentMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2, v3}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    .line 279
    :cond_1
    return-void
.end method

.method public setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 661
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    return-void
.end method

.method public showCloseAppDialog()V
    .locals 4

    .prologue
    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Do you really want to exit application?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const-string v2, "Yes"

    new-instance v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$2;

    invoke-direct {v3, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$2;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    const-string v2, "Cancel"

    new-instance v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$3;

    invoke-direct {v3, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$3;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 242
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method

.method public showConnectionErrorDialog()V
    .locals 4

    .prologue
    .line 470
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 496
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    const/high16 v3, 0x7f090000

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 473
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 474
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 475
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 477
    .local v0, "btn":Landroid/widget/Button;
    const-string v2, "Try Again"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    new-instance v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;

    invoke-direct {v2, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    const/4 v0, 0x0

    .line 486
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 487
    .restart local v0    # "btn":Landroid/widget/Button;
    const-string v2, "Exit"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 488
    new-instance v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;

    invoke-direct {v2, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 495
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "focusId"    # I

    .prologue
    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f050000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getHttpAccessLogin()Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, "login":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getHttpAccessPassword()Ljava/lang/String;

    move-result-object v8

    .local v8, "pass":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 580
    invoke-virtual/range {v3 .. v8}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p2

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v7    # "login":Ljava/lang/String;
    .end local v8    # "pass":Ljava/lang/String;
    .end local p6    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 584
    .restart local p6    # "name":Ljava/lang/String;
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 585
    .local v17, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 587
    .local v11, "v":Landroid/view/View;
    if-eqz p6, :cond_1

    .line 588
    const v3, 0x7f0b0009

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_1
    if-eqz p7, :cond_2

    .line 591
    const v3, 0x7f0b000b

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    .end local p6    # "name":Ljava/lang/String;
    check-cast p6, Landroid/widget/EditText;

    invoke-virtual/range {p6 .. p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_2
    move-object/from16 v18, p5

    .line 595
    .local v18, "titleText":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 596
    const v3, 0x7f080013

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s1"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s2"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 600
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 601
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Sign in"

    new-instance v9, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p2

    invoke-direct/range {v9 .. v15}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v3, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$7;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$7;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 637
    .local v16, "dialog":Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 639
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 640
    if-eqz p8, :cond_4

    .line 641
    move-object/from16 v0, v16

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 645
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 643
    :cond_4
    const v3, 0x7f0b0009

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    const-string v2, "ok"

    new-instance v3, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$4;

    invoke-direct {v3, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$4;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 254
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 255
    return-void
.end method

.method public showPausedContentInfo()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    if-nez v1, :cond_0

    .line 260
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 261
    :cond_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v0

    .line 262
    .local v0, "widgetCtrlr":Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;
    invoke-interface {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->removeAll()V

    .line 263
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;

    invoke-static {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->createDefaultWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;)Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->addWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V

    .line 264
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 265
    return-void
.end method
