.class final Lcom/blueoxtech/sevenlittlewords/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/blueoxtech/sevenlittlewords/q;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/q;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/aa;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->a()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iget v1, v1, Lcom/blueoxtech/sevenlittlewords/q;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/aa;->b:Lcom/blueoxtech/sevenlittlewords/q;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/q;->b:Lcom/blueoxtech/sevenlittlewords/g;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/aa;->a:Landroid/view/View;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
