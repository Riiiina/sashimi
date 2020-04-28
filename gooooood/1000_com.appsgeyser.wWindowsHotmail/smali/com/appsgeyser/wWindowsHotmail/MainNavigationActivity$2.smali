.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$2;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showCloseAppDialog()V
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
    .line 229
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->finish()V

    .line 232
    return-void
.end method
