.class Lcom/clov4r/android/nil/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/bb;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dk;->a:Lcom/clov4r/android/nil/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/dk;->a:Lcom/clov4r/android/nil/bb;

    iget-object v1, v1, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v2, Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/dk;->a:Lcom/clov4r/android/nil/bb;

    iget-object v1, v1, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
