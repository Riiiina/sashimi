.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showConnectionErrorDialog()V
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
    .line 488
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 491
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 492
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->finish()V

    .line 493
    return-void
.end method
