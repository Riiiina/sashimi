.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;
.super Ljava/lang/Object;
.source "EaseCircularInOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;

    .line 31
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 7
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 44
    float-to-double v0, p1

    float-to-double v2, p2

    mul-double/2addr v2, v5

    div-double/2addr v0, v2

    double-to-float p1, v0

    cmpg-float v0, p1, v4

    if-gez v0, :cond_0

    .line 45
    neg-float v0, p4

    float-to-double v0, v0

    mul-double/2addr v0, v5

    mul-float v2, p1, p1

    sub-float v2, v4, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    sub-float/2addr v2, v4

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 48
    :goto_0
    return v0

    :cond_0
    float-to-double v0, p4

    mul-double/2addr v0, v5

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr p1, v2

    mul-float v2, p1, p1

    sub-float v2, v4, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    add-float/2addr v2, v4

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
