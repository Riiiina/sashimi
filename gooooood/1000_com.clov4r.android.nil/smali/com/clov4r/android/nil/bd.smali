.class Lcom/clov4r/android/nil/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, 0x0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v5, v5, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_1
    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, p0, Lcom/clov4r/android/nil/bd;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sget-object v4, Lcom/clov4r/android/nil/MainActivity;->ay:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method
