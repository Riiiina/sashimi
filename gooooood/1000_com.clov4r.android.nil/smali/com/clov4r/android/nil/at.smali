.class Lcom/clov4r/android/nil/at;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    sget v1, Lcom/clov4r/android/nil/PlayListActivity;->b:I

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Lcom/clov4r/android/nil/PlayListActivity;I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-virtual {v0, v3}, Lcom/clov4r/android/nil/PlayListActivity;->dismissDialog(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/at;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-virtual {v0, v3}, Lcom/clov4r/android/nil/PlayListActivity;->showDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
