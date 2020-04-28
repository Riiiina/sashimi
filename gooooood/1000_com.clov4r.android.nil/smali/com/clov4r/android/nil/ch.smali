.class Lcom/clov4r/android/nil/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/dl;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ch;->a:Lcom/clov4r/android/nil/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget v0, Lcom/clov4r/android/nil/ec;->j:I

    sput v0, Lcom/clov4r/android/nil/ec;->k:I

    iget-object v0, p0, Lcom/clov4r/android/nil/ch;->a:Lcom/clov4r/android/nil/dl;

    iget-object v0, v0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v0, v0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
