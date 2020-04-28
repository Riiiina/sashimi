.class public Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;
.super Ljava/lang/Object;
.source "EarClippingTriangulation.java"


# instance fields
.field private num:I

.field private trianglePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;",
            ">;"
        }
    .end annotation
.end field

.field private xCoords:[F

.field private yCoords:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clipEarAtPosition(I)V
    .locals 9
    .param p1, "p"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    if-lez p1, :cond_1

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    if-ge p1, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    .line 103
    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    sub-int v4, p1, v6

    aget v3, v3, v4

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    sub-int v5, p1, v6

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v3, p1

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v4, p1

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    :goto_0
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    if-lt v0, v1, :cond_3

    .line 127
    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    .line 128
    return-void

    .line 107
    .end local v0    # "i":I
    :cond_1
    if-nez p1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v4, v6

    aget v3, v3, v4

    .line 109
    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v5, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    if-ne v1, p1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v4, v8

    aget v3, v3, v4

    .line 114
    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v5, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v5, v8

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v4, v6

    aget v3, v3, v4

    .line 116
    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v5, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget-object v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 123
    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private doTriangulation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 137
    :goto_0
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    if-gt v2, v3, :cond_1

    .line 154
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    if-ne v2, v3, :cond_0

    .line 155
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->clipEarAtPosition(I)V

    .line 157
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x0

    .line 144
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    if-lt v0, v2, :cond_2

    .line 151
    :goto_2
    invoke-direct {p0, v1}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->clipEarAtPosition(I)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, v0}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->earAtPoint(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    move v1, v0

    .line 148
    goto :goto_2

    .line 144
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private earAtPoint(I)Z
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v2, v6

    aget v2, v0, v2

    .line 170
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v0, v7

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v6

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v6

    move-object v0, p0

    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isEar(FFFFFF)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v0, v6

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v3

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v2, v3

    aget v2, v0, v2

    .line 173
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v3, v6

    aget v3, v0, v3

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v4, v6

    aget v4, v0, v4

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v7

    .line 174
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v7

    move-object v0, p0

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isEar(FFFFFF)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    sub-int v1, p1, v6

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    sub-int v2, p1, v6

    aget v2, v0, v2

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v0, p1

    .line 178
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v0, p1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    add-int/lit8 v5, p1, 0x1

    aget v5, v0, v5

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    add-int/lit8 v6, p1, 0x1

    aget v6, v0, v6

    move-object v0, p0

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isEar(FFFFFF)Z

    move-result v0

    goto :goto_0
.end method

.method static isClockWise([FI)Z
    .locals 7
    .param p0, "coastline"    # [F
    .param p1, "length"    # I

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    .line 42
    .local v0, "area":D
    const/4 v2, 0x0

    .local v2, "currentNode":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 47
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 43
    :cond_0
    add-int/lit8 v4, v2, 0x2

    rem-int v3, v4, p1

    .line 44
    .local v3, "nextNode":I
    aget v4, p0, v2

    aget v5, p0, v3

    add-float/2addr v4, v5

    .line 45
    add-int/lit8 v5, v3, 0x1

    aget v5, p0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p0, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    .line 42
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 47
    .end local v3    # "nextNode":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isConvex(FFFFFF)Z
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 205
    sub-float v0, p6, p4

    mul-float/2addr v0, p1

    sub-float v1, p2, p6

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    sub-float v1, p4, p2

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConvexPoint(I)Z
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 219
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v6

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v2, v6

    aget v2, v0, v2

    .line 221
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v0, v7

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v6

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v6

    move-object v0, p0

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 222
    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v0, v6

    if-ne p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v1, v3

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v2, v3

    aget v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v3, v6

    aget v3, v0, v3

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v4, v6

    aget v4, v0, v4

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v7

    .line 225
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v7

    move-object v0, p0

    .line 223
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v0

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    sub-int v1, p1, v6

    aget v1, v0, v1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    sub-int v2, p1, v6

    aget v2, v0, v2

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v3, v0, p1

    .line 228
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v4, v0, p1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    add-int/lit8 v5, p1, 0x1

    aget v5, v0, v5

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    add-int/lit8 v6, p1, 0x1

    aget v6, v0, v6

    move-object v0, p0

    .line 227
    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v0

    goto :goto_0
.end method

.method private isEar(FFFFFF)Z
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct/range {p0 .. p6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->pointInsideTriangle(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pointInsideTriangle(FFFFFF)Z
    .locals 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 282
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    if-lt v10, v0, :cond_0

    .line 296
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 283
    :cond_0
    invoke-direct {p0, v10}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvexPoint(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p4

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v0, v0, v10

    cmpl-float v0, v0, p6

    if-eqz v0, :cond_6

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v10

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v7

    .line 288
    .local v7, "convex1":Z
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v10

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v10

    move-object v0, p0

    move v1, p3

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v8

    .line 289
    .local v8, "convex2":Z
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    aget v5, v0, v10

    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    aget v6, v0, v10

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isConvex(FFFFFF)Z

    move-result v9

    .line 291
    .local v9, "convex3":Z
    if-nez v7, :cond_4

    if-nez v8, :cond_4

    if-eqz v9, :cond_5

    :cond_4
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 292
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 282
    .end local v7    # "convex1":Z
    .end local v8    # "convex2":Z
    .end local v9    # "convex3":Z
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getTriangles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTrianglesAsFloatArray()[F
    .locals 6

    .prologue
    .line 313
    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    .local v3, "s":I
    mul-int/lit8 v4, v3, 0x2

    new-array v0, v4, [F

    .line 316
    .local v0, "coords":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 321
    return-object v0

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    .line 318
    .local v2, "p":Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;
    mul-int/lit8 v4, v1, 0x2

    iget v5, v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    aput v5, v0, v4

    .line 319
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v2, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    aput v5, v0, v4

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public init([FI)V
    .locals 6
    .param p1, "polyCoords"    # [F
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 58
    invoke-static {p1, p2}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->isClockWise([FI)Z

    move-result v0

    .line 59
    .local v0, "clockwise":Z
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    .line 63
    const/4 v2, 0x0

    aget v2, p1, v2

    sub-int v3, p2, v4

    aget v3, p1, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 64
    aget v2, p1, v5

    sub-int v3, p2, v5

    aget v3, p1, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 65
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    .line 68
    :cond_0
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    .line 69
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->trianglePoints:Ljava/util/ArrayList;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    if-lt v1, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->doTriangulation()V

    .line 87
    return-void

    .line 75
    :cond_1
    if-eqz v0, :cond_2

    .line 77
    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    mul-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    aput v3, v2, v1

    .line 78
    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->xCoords:[F

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    aput v4, v2, v3

    .line 83
    iget-object v2, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->yCoords:[F

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/EarClippingTriangulation;->num:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v2, v3

    goto :goto_1
.end method
