.class Lcom/clov4r/android/nil/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/Setting;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/clov4r/android/nil/entrance/n;

    iget-object v2, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {v1, v2}, Lcom/clov4r/android/nil/entrance/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/co;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/co;-><init>(Lcom/clov4r/android/nil/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/cn;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cn;-><init>(Lcom/clov4r/android/nil/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    iget-object v1, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/Setting;->dismissDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
