.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1$1;
.super Ljava/lang/Thread;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1$1;->this$2:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1$1;->this$2:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;

    iget-object v1, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v1, v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;

    .line 183
    .local v0, "panel":Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->setVisibility(I)V

    .line 184
    return-void
.end method
