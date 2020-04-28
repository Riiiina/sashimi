.class public Lcom/andoop/android/engine/utils/ShapeUtil;
.super Ljava/lang/Object;
.source "ShapeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static horizontalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 2
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "x"    # F

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 43
    return-void
.end method

.method public static horizontalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 3
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->horizontalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 55
    return-void
.end method

.method public static horizontalLeftAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 1
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "x"    # F

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getY()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 35
    return-void
.end method

.method public static horizontalLeftAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 1
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v0

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->horizontalLeftAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 47
    return-void
.end method

.method public static horizontalRightAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 2
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "x"    # F

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getWidth()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 39
    return-void
.end method

.method public static horizontalRightAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 2
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->horizontalRightAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 51
    return-void
.end method

.method public static verticalBottomAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 2
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "y"    # F

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getHeight()F

    move-result v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 59
    return-void
.end method

.method public static verticalBottomAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 2
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->verticalBottomAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 71
    return-void
.end method

.method public static verticalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 3
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "y"    # F

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 63
    return-void
.end method

.method public static verticalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 3
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->verticalCenterAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 75
    return-void
.end method

.method public static verticalTopAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V
    .locals 1
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "y"    # F

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getX()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/andoop/android/engine/entity/shape/Shape;->setPosition(FF)V

    .line 67
    return-void
.end method

.method public static verticalTopAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)V
    .locals 1
    .param p0, "sprite"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "alignToSprite"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v0

    invoke-static {p0, v0}, Lcom/andoop/android/engine/utils/ShapeUtil;->verticalTopAlignTo(Lcom/andoop/android/engine/entity/shape/Shape;F)V

    .line 79
    return-void
.end method
