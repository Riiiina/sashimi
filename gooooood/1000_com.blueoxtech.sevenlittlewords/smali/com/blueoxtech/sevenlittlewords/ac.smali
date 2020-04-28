.class final Lcom/blueoxtech/sevenlittlewords/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    aget-object v0, v2, v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ac;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
