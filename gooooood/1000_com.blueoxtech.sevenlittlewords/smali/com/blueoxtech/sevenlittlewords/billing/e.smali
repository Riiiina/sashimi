.class final Lcom/blueoxtech/sevenlittlewords/billing/e;
.super Lcom/blueoxtech/sevenlittlewords/billing/b;


# instance fields
.field private b:[Ljava/lang/String;

.field private synthetic c:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/e;->c:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/blueoxtech/sevenlittlewords/billing/b;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I)V

    iput-object p3, p0, Lcom/blueoxtech/sevenlittlewords/billing/e;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 4

    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/billing/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/e;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "confirmNotifications"

    invoke-static {v1, v0}, Lcom/blueoxtech/sevenlittlewords/billing/e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/blueoxtech/sevenlittlewords/billing/l;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
