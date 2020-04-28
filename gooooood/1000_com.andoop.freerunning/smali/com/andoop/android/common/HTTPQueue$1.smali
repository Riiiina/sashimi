.class Lcom/andoop/android/common/HTTPQueue$1;
.super Landroid/os/Handler;
.source "HTTPQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/common/HTTPQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/common/HTTPQueue;


# direct methods
.method constructor <init>(Lcom/andoop/android/common/HTTPQueue;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/common/HTTPQueue$1;->this$0:Lcom/andoop/android/common/HTTPQueue;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/andoop/android/common/HTTPQueue$1;->this$0:Lcom/andoop/android/common/HTTPQueue;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/andoop/android/common/HTTPQueue;->finished(I)V

    .line 77
    return-void
.end method
