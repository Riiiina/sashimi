.class Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;
.super Landroid/webkit/WebViewClient;
.source "OfferWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/OfferWall;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    .line 49
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
    .line 54
    .line 55
    const-string v0, "<html><body style=\'color:#444;\'><h2>There was a network error.</h2> Please check your internet connection and try again.</body></html>"

    .line 56
    const-string v1, "text/html"

    const-string v2, "utf-8"

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v2, "http://p.appbrain.com/offerwall/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->access$1(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->access$1(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    .line 64
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-virtual {v2, v1}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 69
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
