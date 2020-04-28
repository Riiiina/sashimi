.class Lcom/clov4r/android/nil/entrance/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/y;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/y;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-virtual {v0, p3}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/y;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    sput p3, Lcom/clov4r/android/nil/entrance/b;->d:I

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/y;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/y;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/b;->notifyDataSetChanged()V

    return-void
.end method
