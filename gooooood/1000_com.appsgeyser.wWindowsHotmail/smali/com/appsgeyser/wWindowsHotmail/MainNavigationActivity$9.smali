.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$host:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$realm:Ljava/lang/String;

    iput-object p6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x0

    .line 609
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$v:Landroid/view/View;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, "nm":Ljava/lang/String;
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$v:Landroid/view/View;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "pw":Ljava/lang/String;
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$realm:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {v0, v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->access$002(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 619
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {v0, v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->access$102(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 620
    return-void
.end method
