.class Lcom/clov4r/android/nil/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/aa;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    iget-object v1, v1, Lcom/clov4r/android/nil/aa;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    iget-object v3, v3, Lcom/clov4r/android/nil/aa;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    iget-object v2, v2, Lcom/clov4r/android/nil/aa;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    iget-object v0, v0, Lcom/clov4r/android/nil/aa;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->d(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/cy;->a:Lcom/clov4r/android/nil/aa;

    iget-object v0, v0, Lcom/clov4r/android/nil/aa;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/ScanFileActivity;->a(Lcom/clov4r/android/nil/ScanFileActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
