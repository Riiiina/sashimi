.class public final Lcom/admob/android/ads/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/admob/android/ads/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/admob/android/ads/e;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    iget-object v2, p0, Lcom/admob/android/ads/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught in AdClickThread.run(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
