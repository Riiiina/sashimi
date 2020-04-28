.class final Lcom/blueoxtech/sevenlittlewords/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/n;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/n;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/k;->a:Lcom/blueoxtech/sevenlittlewords/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/k;->a:Lcom/blueoxtech/sevenlittlewords/n;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/n;->b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/k;->a:Lcom/blueoxtech/sevenlittlewords/n;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/n;->a:Landroid/widget/Button;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/k;->a:Lcom/blueoxtech/sevenlittlewords/n;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/n;->b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    const-string v1, "Restoring Previous Purchases"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/k;->a:Lcom/blueoxtech/sevenlittlewords/n;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/n;->b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b()Z

    return-void
.end method
