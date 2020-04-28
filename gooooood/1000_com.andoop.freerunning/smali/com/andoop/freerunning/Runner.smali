.class public Lcom/andoop/freerunning/Runner;
.super Ljava/lang/Object;
.source "Runner.java"


# static fields
.field private static final BACK_INTERVAL:I = 0x1e

.field private static final BASE_X:F = 100.0f

.field private static final MAX_AVOID_COUNTER:I = 0x1e

.field private static final MAX_LAST_TIMER:F = 50.0f

.field public static final ST_AVATAR:I = 0x6

.field public static final ST_BACKWARD:I = 0x4

.field public static final ST_JUMP:I = 0x2

.field public static final ST_ROLL:I = 0x3

.field public static final ST_RUN:I = 0x1


# instance fields
.field private final animationAvatarListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

.field private final animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

.field private final animationShiledListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

.field private final avatarDurations:[J

.field private final backwardDurations:[J

.field private isStateChange:Z

.field private final jumpDurations:[J

.field private final mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private mAvoidCounter:I

.field private mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

.field private final mGame:Lcom/andoop/freerunning/Game;

.field private mIsShieldShowing:Z

.field private mLastTimer:F

.field private mRunnerX:F

.field private final mRunnerY:F

.field private final mScene:Lcom/andoop/freerunning/GameScene;

.field private mState:I

.field private final rollDurations:[J

.field private final runDurations:[J

.field private final shieldDurations:[J


# direct methods
.method public constructor <init>(FLcom/andoop/freerunning/Game;Lcom/andoop/freerunning/GameScene;)V
    .locals 31
    .param p1, "pY"    # F
    .param p2, "pGame"    # Lcom/andoop/freerunning/Game;
    .param p3, "pScene"    # Lcom/andoop/freerunning/GameScene;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mGame:Lcom/andoop/freerunning/Game;

    .line 54
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    .line 56
    const/high16 v2, 0x42c80000    # 100.0f

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    .line 57
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mGame:Lcom/andoop/freerunning/Game;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v28

    .line 60
    .local v28, "asset":Landroid/content/res/AssetManager;
    const-string v2, "gfx/run.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 61
    .local v5, "mBitmapRun":Landroid/graphics/Bitmap;
    const-string v2, "gfx/jump.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 62
    .local v9, "mBitmapJump":Landroid/graphics/Bitmap;
    const-string v2, "gfx/forward.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 63
    .local v13, "mBitmapForward":Landroid/graphics/Bitmap;
    const-string v2, "gfx/backward.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 64
    .local v17, "mBitmapBackward":Landroid/graphics/Bitmap;
    const-string v2, "gfx/shield.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 65
    .local v21, "mBitmapShield":Landroid/graphics/Bitmap;
    const-string v2, "gfx/avatar.png"

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 67
    .local v30, "mBitmapAvatar":Landroid/graphics/Bitmap;
    const/16 v29, 0x28

    .line 68
    .local v29, "duration":I
    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->runDurations:[J

    .line 69
    new-instance v2, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    move v4, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-direct/range {v2 .. v7}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 71
    const/16 v2, 0xc

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->jumpDurations:[J

    .line 72
    new-instance v6, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    move v2, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sub-float v8, v2, v3

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-direct/range {v6 .. v11}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 75
    const/16 v2, 0xc

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->rollDurations:[J

    .line 76
    new-instance v10, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    move v2, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-direct/range {v10 .. v15}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 79
    const/16 v2, 0xb

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->backwardDurations:[J

    .line 80
    new-instance v14, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    move v2, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v16, v2, v3

    const/16 v18, 0x1

    const/16 v19, 0xb

    invoke-direct/range {v14 .. v19}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 83
    new-instance v2, Lcom/andoop/freerunning/Runner$1;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/andoop/freerunning/Runner$1;-><init>(Lcom/andoop/freerunning/Runner;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    .line 95
    new-instance v2, Lcom/andoop/freerunning/Runner$2;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/andoop/freerunning/Runner$2;-><init>(Lcom/andoop/freerunning/Runner;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->animationShiledListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    .line 103
    new-instance v2, Lcom/andoop/freerunning/Runner$3;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/andoop/freerunning/Runner$3;-><init>(Lcom/andoop/freerunning/Runner;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->animationAvatarListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    .line 111
    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->shieldDurations:[J

    .line 112
    new-instance v18, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x6

    invoke-direct/range {v18 .. v23}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->shieldDurations:[J

    move-object/from16 v25, v0

    const/16 v26, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->animationShiledListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 116
    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_5

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->avatarDurations:[J

    .line 117
    new-instance v22, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    move v2, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v24, v2, v3

    const/16 v26, 0x1

    const/16 v27, 0x8

    move-object/from16 v25, v30

    invoke-direct/range {v22 .. v27}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 126
    return-void

    .line 68
    :array_0
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 71
    :array_1
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 75
    :array_2
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 79
    :array_3
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 111
    :array_4
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    .line 116
    :array_5
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data
.end method

.method static synthetic access$0(Lcom/andoop/freerunning/Runner;)Lcom/andoop/freerunning/GameScene;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    return-object v0
.end method

.method static synthetic access$1(Lcom/andoop/freerunning/Runner;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mState:I

    return v0
.end method

.method static synthetic access$2(Lcom/andoop/freerunning/Runner;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    return-object v0
.end method

.method static synthetic access$3(Lcom/andoop/freerunning/Runner;)[J
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->avatarDurations:[J

    return-object v0
.end method

.method static synthetic access$4(Lcom/andoop/freerunning/Runner;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->animationAvatarListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/andoop/freerunning/Runner;F)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    return-void
.end method

.method static synthetic access$6(Lcom/andoop/freerunning/Runner;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    return-void
.end method

.method private resetPosition()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    iget v2, p0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPosition(FF)V

    .line 162
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    iget v2, p0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPosition(FF)V

    .line 163
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    iget v2, p0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPosition(FF)V

    .line 164
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    iget v2, p0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPosition(FF)V

    .line 165
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    iget v2, p0, Lcom/andoop/freerunning/Runner;->mRunnerY:F

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPosition(FF)V

    .line 166
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v1, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPositionCenter(FF)V

    .line 167
    return-void
.end method


# virtual methods
.method public getProgressAvatar()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getProgressShield()F
    .locals 3

    .prologue
    .line 254
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getX()F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getY()F

    move-result v0

    return v0
.end method

.method public hideShield()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lcom/andoop/freerunning/Runner;->mIsShieldShowing:Z

    .line 240
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 241
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->stop()V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/Runner;->toState(I)V

    .line 243
    return-void
.end method

.method public hitWall()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mGame:Lcom/andoop/freerunning/Game;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/andoop/freerunning/Game;->vibrate(J)V

    .line 172
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateBackward:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 173
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->backwardDurations:[J

    iget-object v5, p0, Lcom/andoop/freerunning/Runner;->animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 175
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    .line 176
    invoke-direct {p0}, Lcom/andoop/freerunning/Runner;->resetPosition()V

    .line 177
    return-void
.end method

.method public isOver()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 250
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mState:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 8
    .param p1, "pSeconds"    # F

    .prologue
    const/16 v7, 0xb

    const/4 v2, 0x7

    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 180
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    .line 181
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getCenterX()F

    move-result v3

    iget-object v4, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v4}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->getCenterY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setPositionCenter(FF)V

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/andoop/freerunning/Runner;->isStateChange:Z

    if-eqz v0, :cond_1

    .line 185
    iput-boolean v1, p0, Lcom/andoop/freerunning/Runner;->isStateChange:Z

    .line 186
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->stopAnimation()V

    .line 187
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 188
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 223
    :cond_1
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mState:I

    if-eq v0, v6, :cond_2

    iget-boolean v0, p0, Lcom/andoop/freerunning/Runner;->mIsShieldShowing:Z

    if-nez v0, :cond_2

    .line 224
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/andoop/freerunning/Runner;->showShield()V

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 191
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->runDurations:[J

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateJump:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 195
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    .line 196
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->jumpDurations:[J

    iget-object v5, p0, Lcom/andoop/freerunning/Runner;->animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    move v2, v7

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRoll:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 200
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    .line 201
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->rollDurations:[J

    iget-object v5, p0, Lcom/andoop/freerunning/Runner;->animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    move v2, v7

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    goto :goto_0

    .line 204
    :pswitch_4
    iget-boolean v0, p0, Lcom/andoop/freerunning/Runner;->mIsShieldShowing:Z

    if-eqz v0, :cond_3

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    .line 206
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->hitShield()V

    .line 207
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->resetClock()V

    .line 208
    invoke-virtual {p0}, Lcom/andoop/freerunning/Runner;->hideShield()V

    goto :goto_0

    .line 210
    :cond_3
    iput v1, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    .line 211
    invoke-virtual {p0}, Lcom/andoop/freerunning/Runner;->hitWall()V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->scaleWallSpeed()V

    .line 216
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateAvatar:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 217
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->avatarDurations:[J

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/andoop/freerunning/Runner;->animationListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    goto/16 :goto_0

    .line 226
    :cond_4
    iget v0, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 227
    invoke-virtual {p0, v6}, Lcom/andoop/freerunning/Runner;->toState(I)V

    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mRunnerX:F

    .line 144
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateRun:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iput-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 148
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mCurrentAnimate:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 150
    invoke-direct {p0}, Lcom/andoop/freerunning/Runner;->resetPosition()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/Runner;->mLastTimer:F

    .line 153
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->resetClock()V

    .line 154
    iput v1, p0, Lcom/andoop/freerunning/Runner;->mAvoidCounter:I

    .line 156
    invoke-virtual {p0, v2}, Lcom/andoop/freerunning/Runner;->toState(I)V

    .line 157
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 158
    return-void
.end method

.method public showShield()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 233
    iput-boolean v1, p0, Lcom/andoop/freerunning/Runner;->mIsShieldShowing:Z

    .line 234
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setVisible(Z)V

    .line 235
    iget-object v0, p0, Lcom/andoop/freerunning/Runner;->mAnimateShield:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/4 v1, 0x0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/andoop/freerunning/Runner;->shieldDurations:[J

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/andoop/freerunning/Runner;->animationShiledListener:Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 236
    return-void
.end method

.method public toState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/andoop/freerunning/Runner;->mState:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/freerunning/Runner;->isStateChange:Z

    .line 139
    return-void
.end method
