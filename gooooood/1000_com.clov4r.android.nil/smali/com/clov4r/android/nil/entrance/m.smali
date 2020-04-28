.class Lcom/clov4r/android/nil/entrance/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/EntranceActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->setResult(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "page_style"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "last_id"

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v3, v3, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "register_email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Lcom/clov4r/android/nil/entrance/EntranceActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/m;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0080 -> :sswitch_1
        0x7f0b0081 -> :sswitch_0
        0x7f0b008b -> :sswitch_2
        0x7f0b008d -> :sswitch_3
    .end sparse-switch
.end method
