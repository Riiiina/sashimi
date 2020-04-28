.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;
.super Ljava/lang/Object;
.source "EaseQuintOut.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;

    .line 29
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuintOut;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 2
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    div-float v0, p1, p2

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p4

    add-float/2addr v0, p3

    return v0
.end method
