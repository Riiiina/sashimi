.class final Lcom/admob/android/ads/t;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/t;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/AdView;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Lcom/admob/android/ads/k;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v1, p0}, Lcom/admob/android/ads/k;-><init>(Lcom/admob/android/ads/w;Landroid/content/Context;Lcom/admob/android/ads/AdView;)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/admob/android/ads/k;->b()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v8, v0

    int-to-float v0, v8

    const/high16 v2, 0x439b0000    # 310.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Ignoring request because we need to have a minimum width of 320 device independent pixels to show an ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {p0, v9}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    invoke-static {p0, v10}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->d(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/ai;

    move-result-object v0

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->e(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->f(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->c()I

    move-result v6

    invoke-static/range {v0 .. v8}, Lcom/admob/android/ads/af;->a(Lcom/admob/android/ads/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/admob/android/ads/k;I)Lcom/admob/android/ads/w;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception requesting a fresh ad."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v9}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    invoke-static {p0, v10}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p0, v9}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    invoke-static {p0, v10}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    throw v0
.end method
