.class public final Lcom/admob/android/ads/y;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/admob/android/ads/y;->a:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/admob/android/ads/y;->b:Landroid/graphics/PointF;

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/admob/android/ads/y;->c(Landroid/view/View;)Lcom/admob/android/ads/y;

    move-result-object v0

    iget v0, v0, Lcom/admob/android/ads/y;->a:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/admob/android/ads/y;->c(Landroid/view/View;)Lcom/admob/android/ads/y;

    move-result-object v0

    iget-object v0, v0, Lcom/admob/android/ads/y;->b:Landroid/graphics/PointF;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)Lcom/admob/android/ads/y;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/admob/android/ads/y;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/admob/android/ads/y;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/admob/android/ads/y;

    invoke-direct {v0}, Lcom/admob/android/ads/y;-><init>()V

    goto :goto_0
.end method
