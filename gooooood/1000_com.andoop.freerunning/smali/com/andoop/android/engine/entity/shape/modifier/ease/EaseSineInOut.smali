.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;
.super Ljava/lang/Object;
.source "EaseSineInOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;
.implements Lcom/andoop/android/engine/consts/MathConstants;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;

    .line 33
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseSineInOut;

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
    .line 46
    neg-float v0, p4

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, p1

    div-float/2addr v1, p2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method
