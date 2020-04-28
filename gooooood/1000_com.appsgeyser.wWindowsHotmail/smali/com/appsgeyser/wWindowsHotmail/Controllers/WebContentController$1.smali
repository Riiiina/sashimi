.class Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController$1;
.super Landroid/os/HandlerThread;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->setProgressBarState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    invoke-static {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;->access$000(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Views/WebContent;->hideProgressBarPanel()V

    .line 149
    return-void
.end method
