.class public final Lcom/magicwach/rdefense/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arctan(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 10
    int-to-double v0, p0

    neg-int v2, p1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static arctan(Lcom/magicwach/rdefense/Vector;)I
    .locals 2
    .param p0, "v"    # Lcom/magicwach/rdefense/Vector;

    .prologue
    .line 7
    iget v0, p0, Lcom/magicwach/rdefense/Vector;->x:I

    neg-int v0, v0

    iget v1, p0, Lcom/magicwach/rdefense/Vector;->y:I

    neg-int v1, v1

    invoke-static {v0, v1}, Lcom/magicwach/rdefense/Vector;->arctan(II)I

    move-result v0

    return v0
.end method
