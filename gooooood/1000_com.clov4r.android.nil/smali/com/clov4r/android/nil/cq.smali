.class Lcom/clov4r/android/nil/cq;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cq;->a:Lcom/clov4r/android/nil/MainPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/cq;->a:Lcom/clov4r/android/nil/MainPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainPlayer;->a(Lcom/clov4r/android/nil/MainPlayer;)V

    return-void
.end method
