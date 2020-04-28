.class final Lcom/blueoxtech/sevenlittlewords/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v1, v2, v2}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->overridePendingTransition(II)V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v1}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->finish()V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v1, v2, v2}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->overridePendingTransition(II)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/af;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v1, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
