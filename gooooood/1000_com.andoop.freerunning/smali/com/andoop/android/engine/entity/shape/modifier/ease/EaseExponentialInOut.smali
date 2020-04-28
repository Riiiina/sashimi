.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;
.super Ljava/lang/Object;
.source "EaseExponentialInOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;

    .line 29
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 6
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 42
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    move v0, p3

    .line 51
    :goto_0
    return v0

    .line 45
    :cond_0
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    .line 46
    add-float v0, p3, p4

    goto :goto_0

    .line 48
    :cond_1
    mul-float v0, p2, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_2

    .line 49
    mul-float v0, p4, v1

    float-to-double v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 51
    :cond_2
    mul-float v0, p4, v1

    float-to-double v0, v0

    const/high16 v2, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
