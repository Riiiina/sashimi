.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;
.super Ljava/lang/Object;
.source "EaseQuadInOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;

    .line 29
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuadInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 3
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    mul-float v0, p2, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 43
    mul-float v0, p4, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p3

    .line 45
    :goto_0
    return v0

    :cond_0
    neg-float v0, p4

    mul-float/2addr v0, v1

    sub-float/2addr p1, v2

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    goto :goto_0
.end method
