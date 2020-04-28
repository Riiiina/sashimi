.class Lcom/clov4r/android/nil/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cl;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/cl;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/MainActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/clov4r/android/nil/n;

    iget-object v1, p0, Lcom/clov4r/android/nil/cl;->a:Lcom/clov4r/android/nil/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    goto :goto_0
.end method
