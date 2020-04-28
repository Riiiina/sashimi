.class public Lcom/andoop/android/engine/entity/shape/Line;
.super Lcom/andoop/android/engine/entity/shape/Shape;
.source "Line.java"


# instance fields
.field private mHeight:F

.field private mWidth:F

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 2
    .param p1, "pX0"    # F
    .param p2, "pY0"    # F
    .param p3, "pX1"    # F
    .param p4, "pY1"    # F
    .param p5, "pWidth"    # F
    .param p6, "pColor"    # I

    .prologue
    .line 28
    cmpl-float v0, p3, p1

    if-lez v0, :cond_0

    move v0, p1

    :goto_0
    cmpl-float v1, p4, p2

    if-lez v1, :cond_1

    move v1, p2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;-><init>(FF)V

    .line 30
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/Line;->mX0:F

    .line 31
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/Line;->mY0:F

    .line 32
    iput p3, p0, Lcom/andoop/android/engine/entity/shape/Line;->mX1:F

    .line 33
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/Line;->mY1:F

    .line 35
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mX:F

    sub-float v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mWidth:F

    .line 36
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mY:F

    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mHeight:F

    .line 38
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    return-void

    :cond_0
    move v0, p3

    .line 28
    goto :goto_0

    :cond_1
    move v1, p4

    goto :goto_1
.end method


# virtual methods
.method public collidesWith(Lcom/andoop/android/engine/entity/shape/IShape;)Z
    .locals 1
    .param p1, "pOtherShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mHeight:F

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mWidth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/Line;->mWidth:F

    return v0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/Line;->mX0:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/Line;->mY0:F

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/Line;->mX1:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/Line;->mY1:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/Line;->mShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 78
    return-void
.end method
