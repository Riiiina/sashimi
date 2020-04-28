.class Lcom/clov4r/android/nil/entrance/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/ad;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ad;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ad;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget v1, v1, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ad;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget v1, v1, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ad;->a:Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    return-void
.end method
