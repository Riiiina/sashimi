.class public Lcom/andoop/android/engine/entity/shape/modifier/util/ShapeModifierUtils;
.super Ljava/lang/Object;
.source "ShapeModifierUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSequenceDurationOfShapeModifier([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)F
    .locals 4
    .param p0, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 50
    const/4 v0, 0x1

    .line 52
    .local v0, "duration":F
    array-length v2, p0

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 56
    return v0

    .line 53
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->getDuration()F

    move-result v2

    add-float/2addr v0, v2

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getShapeModifierWithLongestDuration([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 6
    .param p0, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, "out":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    const/4 v2, 0x1

    .line 38
    .local v2, "longestDuration":F
    array-length v4, p0

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 46
    return-object v3

    .line 39
    :cond_0
    aget-object v4, p0, v1

    invoke-interface {v4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->getDuration()F

    move-result v0

    .line 40
    .local v0, "duration":F
    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    .line 41
    move v2, v0

    .line 42
    aget-object v3, p0, v1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
