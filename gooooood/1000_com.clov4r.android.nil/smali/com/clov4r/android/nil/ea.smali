.class Lcom/clov4r/android/nil/ea;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/Setting;


# direct methods
.method private constructor <init>(Lcom/clov4r/android/nil/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clov4r/android/nil/Setting;Lcom/clov4r/android/nil/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/ea;-><init>(Lcom/clov4r/android/nil/Setting;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->b(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Lcom/clov4r/android/nil/Setting;I)V

    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Lcom/clov4r/android/nil/Setting;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ea;->a:Lcom/clov4r/android/nil/Setting;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Lcom/clov4r/android/nil/Setting;I)V

    goto :goto_0
.end method
