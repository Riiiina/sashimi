.class Lcom/clov4r/android/nil/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v0, v0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->l(Lcom/clov4r/android/nil/CMPlayer;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/CMPlayer;->m(Lcom/clov4r/android/nil/CMPlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_3

    sget v4, Lcom/clov4r/android/nil/CMPlayer;->g:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v0, v4

    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    cmp-long v2, v0, v7

    if-gez v2, :cond_2

    move-wide v0, v7

    :cond_2
    iget-object v2, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->b(J)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/CMPlayer;->r(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v4

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/CMPlayer;->s(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v4, v6}, Lcom/clov4r/android/nil/CMPlayer;->c(Lcom/clov4r/android/nil/CMPlayer;I)I

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v4}, Lcom/clov4r/android/nil/CMPlayer;->t(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/CMPlayer;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/clov4r/android/nil/de;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v4, v4, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    sget v4, Lcom/clov4r/android/nil/CMPlayer;->g:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_1
.end method
