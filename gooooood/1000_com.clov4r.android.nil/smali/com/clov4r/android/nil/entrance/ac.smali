.class Lcom/clov4r/android/nil/entrance/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/ac;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ac;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iput p3, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->d:I

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ac;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->showDialog(I)V

    return-void
.end method
