.class public Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerWeb.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->prepareView()V

    .line 35
    iget-object p0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->mContent:Landroid/view/View;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->mContent:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 43
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->mContent:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "old":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->mContent:Landroid/view/View;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 53
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "ioState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    iget-object p0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->mContent:Landroid/view/View;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 27
    return-void
.end method

.method public prepareView()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 13
    .local v0, "web":Landroid/webkit/WebView;
    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setSaveEnabled(Z)V

    .line 17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerWeb;->setContentView(Landroid/view/View;)V

    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 22
    return-void
.end method
