.class final Lcom/blueoxtech/sevenlittlewords/billing/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-class v0, Lcom/blueoxtech/sevenlittlewords/billing/f;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/f;->b()Lcom/blueoxtech/sevenlittlewords/billing/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/f;->b()Lcom/blueoxtech/sevenlittlewords/billing/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
