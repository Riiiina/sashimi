.class public final Lcom/admob/android/ads/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admob/android/ads/v;->a:Landroid/view/animation/Interpolator;

    long-to-float v0, p2

    long-to-float v1, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/admob/android/ads/v;->b:F

    long-to-float v0, p4

    long-to-float v1, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/admob/android/ads/v;->c:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/admob/android/ads/v;->b:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/admob/android/ads/v;->b:F

    iget v1, p0, Lcom/admob/android/ads/v;->c:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/v;->a:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/admob/android/ads/v;->b:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/admob/android/ads/v;->c:F

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method
