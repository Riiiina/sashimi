.class Lcom/clov4r/android/nil/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/clov4r/android/nil/ct;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/ct;Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/clov4r/android/nil/cs;->b:Lcom/clov4r/android/nil/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/cs;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/clov4r/android/nil/cs;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/cs;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/cs;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/cs;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->dismiss()V

    return-void
.end method
