.class public Lcom/clov4r/android/nil/ed;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ed;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f40

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ed;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/clov4r/android/nil/ed;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v1, v1, Lcom/clov4r/android/nil/SystemPlayer;->R:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
