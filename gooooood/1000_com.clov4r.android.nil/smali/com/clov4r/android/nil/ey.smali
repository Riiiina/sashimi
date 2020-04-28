.class Lcom/clov4r/android/nil/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->j(Lcom/clov4r/android/nil/SystemPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/SystemPlayer;->k(Lcom/clov4r/android/nil/SystemPlayer;)I

    move-result v1

    const-string v2, "hx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "hx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    sget v2, Lcom/clov4r/android/nil/CMPlayer;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    :goto_0
    const-string v2, "hx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seek to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    if-gez v0, :cond_1

    move v0, v5

    :cond_1
    iget-object v1, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/clov4r/android/nil/SystemPlayer;->a(J)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/SystemPlayer;->o(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/SystemPlayer;->p(Lcom/clov4r/android/nil/SystemPlayer;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2, v5}, Lcom/clov4r/android/nil/SystemPlayer;->a(Lcom/clov4r/android/nil/SystemPlayer;I)I

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v2}, Lcom/clov4r/android/nil/SystemPlayer;->c(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/ey;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/clov4r/android/nil/CMPlayer;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    goto :goto_0
.end method
