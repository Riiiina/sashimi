.class Lcom/clov4r/android/nil/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ScanFileActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ScanFileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/u;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/u;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    const-class v2, Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "pathKey"

    iget-object v2, p0, Lcom/clov4r/android/nil/u;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/u;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
