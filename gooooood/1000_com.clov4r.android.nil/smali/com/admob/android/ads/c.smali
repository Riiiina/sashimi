.class final Lcom/admob/android/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/c;->b:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/admob/android/ads/c;->c:I

    iput-boolean p4, p0, Lcom/admob/android/ads/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->a()Lcom/admob/android/ads/w;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/w;)V

    iget v2, p0, Lcom/admob/android/ads/c;->c:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/admob/android/ads/c;->d:Z

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception placing AdContainer into AdView."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
