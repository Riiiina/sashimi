.class Lcom/clov4r/android/nil/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cg;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/cg;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->c(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cg;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(Lcom/clov4r/android/nil/SystemPlayer;I)I

    iget-object v0, p0, Lcom/clov4r/android/nil/cg;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cg;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
