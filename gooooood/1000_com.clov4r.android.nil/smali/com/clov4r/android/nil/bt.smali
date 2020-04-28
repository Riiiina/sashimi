.class Lcom/clov4r/android/nil/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bt;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/bt;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    iget-object v1, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    const/4 v1, -0x1

    sput v1, Lcom/clov4r/android/nil/ec;->t:I

    iget-object v1, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/clov4r/android/nil/ec;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/clov4r/android/nil/bt;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bt;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method
