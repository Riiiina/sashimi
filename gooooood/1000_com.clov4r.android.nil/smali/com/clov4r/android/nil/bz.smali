.class Lcom/clov4r/android/nil/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bz;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/clov4r/android/nil/bz;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/bz;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/bz;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/bz;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
