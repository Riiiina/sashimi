.class public Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;
.super Ljava/lang/Object;
.source "EaseBounceIn.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;

    invoke-direct {v0}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;

    .line 30
    :cond_0
    sget-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;->INSTANCE:Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceIn;

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
    .line 43
    invoke-static {}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceOut;->getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceOut;

    move-result-object v0

    sub-float v1, p2, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseBounceOut;->getPercentageDone(FFFF)F

    move-result v0

    sub-float v0, p4, v0

    add-float/2addr v0, p3

    return v0
.end method
