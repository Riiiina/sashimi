.class Lcom/clov4r/android/nil/entrance/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/u;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/u;->a:Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->showDialog(I)V

    return-void
.end method
