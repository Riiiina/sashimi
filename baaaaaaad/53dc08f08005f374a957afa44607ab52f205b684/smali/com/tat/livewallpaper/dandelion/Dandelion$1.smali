.class Lcom/tat/livewallpaper/dandelion/Dandelion$1;
.super Ljava/lang/Object;
.source "Dandelion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tat/livewallpaper/dandelion/Dandelion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;


# direct methods
.method constructor <init>(Lcom/tat/livewallpaper/dandelion/Dandelion;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    invoke-virtual {v0}, Lcom/tat/livewallpaper/dandelion/Dandelion;->test()V

    .line 30
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    invoke-virtual {v0}, Lcom/tat/livewallpaper/dandelion/Dandelion;->calLogTest()V

    .line 33
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    iget-object v0, v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    iget-object v1, v1, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    iget-object v0, v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    iget-object v1, v1, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
