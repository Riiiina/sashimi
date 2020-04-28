.class Lcom/clov4r/android/nil/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->d()Z

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, v1, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->a()I

    move-result v2

    iget-object v3, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v3, v3, Lcom/clov4r/android/nil/CMPlayer;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->nativeOpen(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    new-instance v1, Lcom/clov4r/android/nil/r;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/r;-><init>(Lcom/clov4r/android/nil/dt;)V

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->g(Lcom/clov4r/android/nil/CMPlayer;)Z

    const/16 v0, 0x1e

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {}, Lcom/clov4r/android/nil/NativeSurfaceView;->getVideoHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;I)I

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {}, Lcom/clov4r/android/nil/NativeSurfaceView;->getVideoWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;I)I

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->h(Lcom/clov4r/android/nil/CMPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-gtz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->h(Lcom/clov4r/android/nil/CMPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
