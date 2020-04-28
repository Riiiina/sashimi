.class Lcom/clov4r/android/nil/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;

.field final synthetic c:Lcom/clov4r/android/nil/FileListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/FileListActivity;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    iput-object p2, p0, Lcom/clov4r/android/nil/aj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/clov4r/android/nil/aj;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/clov4r/android/nil/dx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/clov4r/android/nil/aj;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/clov4r/android/nil/dy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/clov4r/android/nil/aj;->b:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/clov4r/android/nil/MainPlayer;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/FileListActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/aj;->c:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
