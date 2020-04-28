.class Lcom/clov4r/android/nil/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/clov4r/android/nil/b;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iput-object p2, p0, Lcom/clov4r/android/nil/dc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/dc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v0, v0, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v1, v1, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v0, v0, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/clov4r/android/nil/PlayListActivity;->a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v0, v0, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    sget v1, Lcom/clov4r/android/nil/PlayListActivity;->a:I

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Lcom/clov4r/android/nil/PlayListActivity;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v0, v0, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/dc;->b:Lcom/clov4r/android/nil/b;

    iget-object v1, v1, Lcom/clov4r/android/nil/b;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
