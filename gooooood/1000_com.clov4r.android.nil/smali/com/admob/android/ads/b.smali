.class final Lcom/admob/android/ads/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/b;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/high16 v2, 0x40000000    # 2.0f

    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admob/android/ads/AdView;

    move-object v8, v0

    iget-object v1, p0, Lcom/admob/android/ads/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admob/android/ads/k;

    move-object v9, v0

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    invoke-static {v8}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v10

    if-eqz v10, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V

    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v2

    const v1, -0x41333333    # -0.4f

    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v1, v2

    new-instance v1, Lcom/admob/android/ads/o;

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/admob/android/ads/o;-><init>(FFFFFZ)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Lcom/admob/android/ads/o;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/o;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/o;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/admob/android/ads/as;

    invoke-direct {v2, p0, v10, v8, v9}, Lcom/admob/android/ads/as;-><init>(Lcom/admob/android/ads/b;Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/o;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v1}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "AdMobSDK"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught in SwapViews.run(), "

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
