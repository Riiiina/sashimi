.class public Lcom/andoop/android/engine/collision/LineCollisionChecker;
.super Lcom/andoop/android/engine/collision/ShapeCollisionChecker;
.source "LineCollisionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/andoop/android/engine/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkLineCollision(FFFFFFFF)Z
    .locals 7
    .param p0, "pX1"    # F
    .param p1, "pY1"    # F
    .param p2, "pX2"    # F
    .param p3, "pY2"    # F
    .param p4, "pX3"    # F
    .param p5, "pY3"    # F
    .param p6, "pX4"    # F
    .param p7, "pY4"    # F

    .prologue
    .line 33
    invoke-static/range {p0 .. p5}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p0

    move v5, p1

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/andoop/android/engine/collision/LineCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method
