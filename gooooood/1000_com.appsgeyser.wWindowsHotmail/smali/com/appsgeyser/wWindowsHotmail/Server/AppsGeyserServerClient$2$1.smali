.class Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;
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
    .line 148
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    iget-object v1, v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$300(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    .line 151
    return-void
.end method
