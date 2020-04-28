.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;
.super Ljava/lang/Object;
.source "EaseElasticInOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;
.implements Lcom/andoop/android/engine/consts/MathConstants;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;

    .line 34
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseElasticInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 11
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "p":F
    const/4 v0, 0x0

    .line 50
    .local v0, "a":F
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    move v3, p3

    .line 68
    :goto_0
    return v3

    .line 53
    :cond_0
    float-to-double v3, p1

    float-to-double v5, p2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-float p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 54
    add-float v3, p3, p4

    goto :goto_0

    .line 56
    :cond_1
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 57
    const v3, 0x3ee66667    # 0.45000002f

    mul-float v1, p2, v3

    .line 59
    :cond_2
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    cmpl-float v3, p4, v3

    if-lez v3, :cond_3

    cmpg-float v3, v0, p4

    if-ltz v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    cmpg-float v3, p4, v3

    if-gez v3, :cond_5

    neg-float v3, p4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 60
    :cond_4
    move v0, p4

    .line 61
    const/high16 v3, 0x40800000    # 4.0f

    div-float v2, v1, v3

    .line 65
    .local v2, "s":F
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    .line 66
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr p1, v10

    mul-float/2addr v9, p1

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    mul-float v7, p1, p2

    sub-float/2addr v7, v2

    const v8, 0x40c90fdb

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v3, v5

    float-to-double v5, p3

    add-double/2addr v3, v5

    double-to-float v3, v3

    goto :goto_0

    .line 63
    .end local v2    # "s":F
    :cond_5
    const v3, 0x40c90fdb

    div-float v3, v1, v3

    float-to-double v3, v3

    div-float v5, p4, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .restart local v2    # "s":F
    goto :goto_1

    .line 68
    :cond_6
    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr p1, v8

    mul-float/2addr v7, p1

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    mul-float v5, p1, p2

    sub-float/2addr v5, v2

    const v6, 0x40c90fdb

    mul-float/2addr v5, v6

    div-float/2addr v5, v1

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    float-to-double v5, p4

    add-double/2addr v3, v5

    float-to-double v5, p3

    add-double/2addr v3, v5

    double-to-float v3, v3

    goto/16 :goto_0
.end method
