.class Lcom/clov4r/android/nil/cj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->d()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v2, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aG:I

    invoke-virtual {v1, v0, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v1, Lcom/clov4r/android/nil/ec;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/MainActivity;Ljava/net/URI;)Ljava/net/URI;

    new-instance v0, La/a/a/f;

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v1}, Lcom/clov4r/android/nil/MainActivity;->b(Lcom/clov4r/android/nil/MainActivity;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/f;-><init>(Ljava/net/URI;)V

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->a(La/a/a/f;)La/a/a/f;

    iget-object v0, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/MainActivity;I)V

    new-instance v0, Lcom/clov4r/android/nil/ae;

    iget-object v1, p0, Lcom/clov4r/android/nil/cj;->a:Lcom/clov4r/android/nil/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/clov4r/android/nil/ae;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ae;->start()V

    goto :goto_0
.end method
