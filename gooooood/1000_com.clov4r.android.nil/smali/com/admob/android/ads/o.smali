.class public final Lcom/admob/android/ads/o;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 7

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v1, v2, [F

    aput v0, v1, v3

    aput p1, v1, v4

    aput v0, v1, v5

    new-array v2, v2, [F

    aput v0, v2, v3

    aput p2, v2, v4

    aput v0, v2, v5

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/o;-><init>([F[FFFFZ)V

    return-void
.end method

.method public constructor <init>([F[FFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/admob/android/ads/o;->a:[F

    iput-object p2, p0, Lcom/admob/android/ads/o;->b:[F

    iput p3, p0, Lcom/admob/android/ads/o;->c:F

    iput p4, p0, Lcom/admob/android/ads/o;->d:F

    iput p5, p0, Lcom/admob/android/ads/o;->e:F

    iput-boolean p6, p0, Lcom/admob/android/ads/o;->f:Z

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/o;->a:[F

    iget-object v1, p0, Lcom/admob/android/ads/o;->b:[F

    new-array v2, v9, [F

    move v3, v8

    :goto_1
    if-ge v3, v9, :cond_2

    aget v4, v0, v3

    aget v5, v1, v3

    aget v6, v0, v3

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/admob/android/ads/o;->c:F

    iget v1, p0, Lcom/admob/android/ads/o;->d:F

    iget-object v3, p0, Lcom/admob/android/ads/o;->g:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v5, p0, Lcom/admob/android/ads/o;->f:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/admob/android/ads/o;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_2
    aget v5, v2, v8

    invoke-virtual {v3, v5}, Landroid/graphics/Camera;->rotateX(F)V

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Camera;->rotateY(F)V

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/admob/android/ads/o;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2
.end method

.method public final initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/o;->g:Landroid/graphics/Camera;

    return-void
.end method
