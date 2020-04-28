.class Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$2;
.super Ljava/lang/Object;
.source "AppsGeyserServerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$2;->this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$2;->this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->showPausedContentInfo()V

    .line 164
    return-void
.end method
