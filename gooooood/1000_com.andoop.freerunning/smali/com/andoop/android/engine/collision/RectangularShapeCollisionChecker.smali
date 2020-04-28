.class public Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;
.super Lcom/andoop/android/engine/collision/ShapeCollisionChecker;
.source "RectangularShapeCollisionChecker.java"


# static fields
.field private static final RECTANGULARSHAPE_VERTEX_COUNT:I = 0x4

.field private static final VERTEX_INDEX_X:I = 0x0

.field private static final VERTEX_INDEX_Y:I = 0x1

.field private static final VERTICES_COLLISION_TMP_A:[F

.field private static final VERTICES_COLLISION_TMP_B:[F

.field private static final VERTICES_CONTAINS_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 19
    new-array v0, v1, [F

    sput-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    .line 20
    new-array v0, v1, [F

    sput-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    .line 21
    new-array v0, v1, [F

    sput-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(Lcom/andoop/android/engine/entity/shape/RectangularShape;Lcom/andoop/android/engine/entity/shape/RectangularShape;)Z
    .locals 10
    .param p0, "pRectangularShapeA"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;
    .param p1, "pRectangularShapeB"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->isScaled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->isScaled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getCollisionArea()Landroid/graphics/RectF;

    move-result-object v8

    .line 54
    .local v8, "areaA":Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getCollisionArea()Landroid/graphics/RectF;

    move-result-object v9

    .line 56
    .local v9, "areaB":Landroid/graphics/RectF;
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    .line 57
    iget v4, v9, Landroid/graphics/RectF;->left:F

    iget v5, v9, Landroid/graphics/RectF;->top:F

    iget v6, v9, Landroid/graphics/RectF;->right:F

    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    .line 56
    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/collision/BaseCollisionChecker;->checkAxisAlignedRectangleCollision(FFFFFFFF)Z

    move-result v0

    .line 62
    .end local v8    # "areaA":Landroid/graphics/RectF;
    .end local v9    # "areaB":Landroid/graphics/RectF;
    :goto_0
    return v0

    .line 59
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->fillVertices(Lcom/andoop/android/engine/entity/shape/RectangularShape;[F)V

    .line 60
    sget-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->fillVertices(Lcom/andoop/android/engine/entity/shape/RectangularShape;[F)V

    .line 62
    sget-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v2, v2, v0, v1}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkCollision(II[F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkContains(Lcom/andoop/android/engine/entity/shape/RectangularShape;FF)Z
    .locals 2
    .param p0, "pRectangularShape"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 47
    sget-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    invoke-static {p0, v0}, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->fillVertices(Lcom/andoop/android/engine/entity/shape/RectangularShape;[F)V

    .line 48
    sget-object v0, Lcom/andoop/android/engine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method public static fillVertices(Lcom/andoop/android/engine/entity/shape/RectangularShape;[F)V
    .locals 13
    .param p0, "pRectangularShape"    # Lcom/andoop/android/engine/entity/shape/RectangularShape;
    .param p1, "pVertices"    # [F

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getCollisionArea()Landroid/graphics/RectF;

    move-result-object v8

    .line 68
    .local v8, "area":Landroid/graphics/RectF;
    iget v10, v8, Landroid/graphics/RectF;->left:F

    .line 69
    .local v10, "left":F
    iget v12, v8, Landroid/graphics/RectF;->top:F

    .line 70
    .local v12, "top":F
    iget v11, v8, Landroid/graphics/RectF;->right:F

    .line 71
    .local v11, "right":F
    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 73
    .local v9, "bottom":F
    const/4 v0, 0x0

    aput v10, p1, v0

    .line 74
    const/4 v0, 0x1

    aput v12, p1, v0

    .line 76
    const/4 v0, 0x2

    aput v11, p1, v0

    .line 77
    const/4 v0, 0x3

    aput v12, p1, v0

    .line 79
    const/4 v0, 0x4

    aput v11, p1, v0

    .line 80
    const/4 v0, 0x5

    aput v9, p1, v0

    .line 82
    const/4 v0, 0x6

    aput v10, p1, v0

    .line 83
    const/4 v0, 0x7

    aput v9, p1, v0

    .line 86
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getRotationCenterX()F

    move-result v0

    add-float v2, v10, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getRotationCenterY()F

    move-result v0

    add-float v3, v12, v0

    .line 87
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getScaleY()F

    move-result v5

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getScaleCenterX()F

    move-result v0

    add-float v6, v10, v0

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getScaleCenterY()F

    move-result v0

    add-float v7, v12, v0

    move-object v0, p1

    .line 85
    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/utils/MathUtils;->rotateAndScaleAroundCenter([FFFFFFFF)[F

    .line 88
    return-void
.end method
