.class final Lcom/clov4r/android/nil/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ax;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget v0, Lcom/clov4r/android/nil/MainActivity;->aJ:I

    if-ltz v0, :cond_0

    sget v0, Lcom/clov4r/android/nil/MainActivity;->aJ:I

    iget-object v1, p0, Lcom/clov4r/android/nil/ax;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aL:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/ax;->a:Ljava/util/ArrayList;

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aJ:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/clov4r/android/nil/entrance/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    const-class v2, Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/ax;->a:Ljava/util/ArrayList;

    sget v3, Lcom/clov4r/android/nil/MainActivity;->aJ:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
