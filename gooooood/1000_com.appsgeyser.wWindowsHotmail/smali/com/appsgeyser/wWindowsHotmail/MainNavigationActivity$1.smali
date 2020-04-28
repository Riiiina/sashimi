.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;
.super Ljava/lang/Thread;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_serverClient:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v1, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->getAvailabilityStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v1, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerBrowser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    new-instance v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    :cond_0
    return-void
.end method
