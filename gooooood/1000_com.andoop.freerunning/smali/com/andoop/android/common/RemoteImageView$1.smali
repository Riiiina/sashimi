.class Lcom/andoop/android/common/RemoteImageView$1;
.super Landroid/os/Handler;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/common/RemoteImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/common/RemoteImageView;


# direct methods
.method constructor <init>(Lcom/andoop/android/common/RemoteImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/common/RemoteImageView$1;->this$0:Lcom/andoop/android/common/RemoteImageView;

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/andoop/android/common/RemoteImageView$1;->this$0:Lcom/andoop/android/common/RemoteImageView;

    invoke-static {v0}, Lcom/andoop/android/common/RemoteImageView;->access$0(Lcom/andoop/android/common/RemoteImageView;)V

    .line 99
    return-void
.end method
