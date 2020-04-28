.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;
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


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 626
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->access$002(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 627
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->access$102(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 628
    return-void
.end method
