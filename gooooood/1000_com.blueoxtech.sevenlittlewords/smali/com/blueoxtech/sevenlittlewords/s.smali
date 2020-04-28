.class final Lcom/blueoxtech/sevenlittlewords/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/s;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/blueoxtech/sevenlittlewords/s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->finish()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    invoke-virtual {v0, v1, v1}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    const-class v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zone"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "puzzle"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/s;->c:Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    invoke-virtual {v1, v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
