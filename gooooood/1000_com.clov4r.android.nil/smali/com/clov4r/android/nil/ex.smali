.class Lcom/clov4r/android/nil/ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iput-boolean v5, v0, Lcom/clov4r/android/nil/SystemPlayer;->Q:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->t:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v1, v1, Lcom/clov4r/android/nil/SystemPlayer;->o:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->i(Lcom/clov4r/android/nil/SystemPlayer;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget v1, v0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iput v5, v0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/SystemPlayer;->a()V

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->j(Lcom/clov4r/android/nil/SystemPlayer;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/SystemPlayer;->k(Lcom/clov4r/android/nil/SystemPlayer;)I

    move-result v2

    int-to-long v2, v2

    sget-boolean v4, Lcom/clov4r/android/nil/Setting;->i:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v4, v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Lcom/clov4r/android/nil/SystemPlayer;J)V

    :goto_1
    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    :cond_4
    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/SystemPlayer;->e(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/SystemPlayer;->m(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/SystemPlayer;->e:Landroid/widget/SeekBar;

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/SystemPlayer;->e:Landroid/widget/SeekBar;

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/SystemPlayer;->n(Lcom/clov4r/android/nil/SystemPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->d()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/SystemPlayer;->n(Lcom/clov4r/android/nil/SystemPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clov4r/android/nil/dj;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/clov4r/android/nil/SystemPlayer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/SystemPlayer;->n(Lcom/clov4r/android/nil/SystemPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/clov4r/android/nil/ex;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/SystemPlayer;->l(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move v4, v5

    goto/16 :goto_2
.end method
