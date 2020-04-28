.class Lcom/tt/yy/ViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tt/yy/ViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tt/yy/ViewActivity;


# direct methods
.method constructor <init>(Lcom/tt/yy/ViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tt/yy/ViewActivity$1;->this$0:Lcom/tt/yy/ViewActivity;

    .line 44
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tt/yy/ViewActivity$1;->this$0:Lcom/tt/yy/ViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tt/yy/ViewActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 56
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tt/yy/ViewActivity$1;->this$0:Lcom/tt/yy/ViewActivity;

    invoke-virtual {v0, v1}, Lcom/tt/yy/ViewActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 51
    return v1
.end method
