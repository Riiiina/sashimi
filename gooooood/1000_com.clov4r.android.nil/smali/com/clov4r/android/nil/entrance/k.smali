.class Lcom/clov4r/android/nil/entrance/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/clov4r/android/nil/entrance/af;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/EntranceActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "result_code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "user_num"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "user_num"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0xea5f

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v3, "userCode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v3, "userEmail"

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v4, v4, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const-string v3, "userCode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const-string v2, "userEmail"

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const-string v1, "userCode"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const-string v1, "userEmail"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "last_id"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "last_id"

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v3, v3, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "result_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/k;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method
