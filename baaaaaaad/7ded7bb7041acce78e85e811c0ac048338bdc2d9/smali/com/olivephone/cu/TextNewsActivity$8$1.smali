.class Lcom/olivephone/cu/TextNewsActivity$8$1;
.super Ljava/lang/Thread;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$8;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$8$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$8;

    .line 449
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 452
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 453
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$8$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$8;

    invoke-static {v2}, Lcom/olivephone/cu/TextNewsActivity$8;->access$0(Lcom/olivephone/cu/TextNewsActivity$8;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->handler1:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "msg"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 454
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$8$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$8;

    invoke-static {v2}, Lcom/olivephone/cu/TextNewsActivity$8;->access$0(Lcom/olivephone/cu/TextNewsActivity$8;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->handler1:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$8$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$8;

    invoke-static {v2}, Lcom/olivephone/cu/TextNewsActivity$8;->access$0(Lcom/olivephone/cu/TextNewsActivity$8;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 457
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
