.class public Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.source "LoopModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;,
        Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;
    }
.end annotation


# static fields
.field private static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private final mDuration:F

.field private final mInitialLoopCount:I

.field private mLoopCount:I

.field private mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

.field private final mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;


# direct methods
.method public constructor <init>(ILcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 1
    .param p1, "pLoopCount"    # I
    .param p2, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 1
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p2, "pLoopCount"    # I
    .param p3, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 2
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p2, "pLoopCount"    # I
    .param p3, "pLoopModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;
    .param p4, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 47
    iput-object p3, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    .line 48
    iput-object p4, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 49
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mInitialLoopCount:I

    .line 50
    iput p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    .line 51
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mDuration:F

    .line 53
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;)V

    invoke-interface {p4, v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 54
    return-void

    .line 51
    :cond_0
    invoke-interface {p4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->getDuration()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 2
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;)V
    .locals 3
    .param p1, "pLoopModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;

    .prologue
    .line 57
    iget-object v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    iget v1, p1, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mInitialLoopCount:I

    iget-object v2, p1, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;ILcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mDuration:F

    return v0
.end method

.method public getLoopModifierListener()Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    return-object v0
.end method

.method public onHandleLoopFinished(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 3
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    invoke-interface {v0, p0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;->onLoopFinished(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;I)V

    .line 109
    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mInitialLoopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    .line 113
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    if-gez v0, :cond_3

    .line 114
    iput-boolean v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mFinished:Z

    .line 115
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-interface {v0, p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;->onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    goto :goto_0
.end method

.method public onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mFinished:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 91
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mInitialLoopCount:I

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopCount:I

    .line 97
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mShapeModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 98
    return-void
.end method

.method public setLoopModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;)V
    .locals 0
    .param p1, "pLoopModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->mLoopModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$ILoopModifierListener;

    .line 75
    return-void
.end method
