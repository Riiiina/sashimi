.class Lcom/clov4r/android/nil/ez;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/dj;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ez;->a:Lcom/clov4r/android/nil/dj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/ez;->a:Lcom/clov4r/android/nil/dj;

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/dj;->a(Lcom/clov4r/android/nil/dj;I)I

    iget-object v0, p0, Lcom/clov4r/android/nil/ez;->a:Lcom/clov4r/android/nil/dj;

    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/dj;->b(Lcom/clov4r/android/nil/dj;I)I

    return-void
.end method
