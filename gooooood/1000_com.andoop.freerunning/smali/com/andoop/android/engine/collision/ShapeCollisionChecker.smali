.class public Lcom/andoop/android/engine/collision/ShapeCollisionChecker;
.super Lcom/andoop/android/engine/collision/BaseCollisionChecker;
.source "ShapeCollisionChecker.java"


# static fields
.field private static final VERTEX_INDEX_X:I = 0x0

.field private static final VERTEX_INDEX_Y:I = 0x1

.field private static final VERTICES_LOCAL_TO_SCENE_TMP:[F

.field private static final VERTICES_SCENE_TO_LOCAL_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 18
    new-array v0, v1, [F

    sput-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    .line 19
    new-array v0, v1, [F

    sput-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/andoop/android/engine/collision/BaseCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(II[F[F)Z
    .locals 5
    .param p0, "pVerticesALength"    # I
    .param p1, "pVerticesBLength"    # I
    .param p2, "pVerticesA"    # [F
    .param p3, "pVerticesB"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    const/4 v1, 0x4

    sub-int v0, p0, v1

    .local v0, "a":I
    :goto_0
    if-gez v0, :cond_0

    .line 76
    const/4 v1, 0x2

    sub-int v1, p0, v1

    invoke-static {v1, v4, p2, p3, p1}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 86
    :goto_1
    return v1

    .line 71
    :cond_0
    add-int/lit8 v1, v0, 0x2

    invoke-static {v0, v1, p2, p3, p1}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 72
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 81
    :cond_2
    aget v1, p3, v4

    aget v2, p3, v3

    invoke-static {p2, p0, v1, v2}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    aget v1, p2, v4

    aget v2, p2, v3

    invoke-static {p3, p1, v1, v2}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 84
    goto :goto_1

    :cond_4
    move v1, v4

    .line 86
    goto :goto_1
.end method

.method private static checkCollisionSub(II[F[FI)Z
    .locals 11
    .param p0, "pVertexIndexA1"    # I
    .param p1, "pVertexIndexA2"    # I
    .param p2, "pVerticesA"    # [F
    .param p3, "pVerticesB"    # [F
    .param p4, "pVerticesBLength"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 96
    add-int/lit8 v4, p0, 0x0

    aget v0, p2, v4

    .line 97
    .local v0, "vertexA1X":F
    add-int/lit8 v4, p0, 0x1

    aget v1, p2, v4

    .line 98
    .local v1, "vertexA1Y":F
    add-int/lit8 v4, p1, 0x0

    aget v2, p2, v4

    .line 99
    .local v2, "vertexA2X":F
    add-int/lit8 v4, p1, 0x1

    aget v3, p2, v4

    .line 101
    .local v3, "vertexA2Y":F
    const/4 v4, 0x4

    sub-int v8, p4, v4

    .local v8, "b":I
    :goto_0
    if-gez v8, :cond_0

    .line 107
    const/4 v4, 0x2

    sub-int v4, p4, v4

    aget v4, p3, v4

    sub-int v5, p4, v9

    aget v5, p3, v5

    aget v6, p3, v10

    aget v7, p3, v9

    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    .line 110
    :goto_1
    return v4

    .line 102
    :cond_0
    add-int/lit8 v4, v8, 0x0

    aget v4, p3, v4

    add-int/lit8 v5, v8, 0x1

    aget v5, p3, v5

    add-int/lit8 v6, v8, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v6, p3, v6

    add-int/lit8 v7, v8, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, p3, v7

    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v9

    .line 103
    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    :cond_2
    move v4, v10

    .line 110
    goto :goto_1
.end method

.method public static checkContains([FIFF)Z
    .locals 12
    .param p0, "pVertices"    # [F
    .param p1, "pVerticesLength"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 116
    const/4 v7, 0x0

    .line 118
    .local v7, "edgeResultSum":I
    const/4 v0, 0x4

    sub-int v8, p1, v0

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_0

    .line 127
    const/4 v0, 0x2

    sub-int v0, p1, v0

    aget v0, p0, v0

    sub-int v1, p1, v10

    aget v1, p0, v1

    aget v2, p0, v11

    aget v3, p0, v10

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    .line 128
    .local v6, "edgeResult":I
    if-nez v6, :cond_2

    move v0, v10

    .line 136
    :goto_1
    return v0

    .line 119
    .end local v6    # "edgeResult":I
    :cond_0
    aget v0, p0, v8

    add-int/lit8 v1, v8, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, v8, 0x3

    aget v3, p0, v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    .line 120
    .restart local v6    # "edgeResult":I
    if-nez v6, :cond_1

    move v0, v10

    .line 121
    goto :goto_1

    .line 123
    :cond_1
    add-int/2addr v7, v6

    .line 118
    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    .line 131
    :cond_2
    add-int/2addr v7, v6

    .line 134
    div-int/lit8 v9, p1, 0x2

    .line 136
    .local v9, "vertexCount":I
    if-eq v7, v9, :cond_3

    neg-int v0, v9

    if-eq v7, v0, :cond_3

    move v0, v11

    goto :goto_1

    :cond_3
    move v0, v10

    goto :goto_1
.end method

.method public static convertLocalToSceneCoordinates(Lcom/andoop/android/engine/entity/shape/Shape;FF)[F
    .locals 8
    .param p0, "pShape"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 57
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 58
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 60
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    .line 61
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotationCenterX()F

    move-result v2

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotationCenterY()F

    move-result v3

    .line 62
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleY()F

    move-result v5

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleCenterX()F

    move-result v6

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleCenterY()F

    move-result v7

    .line 60
    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/utils/MathUtils;->rotateAndScaleAroundCenter([FFFFFFFF)[F

    .line 64
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    return-object v0
.end method

.method public static convertSceneToLocalCoordinates(Lcom/andoop/android/engine/entity/shape/Shape;FF)[F
    .locals 10
    .param p0, "pShape"    # Lcom/andoop/android/engine/entity/shape/Shape;
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 42
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 43
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 45
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getX()F

    move-result v8

    .line 46
    .local v8, "left":F
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getY()F

    move-result v9

    .line 48
    .local v9, "top":F
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    .line 49
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotationCenterX()F

    move-result v2

    add-float/2addr v2, v8

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getRotationCenterY()F

    move-result v3

    add-float/2addr v3, v9

    .line 50
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleY()F

    move-result v5

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleCenterX()F

    move-result v6

    add-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/Shape;->getScaleCenterY()F

    move-result v7

    add-float/2addr v7, v9

    .line 48
    invoke-static/range {v0 .. v7}, Lcom/andoop/android/engine/utils/MathUtils;->revertRotateAndScaleAroundCenter([FFFFFFFF)[F

    .line 52
    sget-object v0, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    return-object v0
.end method
