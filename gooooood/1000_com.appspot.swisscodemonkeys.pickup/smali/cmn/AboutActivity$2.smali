.class Lcmn/AboutActivity$2;
.super Landroid/webkit/WebViewClient;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/AboutActivity;


# direct methods
.method constructor <init>(Lcmn/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/AboutActivity$2;->this$0:Lcmn/AboutActivity;

    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    .line 80
    const-string v0, "<html><body>There was a network error. Please check your internet connection.</body></html>"

    .line 81
    const-string v1, "text/html"

    const-string v2, "utf-8"

    .line 79
    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v1, "http://swisscodemonkeys.appspot.com/mobile/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcmn/AboutActivity$2;->this$0:Lcmn/AboutActivity;

    invoke-static {v1}, Lcmn/AboutActivity;->access$1(Lcmn/AboutActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcmn/AboutActivity$2;->this$0:Lcmn/AboutActivity;

    invoke-static {v1}, Lcmn/AboutActivity;->access$1(Lcmn/AboutActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    .line 89
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcmn/AboutActivity$2;->this$0:Lcmn/AboutActivity;

    invoke-virtual {v1, v0}, Lcmn/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    const/4 v1, 0x1

    goto :goto_0
.end method
