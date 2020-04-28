.class Lcom/clov4r/android/nil/bv;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v5}, Lcom/clov4r/android/nil/MainActivity;->a(Z)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v4}, Lcom/clov4r/android/nil/MainActivity;->b(Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/clov4r/android/nil/MainActivity;->a(Z)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setVisibility(I)V

    invoke-static {v4}, Lcom/clov4r/android/nil/MainActivity;->b(Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/clov4r/android/nil/MainActivity;->a(Z)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setVisibility(I)V

    invoke-static {v4}, Lcom/clov4r/android/nil/MainActivity;->b(Z)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->g(Lcom/clov4r/android/nil/MainActivity;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    new-instance v1, Lcom/clov4r/android/nil/g;

    invoke-direct {v1}, Lcom/clov4r/android/nil/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/cu;->notifyDataSetInvalidated()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0, v5}, Lcom/clov4r/android/nil/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0, v5}, Lcom/clov4r/android/nil/MainActivity;->dismissDialog(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0, v5}, Lcom/clov4r/android/nil/MainActivity;->removeDialog(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->h(Lcom/clov4r/android/nil/MainActivity;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ee;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/clov4r/android/nil/bv;->a:Lcom/clov4r/android/nil/MainActivity;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
