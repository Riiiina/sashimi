.class Lcom/clov4r/android/nil/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "mytag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iput-boolean v3, v0, Lcom/clov4r/android/nil/MainActivity;->K:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/MainActivity;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iput-boolean v4, v0, Lcom/clov4r/android/nil/MainActivity;->U:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f030004

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->ay:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v6, :cond_6

    aget-object v1, v0, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eq v1, v5, :cond_0

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/MainActivity;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v5

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_5

    sput v5, Lcom/clov4r/android/nil/ec;->t:I

    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/clov4r/android/nil/ec;->a(Ljava/lang/String;)Z

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    iget-object v1, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    :goto_3
    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    aget-object v1, v0, v4

    sput-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v2, Lcom/clov4r/android/nil/MainActivity;->ay:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/clov4r/android/nil/PlayListActivity;->d:Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/ao;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_6
    move v1, v5

    goto/16 :goto_1
.end method
