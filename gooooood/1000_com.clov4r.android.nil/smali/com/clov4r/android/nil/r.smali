.class Lcom/clov4r/android/nil/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/dt;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/r;->a:Lcom/clov4r/android/nil/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/r;->a:Lcom/clov4r/android/nil/dt;

    iget-object v0, v0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    const-string v1, "can\'t open %s to play"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/clov4r/android/nil/r;->a:Lcom/clov4r/android/nil/dt;

    iget-object v3, v3, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v3, v3, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/clov4r/android/nil/r;->a:Lcom/clov4r/android/nil/dt;

    iget-object v0, v0, Lcom/clov4r/android/nil/dt;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    return-void
.end method
