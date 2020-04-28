.class Lcom/clov4r/android/nil/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v2, v1, Lcom/clov4r/android/nil/CMPlayer;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/clov4r/android/nil/CMPlayer;->f:I

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iput v3, v1, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v1, v1, Lcom/clov4r/android/nil/CMPlayer;->f:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iput v3, v1, Lcom/clov4r/android/nil/CMPlayer;->f:I

    :cond_2
    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/CMPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/CMPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v3, v3, Lcom/clov4r/android/nil/CMPlayer;->f:I

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dstWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";dstHeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-virtual {v0, v2}, Lcom/clov4r/android/nil/NativeSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v3, v3, Lcom/clov4r/android/nil/CMPlayer;->f:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-le v2, v3, :cond_4

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_2
    iget-object v2, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_4
    int-to-float v1, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v0, v0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    const v3, 0x7f020089

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v0, v0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    div-int v0, v2, v1

    int-to-float v0, v0

    const v3, 0x3fe38e39

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    mul-int/lit8 v0, v2, 0x9

    div-int/lit8 v0, v0, 0x10

    move v1, v2

    :goto_3
    iget-object v2, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_7
    mul-int/lit8 v0, v1, 0x10

    div-int/lit8 v0, v0, 0x9

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_3

    :cond_8
    div-int v0, v2, v1

    int-to-float v0, v0

    const v3, 0x3faaaaab

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    move v1, v2

    :goto_4
    iget-object v2, p0, Lcom/clov4r/android/nil/el;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_9
    mul-int/lit8 v0, v1, 0x4

    div-int/lit8 v0, v0, 0x3

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_4
.end method
