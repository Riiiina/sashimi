.class Lcom/clov4r/android/nil/entrance/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const-class v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    sget v2, Lcom/clov4r/android/nil/entrance/b;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/entrance/a;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v3, v0, Lcom/clov4r/android/nil/entrance/a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v3, v0, Lcom/clov4r/android/nil/entrance/a;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v3, v0, Lcom/clov4r/android/nil/entrance/a;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/a;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0, v4, v5, v4, v5}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a(JJ)V

    const-string v0, "activity_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "reDownload"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-boolean v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "apkUrl"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aG:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/v;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->setResult(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0b00ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
