.class Lcom/clov4r/android/nil/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/dl;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cf;->a:Lcom/clov4r/android/nil/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const v0, -0x98937f

    sput v0, Lcom/clov4r/android/nil/ec;->k:I

    sput v0, Lcom/clov4r/android/nil/ec;->j:I

    iget-object v0, p0, Lcom/clov4r/android/nil/cf;->a:Lcom/clov4r/android/nil/dl;

    iget-object v0, v0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v0, v0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    const-string v1, "#ff676C81"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cf;->a:Lcom/clov4r/android/nil/dl;

    iget-object v0, v0, Lcom/clov4r/android/nil/dl;->a:Lcom/clov4r/android/nil/bb;

    iget-object v0, v0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-string v1, "background_keys_setting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/clov4r/android/nil/ec;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
