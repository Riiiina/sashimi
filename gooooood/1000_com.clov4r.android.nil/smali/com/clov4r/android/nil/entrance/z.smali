.class Lcom/clov4r/android/nil/entrance/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/z;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/z;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/clov4r/android/nil/entrance/h;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/z;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/z;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-boolean v2, v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    const-string v3, "http://update2.moboplayer.com/DownloadLink.xml"

    iget-object v5, p0, Lcom/clov4r/android/nil/entrance/z;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v5, v5, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->A:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/clov4r/android/nil/entrance/h;-><init>(Landroid/content/Context;ZLjava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method
