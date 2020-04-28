.class final Lcom/blueoxtech/sevenlittlewords/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/ae;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ae;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ae;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->finish()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ae;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v0, v1, v1}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->overridePendingTransition(II)V

    return-void
.end method
