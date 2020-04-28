.class final Lcom/admob/android/ads/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/admob/android/ads/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admob/android/ads/an;->a:Ljava/lang/String;

    const/16 v0, 0x140

    iput v0, p0, Lcom/admob/android/ads/an;->b:I

    const/16 v0, 0x127

    iput v0, p0, Lcom/admob/android/ads/an;->c:I

    iput-object p2, p0, Lcom/admob/android/ads/an;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/an;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/an;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admob/android/ads/w;

    move-object v8, v0

    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v1, "window"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager;

    move-object v9, v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    const/4 v5, 0x2

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v4, p0, Lcom/admob/android/ads/an;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/admob/android/ads/an;->d:Ljava/lang/String;

    iget v6, p0, Lcom/admob/android/ads/an;->b:I

    iget v7, p0, Lcom/admob/android/ads/an;->c:I

    move-object v2, v8

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Lcom/admob/android/ads/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v2

    iput-object v2, v8, Lcom/admob/android/ads/w;->a:Landroid/view/View;

    iget-object v2, v8, Lcom/admob/android/ads/w;->a:Landroid/view/View;

    invoke-interface {v9, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v8, Lcom/admob/android/ads/w;->a:Landroid/view/View;

    invoke-virtual {v8, v1}, Lcom/admob/android/ads/w;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "AdMobSDK"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught in Ad$WebViewLoader.run(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
