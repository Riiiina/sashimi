.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;
.super Ljava/lang/Object;
.source "EaseQuartIn.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;

    .line 30
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseQuartIn;

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
    .line 43
    div-float/2addr p1, p2

    mul-float v0, p4, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p3

    return v0
.end method
