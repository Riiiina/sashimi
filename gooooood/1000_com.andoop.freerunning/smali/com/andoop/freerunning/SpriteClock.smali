.class public Lcom/andoop/freerunning/SpriteClock;
.super Lcom/andoop/android/engine/entity/shape/Sprite;
.source "SpriteClock.java"


# instance fields
.field private final mBoard1:Landroid/graphics/Bitmap;

.field private final mBoard2:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mClockL:I

.field private final mClockX:F

.field private final mClockY:F

.field private final mDst:Landroid/graphics/Bitmap;

.field private final mImage:Landroid/graphics/Bitmap;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPin1:Landroid/graphics/Bitmap;

.field private final mPin2:Landroid/graphics/Bitmap;

.field private mSweep:I


# direct methods
.method public constructor <init>(FFLandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTexture"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    .line 31
    iput p1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    .line 32
    iput p2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    .line 33
    const/16 v0, 0x24

    iput v0, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    .line 35
    iput-object p3, p0, Lcom/andoop/freerunning/SpriteClock;->mImage:Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    invoke-static {v0, v4, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mBoard1:Landroid/graphics/Bitmap;

    .line 37
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mBoard2:Landroid/graphics/Bitmap;

    .line 38
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPin1:Landroid/graphics/Bitmap;

    .line 39
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPin2:Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    iget v0, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mDst:Landroid/graphics/Bitmap;

    .line 43
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/andoop/freerunning/SpriteClock;->mDst:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mCanvas:Landroid/graphics/Canvas;

    .line 44
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 60
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mSweep:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mDst:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    iget-object v3, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mBoard1:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    iget-object v3, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    iget v0, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    iget v4, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    .line 64
    const/16 v6, 0x1f

    move-object v0, p1

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 69
    .local v7, "sc":I
    iget v0, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mDst:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mBoard2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 75
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPin1:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    iget-object v3, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 78
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mSweep:I

    int-to-float v1, v1

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/andoop/freerunning/SpriteClock;->mClockL:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 79
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/andoop/freerunning/SpriteClock;->mClockX:F

    iget v2, p0, Lcom/andoop/freerunning/SpriteClock;->mClockY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mPin2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/andoop/freerunning/SpriteClock;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/andoop/freerunning/SpriteClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0}, Lcom/andoop/android/engine/entity/shape/Sprite;->reset()V

    .line 54
    iput v1, p0, Lcom/andoop/freerunning/SpriteClock;->mSweep:I

    .line 55
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteClock;->mDst:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 56
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 47
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/andoop/freerunning/SpriteClock;->mSweep:I

    .line 48
    return-void
.end method
