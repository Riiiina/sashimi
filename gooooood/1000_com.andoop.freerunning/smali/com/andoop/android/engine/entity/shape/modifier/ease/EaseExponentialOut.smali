.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;
.super Ljava/lang/Object;
.source "EaseExponentialOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;

    .line 29
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseExponentialOut;

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
    .line 42
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    add-float v0, p3, p4

    float-to-double v0, v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    float-to-double v0, p4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, -0x3ee00000    # -10.0f

    mul-float/2addr v4, p1

    div-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    goto :goto_0
.end method
