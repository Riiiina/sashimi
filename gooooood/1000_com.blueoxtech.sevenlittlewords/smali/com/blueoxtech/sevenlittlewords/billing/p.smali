.class final Lcom/blueoxtech/sevenlittlewords/billing/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/billing/o;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:J

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/o;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->c:J

    iput-object p5, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-class v6, Lcom/blueoxtech/sevenlittlewords/billing/f;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/f;->b()Lcom/blueoxtech/sevenlittlewords/billing/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/f;->b()Lcom/blueoxtech/sevenlittlewords/billing/a;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->c:J

    iget-object v5, p0, Lcom/blueoxtech/sevenlittlewords/billing/p;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a(Lcom/blueoxtech/sevenlittlewords/billing/o;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
