.class public Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.source "ParallelModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;
    }
.end annotation


# instance fields
.field private final mDuration:F

.field private mFinishedCached:Z

.field private final mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;


# direct methods
.method public varargs constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 3
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p2, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 35
    array-length v1, p2

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pShapeModifiers must not be empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 41
    invoke-static {p2}, Lcom/andoop/android/engine/entity/shape/modifier/util/ShapeModifierUtils;->getShapeModifierWithLongestDuration([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v0

    .line 42
    .local v0, "shapeModifierWithLongestDuration":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    invoke-interface {v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->getDuration()F

    move-result v1

    iput v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mDuration:F

    .line 43
    new-instance v1, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;)V

    invoke-interface {v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;)V
    .locals 6
    .param p1, "pParallelModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    .prologue
    .line 47
    iget-object v4, p1, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-direct {p0, v4}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 49
    iget-object v1, p1, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 50
    .local v1, "otherShapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v4, v1

    new-array v4, v4, [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    iput-object v4, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 52
    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 53
    .local v3, "shapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 57
    invoke-static {v3}, Lcom/andoop/android/engine/entity/shape/modifier/util/ShapeModifierUtils;->getShapeModifierWithLongestDuration([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v2

    .line 58
    .local v2, "shapeModifierWithLongestDuration":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    invoke-interface {v2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->getDuration()F

    move-result v4

    iput v4, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mDuration:F

    .line 59
    new-instance v4, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;)V

    invoke-interface {v2, v4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 60
    return-void

    .line 54
    .end local v2    # "shapeModifierWithLongestDuration":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    :cond_0
    aget-object v4, v1, v0

    invoke-interface {v4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v4

    aput-object v4, v3, v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 1
    .param p1, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 31
    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinishedCached:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mDuration:F

    return v0
.end method

.method public onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    const/4 v4, 0x0

    .line 82
    iput-boolean v4, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinishedCached:Z

    .line 84
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 85
    .local v1, "shapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 93
    iput-boolean v4, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinishedCached:Z

    .line 94
    :cond_0
    return-void

    .line 86
    :cond_1
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 88
    iget-boolean v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinishedCached:Z

    if-nez v2, :cond_0

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 98
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinished:Z

    .line 100
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 101
    .local v1, "shapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 101
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
