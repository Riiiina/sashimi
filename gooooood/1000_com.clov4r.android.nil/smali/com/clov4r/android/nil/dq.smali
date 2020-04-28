.class Lcom/clov4r/android/nil/dq;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dq;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/dq;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->j(Lcom/clov4r/android/nil/CMPlayer;)V

    return-void
.end method
