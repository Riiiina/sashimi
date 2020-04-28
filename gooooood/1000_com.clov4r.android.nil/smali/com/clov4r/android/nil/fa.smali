.class Lcom/clov4r/android/nil/fa;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/clov4r/android/nil/PlayListActivity;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/fa;->b:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/clov4r/android/nil/fa;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/fa;->b:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/fa;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/fa;->b:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v2, p0, Lcom/clov4r/android/nil/fa;->b:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-static {v2, v0}, Lcom/clov4r/android/nil/PlayListActivity;->b(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/clov4r/android/nil/fa;->b:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/PlayListActivity;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
