.class public Lcom/blueoxtech/sevenlittlewords/billing/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/blueoxtech/sevenlittlewords/billing/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/blueoxtech/sevenlittlewords/billing/f;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    if-nez v0, :cond_0

    const-string v0, "ResponseHandler"

    const-string v1, "UI is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    invoke-virtual {v0, p0, p1}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/blueoxtech/sevenlittlewords/billing/a;)V
    .locals 2

    const-class v0, Lcom/blueoxtech/sevenlittlewords/billing/f;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/blueoxtech/sevenlittlewords/billing/c;Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    invoke-virtual {v0, p0, p1}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a(Lcom/blueoxtech/sevenlittlewords/billing/c;Lcom/blueoxtech/sevenlittlewords/billing/d;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    invoke-virtual {v0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    invoke-virtual {v0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/a;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/blueoxtech/sevenlittlewords/billing/a;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/f;->a:Lcom/blueoxtech/sevenlittlewords/billing/a;

    return-object v0
.end method
