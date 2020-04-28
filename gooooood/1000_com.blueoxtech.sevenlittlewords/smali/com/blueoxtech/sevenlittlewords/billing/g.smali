.class final Lcom/blueoxtech/sevenlittlewords/billing/g;
.super Lcom/blueoxtech/sevenlittlewords/billing/b;


# instance fields
.field private synthetic b:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/g;->b:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 4

    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/billing/g;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckBillingSupported response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/d;->a(I)Lcom/blueoxtech/sevenlittlewords/billing/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/billing/d;->a:Lcom/blueoxtech/sevenlittlewords/billing/d;

    invoke-virtual {v1}, Lcom/blueoxtech/sevenlittlewords/billing/d;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Z)V

    sget-wide v0, Lcom/blueoxtech/sevenlittlewords/billing/l;->a:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
