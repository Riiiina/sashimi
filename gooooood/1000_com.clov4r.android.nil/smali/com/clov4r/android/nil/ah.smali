.class Lcom/clov4r/android/nil/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/FileListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/FileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/m;->b(I)I

    move-result v0

    const-string v1, ""

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/FileListActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/FileListActivity;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-static {v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/FileListActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->b(Lcom/clov4r/android/nil/FileListActivity;Ljava/io/File;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    invoke-static {v2}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/FileListActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/ah;->a:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/ab;)V

    goto :goto_1
.end method
