.class public abstract Lcom/blueoxtech/sevenlittlewords/billing/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private synthetic d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I)V
    .locals 1

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "generic"

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->b:I

    invoke-virtual {p1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "generic"

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->b:I

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/d;->a(I)Lcom/blueoxtech/sevenlittlewords/billing/d;

    move-result-object v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v2}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->g()Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method protected a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    const-string v0, "BillingService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->c:J

    const-string v0, "BillingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/blueoxtech/sevenlittlewords/billing/b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->a(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
