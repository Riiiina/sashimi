.class Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/facebook/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;


# direct methods
.method private constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;-><init>(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$2(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$3(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$1(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$1(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 160
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/model/facebook/DialogError;

    .line 151
    invoke-direct {v1, p3, p2, p4}, Lcom/clearchannel/iheartradio/model/facebook/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    invoke-interface {v0, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onError(Lcom/clearchannel/iheartradio/model/facebook/DialogError;)V

    .line 152
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->dismiss()V

    .line 153
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 123
    const-string v2, "fbconnect://success"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "values":Landroid/os/Bundle;
    const-string v2, "error_reason"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->dismiss()V

    move v2, v6

    .line 143
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "values":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 133
    :cond_1
    const-string v2, "fbconnect:cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/FbDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onCancel()V

    .line 135
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->dismiss()V

    move v2, v6

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    const-string v2, "touch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/clearchannel/iheartradio/model/facebook/FbDialog;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 142
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v6

    .line 143
    goto :goto_0
.end method
