.class Lcom/clov4r/android/nil/ae;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method private constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/ae;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/clov4r/android/nil/n;

    iget-object v1, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    iget-object v0, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->c(Lcom/clov4r/android/nil/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->d(Lcom/clov4r/android/nil/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ae;->a:Lcom/clov4r/android/nil/MainActivity;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->b(Lcom/clov4r/android/nil/MainActivity;I)V

    :cond_0
    return-void
.end method
