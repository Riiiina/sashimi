.class Lcom/clov4r/android/nil/br;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ThumbCreateActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v2, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/ThumbCreateActivity;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/clov4r/android/nil/library/MediaLibrary;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    sput-boolean v4, Lcom/clov4r/android/nil/library/MediaLibrary;->e:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/ThumbCreateActivity;->setResult(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/br;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
