.class Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;
.super Ljava/lang/Object;
.source "ImmutablePoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field private other:Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    .line 66
    iput p2, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    .line 67
    invoke-direct {p0}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->hashCode:I

    .line 68
    return-void
.end method

.method private calculateHashCode()I
    .locals 4

    .prologue
    .line 117
    const/16 v0, 0x1f

    .line 118
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 119
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 120
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 121
    return v1
.end method

.method static substract(Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;)Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;
    .locals 4
    .param p0, "minuend"    # Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;
    .param p1, "subtrahend"    # Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    .prologue
    .line 33
    new-instance v0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    iget v2, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    iget v3, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;)I
    .locals 4
    .param p1, "point"    # Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 72
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    iget v1, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    iget v1, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    iget v1, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    move v0, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    iget v1, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    move v0, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    invoke-virtual {p0, p1}, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->compareTo(Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 97
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 88
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    if-nez v0, :cond_1

    move v0, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    .end local p1    # "obj":Ljava/lang/Object;
    iput-object p1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->other:Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    .line 92
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->other:Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget v1, v1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    move v0, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    iget-object v1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->other:Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;

    iget v1, v1, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v2

    .line 95
    goto :goto_0

    :cond_3
    move v0, v3

    .line 97
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/andoop/android/engine/collision/triangulation/ImmutablePoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
