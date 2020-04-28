.class public Lcom/andoop/android/engine/entity/shape/AnimatedSprite;
.super Lcom/andoop/android/engine/entity/shape/RectangularShape;
.source "AnimatedSprite.java"

# interfaces
.implements Lcom/andoop/android/engine/consts/TimeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;
    }
.end annotation


# static fields
.field public static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private mAnimationDuration:J

.field private mAnimationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

.field private mAnimationProgress:J

.field private mAnimationRunning:Z

.field private mCurrentTile:I

.field private final mDst:Landroid/graphics/RectF;

.field private mFirstTileIndex:I

.field private mFrameCount:I

.field private mFrameEndsInNanoseconds:[J

.field private mInitialLoopCount:I

.field private mLoopCount:I

.field private final mSrc:[Landroid/graphics/Rect;

.field private final mTexture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTexture"    # Landroid/graphics/Bitmap;
    .param p4, "pRows"    # I
    .param p5, "pCols"    # I

    .prologue
    .line 52
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;III)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/Bitmap;III)V
    .locals 17
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTexture"    # Landroid/graphics/Bitmap;
    .param p4, "pRows"    # I
    .param p5, "pCols"    # I
    .param p6, "pCurrentTile"    # I

    .prologue
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int v11, v11, p5

    int-to-float v11, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int v12, v12, p4

    int-to-float v12, v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v11

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    rem-int v11, v11, p5

    if-nez v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    rem-int v11, v11, p4

    if-eqz v11, :cond_1

    .line 59
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "rows or columns wrong."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 62
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int v10, v11, p5

    .line 63
    .local v10, "tileWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int v9, v11, p4

    .line 65
    .local v9, "tileHeight":I
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mTexture:Landroid/graphics/Bitmap;

    .line 66
    int-to-float v11, v10

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mWidth:F

    .line 67
    int-to-float v11, v9

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mHeight:F

    .line 69
    mul-int v11, p4, p5

    new-array v11, v11, [Landroid/graphics/Rect;

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move v0, v5

    move/from16 v1, p4

    if-lt v0, v1, :cond_2

    .line 77
    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mWidth:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mHeight:F

    move v15, v0

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mDst:Landroid/graphics/RectF;

    .line 78
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    .line 79
    return-void

    .line 73
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    move v8, v7

    .end local v7    # "k":I
    .local v8, "k":I
    :goto_1
    move v0, v6

    move/from16 v1, p5

    if-lt v0, v1, :cond_3

    .line 72
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    .end local v8    # "k":I
    .restart local v7    # "k":I
    goto :goto_0

    .line 74
    .end local v7    # "k":I
    .restart local v8    # "k":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    move-object v11, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k":I
    .restart local v7    # "k":I
    new-instance v12, Landroid/graphics/Rect;

    mul-int v13, v6, v10

    mul-int v14, v5, v9

    add-int/lit8 v15, v6, 0x1

    mul-int/2addr v15, v10

    add-int/lit8 v16, v5, 0x1

    mul-int v16, v16, v9

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v11, v8

    .line 73
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "k":I
    .restart local v8    # "k":I
    goto :goto_1
.end method

.method private calculateCurrentFrameIndex()I
    .locals 7

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    .line 95
    .local v0, "animationProgress":J
    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 96
    .local v3, "frameEnds":[J
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameCount:I

    .line 97
    .local v2, "frameCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 103
    const/4 v5, 0x1

    sub-int v5, v2, v5

    :goto_1
    return v5

    .line 98
    :cond_0
    aget-wide v5, v3, v4

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    move v5, v4

    .line 99
    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;
    .locals 7
    .param p1, "pFirstTile"    # I
    .param p2, "pLastTile"    # I
    .param p3, "pFrameDurations"    # [J
    .param p4, "pLoopCount"    # I
    .param p5, "pAnimationListener"    # Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    .prologue
    const/4 v6, 0x1

    .line 171
    sub-int v4, p2, p1

    if-ge v4, v6, :cond_0

    .line 172
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "An animation needs at least two tiles to animate between."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_0
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 176
    .local v0, "frameCount":I
    array-length v4, p3

    if-eq v4, v0, :cond_1

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "pFrameDurations must have the same length as pFirstTileIndex to pLastTileIndex."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_1
    iput v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameCount:I

    .line 181
    iput-object p5, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    .line 183
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mInitialLoopCount:I

    .line 184
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mLoopCount:I

    .line 185
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFirstTileIndex:I

    .line 188
    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameCount:I

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    array-length v5, v5

    if-le v4, v5, :cond_3

    .line 189
    :cond_2
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameCount:I

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    .line 193
    .local v1, "frameEndsInNanoseconds":[J
    const-wide/32 v4, 0xf4240

    invoke-static {p3, v1, v4, v5}, Lcom/andoop/android/engine/utils/MathUtils;->arraySumInto([J[JJ)V

    .line 195
    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFrameCount:I

    sub-int/2addr v4, v6

    aget-wide v2, v1, v4

    .line 196
    .local v2, "lastFrameEnd":J
    iput-wide v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationDuration:J

    .line 198
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    .line 199
    iput-boolean v6, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationRunning:Z

    .line 201
    return-object p0
.end method

.method public getTile()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    return v0
.end method

.method public nextTile()V
    .locals 3

    .prologue
    .line 117
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 118
    .local v0, "tileIndex":I
    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setTile(I)V

    .line 119
    return-void
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 7
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 149
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mX:F

    .line 150
    .local v0, "x":F
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mY:F

    .line 151
    .local v1, "y":F
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mDst:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 153
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mRotation:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mRotation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 156
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mRotation:F

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mRotationCenterX:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mRotationCenterY:F

    add-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 158
    :cond_1
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 159
    :cond_2
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleX:F

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleY:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleCenterX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mScaleCenterY:F

    add-float/2addr v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mDst:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mDst:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->onManagedDrawCollisionArea(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 8
    .param p1, "pSeconds"    # F

    .prologue
    const/4 v7, -0x1

    .line 123
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onManagedUpdate(F)V

    .line 124
    iget-boolean v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationRunning:Z

    if-eqz v3, :cond_2

    .line 125
    const v3, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v3, p1

    float-to-long v1, v3

    .line 126
    .local v1, "nanoSecondsElapsed":J
    iget-wide v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    .line 128
    iget-wide v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    iget-wide v5, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationDuration:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 129
    iget-wide v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    iget-wide v5, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationDuration:J

    rem-long/2addr v3, v5

    iput-wide v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationProgress:J

    .line 130
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mInitialLoopCount:I

    if-eq v3, v7, :cond_0

    .line 131
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mLoopCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mLoopCount:I

    .line 135
    :cond_0
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mInitialLoopCount:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mLoopCount:I

    if-ltz v3, :cond_3

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->calculateCurrentFrameIndex()I

    move-result v0

    .line 137
    .local v0, "currentFrameIndex":I
    iget v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mFirstTileIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    .line 145
    .end local v0    # "currentFrameIndex":I
    .end local v1    # "nanoSecondsElapsed":J
    :cond_2
    :goto_0
    return-void

    .line 139
    .restart local v1    # "nanoSecondsElapsed":J
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationRunning:Z

    .line 140
    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    invoke-interface {v3, p0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;->onAnimationEnd(Lcom/andoop/android/engine/entity/shape/AnimatedSprite;)V

    goto :goto_0
.end method

.method public setTile(I)V
    .locals 1
    .param p1, "tile"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mSrc:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 108
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mCurrentTile:I

    .line 110
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationRunning:Z

    .line 86
    return-void
.end method

.method public stopAnimation(I)V
    .locals 1
    .param p1, "pTileIndex"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->mAnimationRunning:Z

    .line 90
    invoke-virtual {p0, p1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setTile(I)V

    .line 91
    return-void
.end method
