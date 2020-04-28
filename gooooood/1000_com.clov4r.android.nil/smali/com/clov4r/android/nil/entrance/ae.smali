.class Lcom/clov4r/android/nil/entrance/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v4

    move v2, v4

    :goto_1
    sget-object v3, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    const v3, 0x7f0900b6

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    :goto_2
    sget-object v2, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-static {v1}, Lcom/clov4r/android/nil/library/MediaLibrary;->i(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-static {v1}, Lcom/clov4r/android/nil/library/MediaLibrary;->j(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/entrance/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ae;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
