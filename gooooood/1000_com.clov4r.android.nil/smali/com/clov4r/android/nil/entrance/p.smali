.class Lcom/clov4r/android/nil/entrance/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Object;

.field private d:Landroid/os/Handler;

.field private e:Lcom/clov4r/android/nil/entrance/af;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;Ljava/lang/String;Lcom/clov4r/android/nil/entrance/af;)V
    .locals 1

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/clov4r/android/nil/entrance/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/clov4r/android/nil/entrance/p;->e:Lcom/clov4r/android/nil/entrance/af;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/entrance/p;)Lcom/clov4r/android/nil/entrance/af;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->e:Lcom/clov4r/android/nil/entrance/af;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/p;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/p;->start()V

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v4, 0x22b

    const/4 v3, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b(Lcom/clov4r/android/nil/entrance/EntranceActivity;)La/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/p;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, La/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/p;->d:Landroid/os/Handler;

    new-instance v2, Lcom/clov4r/android/nil/entrance/r;

    invoke-direct {v2, p0, v0}, Lcom/clov4r/android/nil/entrance/r;-><init>(Lcom/clov4r/android/nil/entrance/p;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch La/a/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/a/a/g; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "last_id"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "result_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "last_id"

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget v2, v2, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "result_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v1, "page_style"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/p;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    goto :goto_0
.end method
