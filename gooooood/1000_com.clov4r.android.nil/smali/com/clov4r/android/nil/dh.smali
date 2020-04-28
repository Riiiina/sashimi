.class Lcom/clov4r/android/nil/dh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/bb;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dh;->a:Lcom/clov4r/android/nil/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/dh;->a:Lcom/clov4r/android/nil/bb;

    iget-object v0, v0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/q;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    return-void
.end method
