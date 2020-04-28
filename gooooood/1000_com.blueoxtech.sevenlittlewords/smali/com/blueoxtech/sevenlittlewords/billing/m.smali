.class public final Lcom/blueoxtech/sevenlittlewords/billing/m;
.super Lcom/blueoxtech/sevenlittlewords/billing/b;


# instance fields
.field private b:J

.field private synthetic c:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/m;->c:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    const-string v0, "restore"

    invoke-direct {p0, p1, v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/blueoxtech/sevenlittlewords/billing/b;->a(Landroid/os/RemoteException;)V

    iget-wide v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/m;->b:J

    invoke-static {v0, v1}, Lcom/blueoxtech/sevenlittlewords/billing/h;->a(J)V

    return-void
.end method

.method protected final a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 0

    invoke-static {p1}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V

    return-void
.end method

.method protected final d()J
    .locals 4

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/m;->b:J

    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/billing/m;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/m;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restoreTransactions"

    invoke-static {v1, v0}, Lcom/blueoxtech/sevenlittlewords/billing/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/blueoxtech/sevenlittlewords/billing/l;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
