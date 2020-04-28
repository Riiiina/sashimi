.class final Lcom/blueoxtech/sevenlittlewords/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->h:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    iget v2, v0, Lcom/blueoxtech/sevenlittlewords/p;->c:I

    invoke-virtual {v0, v2, v3}, Lcom/blueoxtech/sevenlittlewords/p;->a(IZ)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v0, v1}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a(I)V

    :try_start_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/z;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/z;-><init>(Lcom/blueoxtech/sevenlittlewords/ab;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_3
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    iget v1, v0, Lcom/blueoxtech/sevenlittlewords/p;->b:I

    invoke-virtual {v0, v1, v3}, Lcom/blueoxtech/sevenlittlewords/p;->a(IZ)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    aget-object v0, v2, v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
