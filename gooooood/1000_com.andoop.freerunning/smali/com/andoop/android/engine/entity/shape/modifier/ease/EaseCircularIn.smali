.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;
.super Ljava/lang/Object;
.source "EaseCircularIn.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;

    .line 31
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseCircularIn;

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

    .line 44
    neg-float v0, p4

    div-float/2addr p1, p2

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method
