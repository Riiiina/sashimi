.class final Lcom/blueoxtech/sevenlittlewords/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/n;->b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/n;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/n;->a:Landroid/widget/Button;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/n;->b:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/k;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/k;-><init>(Lcom/blueoxtech/sevenlittlewords/n;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
