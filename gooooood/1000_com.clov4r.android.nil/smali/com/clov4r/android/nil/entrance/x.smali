.class Lcom/clov4r/android/nil/entrance/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x7f0900e3

    const-wide/16 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_0
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    new-instance v1, Lcom/clov4r/android/nil/entrance/b;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {v1, v2}, Lcom/clov4r/android/nil/entrance/b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/b;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/b;->notifyDataSetChanged()V

    const-string v0, ""

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/entrance/a;

    iget-object v2, v0, Lcom/clov4r/android/nil/entrance/a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/clov4r/android/nil/entrance/a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/clov4r/android/nil/entrance/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v5, v5, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->q:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    sput v1, Lcom/clov4r/android/nil/entrance/b;->d:I

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iput v1, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->w:I

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    invoke-virtual {v2, v1, v0}, Lcom/clov4r/android/nil/entrance/b;->a(ILcom/clov4r/android/nil/entrance/a;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    const v2, 0x7f0900de

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iput-boolean v6, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const v1, 0x7f0900e1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/clov4r/android/nil/entrance/ag;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clov4r/android/nil/entrance/ag;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v2, v0, Lcom/clov4r/android/nil/entrance/ag;->a:J

    iput-wide v2, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v2, v0, Lcom/clov4r/android/nil/entrance/ag;->b:J

    iput-wide v2, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->C:J

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->C:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->j:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget v1, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->E:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v3, v3, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->C:J

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v3, v3, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->C:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v4, v4, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-wide v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const-string v2, ""

    iput-object v2, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const-string v2, ""

    iput-object v2, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const-string v2, ""

    iput-object v2, v1, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a(JJ)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iput-boolean v3, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->x:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const v1, 0x7f0900e5

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const-class v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->finish()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/x;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const v1, 0x7f0900e4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
