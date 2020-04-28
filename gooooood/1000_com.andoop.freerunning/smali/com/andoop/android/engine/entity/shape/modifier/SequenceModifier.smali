.class public Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.source "SequenceModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;,
        Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;
    }
.end annotation


# instance fields
.field private mCurrentSubSequenceShapeModifier:I

.field private final mDuration:F

.field private mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

.field private final mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;


# direct methods
.method public varargs constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 3
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p2, "pSubSequenceModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;
    .param p3, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 40
    array-length v0, p3

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pShapeModifiers must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 45
    iput-object p3, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 47
    invoke-static {p3}, Lcom/andoop/android/engine/entity/shape/modifier/util/ShapeModifierUtils;->getSequenceDurationOfShapeModifier([Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mDuration:F

    .line 49
    const/4 v0, 0x0

    aget-object v0, p3, v0

    new-instance v1, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;)V

    invoke-interface {v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 50
    return-void
.end method

.method public varargs constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V
    .locals 1
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p2, "pShapeModifiers"    # [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;)V
    .locals 6
    .param p1, "pSequenceModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    .prologue
    .line 53
    iget-object v3, p1, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-direct {p0, v3}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 54
    iget-object v3, p1, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    iput-object v3, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 56
    iget v3, p1, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mDuration:F

    iput v3, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mDuration:F

    .line 58
    iget-object v1, p1, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 59
    .local v1, "otherShapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v3, v1

    new-array v3, v3, [Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    iput-object v3, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 61
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 62
    .local v2, "shapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 66
    const/4 v3, 0x0

    aget-object v3, v2, v3

    new-instance v4, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;)V

    invoke-interface {v3, v4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 67
    return-void

    .line 63
    :cond_0
    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v3

    aput-object v3, v2, v0

    .line 62
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 32
    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->onHandleModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    return-void
.end method

.method private onHandleModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 3
    .param p1, "pInternalModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;
    .param p2, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p3, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 118
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    .line 120
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    aget-object v0, v1, v2

    .line 122
    .local v0, "nextSubSequenceModifier":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    invoke-interface {v0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 124
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    invoke-interface {v1, p2, p3, v2}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;I)V

    .line 134
    .end local v0    # "nextSubSequenceModifier":Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mFinished:Z

    .line 130
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-interface {v1, p0, p3}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;->onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mDuration:F

    return v0
.end method

.method public getSubSequenceModiferListener()Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    return-object v0
.end method

.method public onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mFinished:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 100
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 104
    iput v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mCurrentSubSequenceShapeModifier:I

    .line 105
    iput-boolean v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mFinished:Z

    .line 107
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceShapeModifiers:[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 108
    .local v1, "shapeModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 111
    return-void

    .line 109
    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setSubSequenceModiferListener(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;)V
    .locals 0
    .param p1, "pSubSequenceModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->mSubSequenceModiferListener:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 84
    return-void
.end method
