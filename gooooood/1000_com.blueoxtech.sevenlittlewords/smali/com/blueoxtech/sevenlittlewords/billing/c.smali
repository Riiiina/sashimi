.class public final Lcom/blueoxtech/sevenlittlewords/billing/c;
.super Lcom/blueoxtech/sevenlittlewords/billing/b;


# instance fields
.field public final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->d:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I)V

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Lcom/blueoxtech/sevenlittlewords/billing/c;Lcom/blueoxtech/sevenlittlewords/billing/d;)V

    return-void
.end method

.method protected final d()J
    .locals 4

    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/billing/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/billing/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PURCHASE_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-nez p0, :cond_1

    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/blueoxtech/sevenlittlewords/billing/l;->a:J

    :goto_0
    return-wide v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/blueoxtech/sevenlittlewords/billing/l;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
