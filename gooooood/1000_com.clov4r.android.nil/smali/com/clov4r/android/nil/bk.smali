.class Lcom/clov4r/android/nil/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bk;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/bk;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/MainActivity;->finish()V

    iget-object v0, p0, Lcom/clov4r/android/nil/bk;->a:Lcom/clov4r/android/nil/MainActivity;

    const-string v1, "Path"

    iget-object v2, p0, Lcom/clov4r/android/nil/bk;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
