.class public final Lcom/admob/android/ads/p;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:[I

.field private b:[I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/view/View;)V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p3, p0, Lcom/admob/android/ads/p;->c:Landroid/view/View;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/admob/android/ads/p;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/admob/android/ads/p;->b:[I

    iget-object v0, p0, Lcom/admob/android/ads/p;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/admob/android/ads/p;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/admob/android/ads/p;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/admob/android/ads/p;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/admob/android/ads/p;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/admob/android/ads/p;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/admob/android/ads/p;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/admob/android/ads/p;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    aput v1, v0, v5

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v6, [I

    move v1, v5

    :goto_1
    if-ge v1, v6, :cond_2

    iget-object v2, p0, Lcom/admob/android/ads/p;->a:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/admob/android/ads/p;->b:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/admob/android/ads/p;->a:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget v1, v0, v5

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/admob/android/ads/p;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
