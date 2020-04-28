.class Lcom/clov4r/android/nil/as;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/as;->b:Lcom/clov4r/android/nil/MainActivity;

    iput-object p2, p0, Lcom/clov4r/android/nil/as;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/as;->b:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->ap:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clov4r/android/nil/as;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
