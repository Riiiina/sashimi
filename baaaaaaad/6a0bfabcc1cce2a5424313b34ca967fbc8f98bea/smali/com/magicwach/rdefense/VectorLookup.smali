.class public final Lcom/magicwach/rdefense/VectorLookup;
.super Ljava/lang/Object;
.source "VectorLookup.java"


# static fields
.field private static final BASE_SPEED:I = 0x400

.field private static final BASE_SPEED_SHIFT:I = 0xa

.field private static final GRID_SHIFT:I = 0x4

.field private static final GRID_SIZE:I = 0x10

.field private static gridx:[I

.field private static gridy:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 10

    .prologue
    const/16 v6, 0x100

    const/16 v9, 0x10

    const/high16 v8, 0x44800000    # 1024.0f

    .line 4
    new-array v5, v6, [I

    sput-object v5, Lcom/magicwach/rdefense/VectorLookup;->gridx:[I

    .line 5
    new-array v5, v6, [I

    sput-object v5, Lcom/magicwach/rdefense/VectorLookup;->gridy:[I

    .line 6
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 7
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v9, :cond_0

    .line 8
    int-to-float v1, v3

    .line 9
    .local v1, "vect_x":F
    int-to-float v2, v4

    .line 10
    .local v2, "vect_y":F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 11
    .local v0, "length":F
    div-float/2addr v1, v0

    .line 12
    div-float/2addr v2, v0

    .line 13
    sget-object v5, Lcom/magicwach/rdefense/VectorLookup;->gridx:[I

    shl-int/lit8 v6, v4, 0x4

    or-int/2addr v6, v3

    mul-float v7, v1, v8

    float-to-int v7, v7

    aput v7, v5, v6

    .line 14
    sget-object v5, Lcom/magicwach/rdefense/VectorLookup;->gridy:[I

    shl-int/lit8 v6, v4, 0x4

    or-int/2addr v6, v3

    mul-float v7, v2, v8

    float-to-int v7, v7

    aput v7, v5, v6

    .line 7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    .end local v1    # "vect_x":F
    .end local v2    # "vect_y":F
    .end local v0    # "length":F
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    .end local v3    # "x":I
    :cond_1
    return-void
.end method

.method public static scaleVector(Lcom/magicwach/rdefense/Vector;I)V
    .locals 6
    .param p0, "v"    # Lcom/magicwach/rdefense/Vector;
    .param p1, "speed"    # I

    .prologue
    const/16 v4, 0x10

    .line 19
    const/4 v1, 0x1

    .line 20
    .local v1, "x_direction":I
    const/4 v3, 0x1

    .line 21
    .local v3, "y_direction":I
    iget v0, p0, Lcom/magicwach/rdefense/Vector;->x:I

    .line 22
    .local v0, "x":I
    iget v2, p0, Lcom/magicwach/rdefense/Vector;->y:I

    .line 23
    .local v2, "y":I
    if-gez v0, :cond_0

    .line 24
    neg-int v0, v0

    .line 25
    const/4 v1, -0x1

    .line 27
    :cond_0
    if-gez v2, :cond_1

    .line 28
    neg-int v2, v2

    .line 29
    const/4 v3, -0x1

    .line 31
    :cond_1
    :goto_0
    if-ge v0, v4, :cond_2

    if-lt v2, v4, :cond_3

    .line 32
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    .line 33
    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_3
    sget-object v4, Lcom/magicwach/rdefense/VectorLookup;->gridx:[I

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v0

    aget v4, v4, v5

    mul-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0xa

    mul-int/2addr v4, v1

    iput v4, p0, Lcom/magicwach/rdefense/Vector;->x:I

    .line 36
    sget-object v4, Lcom/magicwach/rdefense/VectorLookup;->gridy:[I

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v0

    aget v4, v4, v5

    mul-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0xa

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/magicwach/rdefense/Vector;->y:I

    .line 37
    return-void
.end method
