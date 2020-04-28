.class final Lcmn/AboutActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/AboutActivity;


# direct methods
.method constructor <init>(Lcmn/AboutActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcmn/AboutActivity$MyWebChromeClient;->this$0:Lcmn/AboutActivity;

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
    .line 158
    const-string v0, ""

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 151
    const/16 v0, 0x46

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcmn/AboutActivity$MyWebChromeClient;->this$0:Lcmn/AboutActivity;

    invoke-static {v0}, Lcmn/AboutActivity;->access$0(Lcmn/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcmn/AboutActivity$MyWebChromeClient;->this$0:Lcmn/AboutActivity;

    invoke-static {v0}, Lcmn/AboutActivity;->access$0(Lcmn/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method
