.class final Lcom/blueoxtech/sevenlittlewords/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

.field private synthetic d:Lcom/blueoxtech/sevenlittlewords/c;

.field private synthetic e:Landroid/widget/RelativeLayout;

.field private synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Lcom/blueoxtech/sevenlittlewords/c;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/o;->d:Lcom/blueoxtech/sevenlittlewords/c;

    iput-object p3, p0, Lcom/blueoxtech/sevenlittlewords/o;->e:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/blueoxtech/sevenlittlewords/o;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/blueoxtech/sevenlittlewords/o;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/blueoxtech/sevenlittlewords/o;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->d:Lcom/blueoxtech/sevenlittlewords/c;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->b:Lcom/blueoxtech/sevenlittlewords/c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->d:Lcom/blueoxtech/sevenlittlewords/c;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->a:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/d;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/d;-><init>(Lcom/blueoxtech/sevenlittlewords/o;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->d:Lcom/blueoxtech/sevenlittlewords/c;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->c:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->c(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checking against\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/o;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
