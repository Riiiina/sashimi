.class Lcom/clov4r/android/nil/di;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/bb;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/di;->a:Lcom/clov4r/android/nil/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/clov4r/android/nil/di;->a:Lcom/clov4r/android/nil/bb;

    iget-object v0, v0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/di;->a:Lcom/clov4r/android/nil/bb;

    iget-object v2, v2, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/Setting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aD:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
