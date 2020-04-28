.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;
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
    .line 478
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 481
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 482
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 483
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 484
    return-void
.end method
