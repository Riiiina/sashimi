.class Lcom/clov4r/android/nil/ag;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/FileListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/FileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ag;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/ag;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/ag;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->dismissDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
