.class public Lcom/clov4r/android/nil/entrance/GalleryFlow;
.super Landroid/widget/Gallery;


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    const/16 v0, -0x78

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    const/16 v0, -0x78

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    const/16 v0, -0x78

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private a()I
    .locals 2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v10, v10, v5}, Landroid/graphics/Camera;->translate(FFF)V

    iget v4, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->c:I

    int-to-double v4, v4

    int-to-double v6, v3

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    add-double v3, v4, v6

    double-to-float v3, v3

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    invoke-virtual {v4, v10, v10, v3}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_0
    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    int-to-float v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 v3, v2, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    iget v2, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->d:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->d:I

    if-ne v0, v3, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v4, v4}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget v3, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->d:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    if-le v1, v3, :cond_1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    neg-int v0, v0

    :cond_1
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->b:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/entrance/GalleryFlow;->a()I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/GalleryFlow;->d:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method
