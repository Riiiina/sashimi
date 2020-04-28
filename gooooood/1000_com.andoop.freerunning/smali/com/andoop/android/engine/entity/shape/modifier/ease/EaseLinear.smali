.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;
.super Ljava/lang/Object;
.source "EaseLinear.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;

    .line 29
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;

    return-object v0
.end method


# virtual methods
.method public getPercentageDone(FFFF)F
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pDuration"    # F
    .param p3, "pMinValue"    # F
    .param p4, "pMaxValue"    # F

    .prologue
    .line 42
    mul-float v0, p4, p1

    div-float/2addr v0, p2

    add-float/2addr v0, p3

    return v0
.end method
