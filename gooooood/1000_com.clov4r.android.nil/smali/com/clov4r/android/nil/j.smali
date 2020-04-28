.class Lcom/clov4r/android/nil/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/DetailDialogActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/DetailDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    const v1, 0x7f0900c7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/j;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
