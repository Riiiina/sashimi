.class final Lcom/blueoxtech/sevenlittlewords/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/blueoxtech/sevenlittlewords/g;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iput p2, p0, Lcom/blueoxtech/sevenlittlewords/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f020009

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/aa;

    invoke-direct {v1, p0, p1}, Lcom/blueoxtech/sevenlittlewords/aa;-><init>(Lcom/blueoxtech/sevenlittlewords/q;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
