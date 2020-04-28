.class final Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "OfferWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/featured/OfferWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 151
    const-string v0, ""

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 144
    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->access$0(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/OfferWall$MyWebChromeClient;->this$0:Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/featured/OfferWall;->access$0(Lcom/appspot/swisscodemonkeys/featured/OfferWall;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method
