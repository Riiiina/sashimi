.class Lcom/clov4r/android/nil/dp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->k(Lcom/clov4r/android/nil/CMPlayer;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/CMPlayer;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v1, v0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v0, v0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iput v10, v0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->a()V

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetFPS()I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetVideoDecAvgTime()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/CMPlayer;->l(Lcom/clov4r/android/nil/CMPlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/CMPlayer;->m(Lcom/clov4r/android/nil/CMPlayer;)J

    move-result-wide v4

    sget-boolean v6, Lcom/clov4r/android/nil/Setting;->i:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v6, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;J)V

    :goto_1
    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v6, v6, Lcom/clov4r/android/nil/CMPlayer;->e:I

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v6}, Lcom/clov4r/android/nil/CMPlayer;->b()V

    sget-object v6, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    sget v6, Lcom/clov4r/android/nil/ec;->t:I

    if-ltz v6, :cond_7

    sget v6, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v7, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_7

    sget v6, Lcom/clov4r/android/nil/ec;->t:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/clov4r/android/nil/ec;->t:I

    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v6, v9}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    :goto_2
    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v6}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    :cond_3
    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-boolean v6, v6, Lcom/clov4r/android/nil/CMPlayer;->b:Z

    if-eqz v6, :cond_4

    const-string v6, ""

    if-ltz v0, :cond_8

    const-string v6, "FPS:%d.%d[vda:%d]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit8 v8, v0, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v9

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->o(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->d(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->p(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->o:Landroid/widget/SeekBar;

    long-to-int v1, v4

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->o:Landroid/widget/SeekBar;

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->q(Lcom/clov4r/android/nil/CMPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->d()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/CMPlayer;->q(Lcom/clov4r/android/nil/CMPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clov4r/android/nil/dj;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/clov4r/android/nil/CMPlayer;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->q(Lcom/clov4r/android/nil/CMPlayer;)Lcom/clov4r/android/nil/dj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v6}, Lcom/clov4r/android/nil/CMPlayer;->n(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/clov4r/android/nil/dp;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v6, v10}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v6

    goto/16 :goto_3
.end method
