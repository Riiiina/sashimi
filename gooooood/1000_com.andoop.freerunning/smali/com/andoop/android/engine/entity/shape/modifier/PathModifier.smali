.class public Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;
    }
.end annotation


# instance fields
.field private final mPath:Lcom/andoop/android/engine/utils/Path;

.field private mPathModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

.field private final mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;


# direct methods
.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;)V
    .locals 2
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;

    .prologue
    .line 32
    const/4 v0, 0x0

    sget-object v1, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;
    .param p3, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 40
    const/4 v4, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;
    .param p3, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p4, "pPathModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 20
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;
    .param p3, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p4, "pPathModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;
    .param p5, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>()V

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/andoop/android/engine/utils/Path;->getSize()I

    move-result v18

    .line 54
    .local v18, "pathSize":I
    const/4 v4, 0x2

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Path needs at least 2 waypoints!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPath:Lcom/andoop/android/engine/utils/Path;

    .line 59
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .line 60
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPathModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    .line 62
    const/4 v4, 0x1

    sub-int v4, v18, v4

    move v0, v4

    new-array v0, v0, [Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;

    move-object/from16 v17, v0

    .line 64
    .local v17, "moveModifiers":[Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;
    invoke-virtual/range {p2 .. p2}, Lcom/andoop/android/engine/utils/Path;->getCoordinatesX()[F

    move-result-object v13

    .line 65
    .local v13, "coordinatesX":[F
    invoke-virtual/range {p2 .. p2}, Lcom/andoop/android/engine/utils/Path;->getCoordinatesY()[F

    move-result-object v14

    .line 67
    .local v14, "coordinatesY":[F
    invoke-virtual/range {p2 .. p2}, Lcom/andoop/android/engine/utils/Path;->getLength()F

    move-result v4

    div-float v19, v4, p1

    .line 69
    .local v19, "velocity":F
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .line 70
    .local v16, "modifierCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 93
    new-instance v4, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    .line 94
    new-instance v5, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;I)V

    .line 105
    new-instance v6, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)V

    .line 113
    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;[Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 93
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    .line 115
    return-void

    .line 71
    :cond_1
    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/utils/Path;->getSegmentLength(I)F

    move-result v4

    div-float v6, v4, v19

    .line 73
    .local v6, "duration":F
    if-nez v15, :cond_2

    .line 76
    new-instance v4, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;

    aget v7, v13, v15

    add-int/lit8 v5, v15, 0x1

    aget v8, v13, v5

    aget v9, v14, v15

    add-int/lit8 v5, v15, 0x1

    aget v10, v14, v5

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    aput-object v4, v17, v15

    .line 70
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 86
    :cond_2
    new-instance v5, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;

    aget v7, v13, v15

    add-int/lit8 v4, v15, 0x1

    aget v8, v13, v4

    aget v9, v14, v15

    add-int/lit8 v4, v15, 0x1

    aget v10, v14, v4

    const/4 v11, 0x0

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    aput-object v5, v17, v15

    goto :goto_1
.end method

.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;
    .param p3, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p4, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 44
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "pPath"    # Lcom/andoop/android/engine/utils/Path;
    .param p3, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)V
    .locals 1
    .param p1, "pPathModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>()V

    .line 118
    iget-object v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPath:Lcom/andoop/android/engine/utils/Path;

    invoke-virtual {v0}, Lcom/andoop/android/engine/utils/Path;->clone()Lcom/andoop/android/engine/utils/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPath:Lcom/andoop/android/engine/utils/Path;

    .line 119
    iget-object v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    .line 120
    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPathModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->getDuration()F

    move-result v0

    return v0
.end method

.method public getPath()Lcom/andoop/android/engine/utils/Path;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPath:Lcom/andoop/android/engine/utils/Path;

    return-object v0
.end method

.method public getPathModifierListener()Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPathModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V

    .line 165
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mSequenceModifier:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->reset()V

    .line 160
    return-void
.end method

.method public setPathModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;)V
    .locals 0
    .param p1, "pPathModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mPathModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    .line 155
    return-void
.end method
