.class Lcom/clov4r/android/nil/ar;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ar;->a:Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/clov4r/android/nil/ar;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v0, p0, Lcom/clov4r/android/nil/ar;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/clov4r/android/nil/ar;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget v2, v2, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/ar;->a:Lcom/clov4r/android/nil/PlayListActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/clov4r/android/nil/PlayListActivity;->a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
