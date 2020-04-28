.class Lcom/clov4r/android/nil/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/bb;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/clov4r/android/nil/entrance/aa;

    iget-object v1, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v1, v1, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v2, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v2, v2, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    sget v3, Lcom/clov4r/android/nil/ec;->j:I

    invoke-direct {v0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/aa;-><init>(Landroid/content/Context;Lcom/clov4r/android/nil/entrance/s;I)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v2, v2, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/clov4r/android/nil/cm;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/cm;-><init>(Lcom/clov4r/android/nil/dl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/aa;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v2, v2, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/clov4r/android/nil/cf;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/cf;-><init>(Lcom/clov4r/android/nil/dl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v2, v2, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/clov4r/android/nil/ch;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/ch;-><init>(Lcom/clov4r/android/nil/dl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/aa;->show()V

    return-void
.end method
