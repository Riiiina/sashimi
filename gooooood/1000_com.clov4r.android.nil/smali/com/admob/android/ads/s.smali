.class public final Lcom/admob/android/ads/s;
.super Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :cond_1
    return-void
.end method
