.class public Lcom/andoop/freerunning/GameScene;
.super Lcom/andoop/freerunning/BaseScene;
.source "GameScene.java"

# interfaces
.implements Lcom/andoop/android/engine/GameState$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;
    }
.end annotation


# static fields
.field static final DISTANCE_SPEED:F = 12.0f

.field private static final PAUSE_BUTTON_MUSIC_OFF:Ljava/lang/String; = "Music Off"

.field private static final PAUSE_BUTTON_MUSIC_ON:Ljava/lang/String; = "Music On"


# instance fields
.field private final initOffsetX:I

.field mAndroid2:Z

.field mAndroid2ButtonHandler:Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

.field private final mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

.field mBar:Lcom/andoop/freerunning/SpriteBar;

.field private final mBaseMarginBotton:F

.field private mBestLast:I

.field private final mButtonForward:Lcom/andoop/android/engine/entity/shape/Sprite;

.field private final mButtonJump:Lcom/andoop/android/engine/entity/shape/Sprite;

.field private final mButtonMarginBottom:I

.field private final mButtonMarginLeft:I

.field private final mButtonPause:Lcom/andoop/android/engine/entity/shape/Sprite;

.field private mCityIndex:I

.field private final mCityVelocityX:I

.field mClock:Lcom/andoop/freerunning/SpriteClock;

.field mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field mGame:Lcom/andoop/freerunning/Game;

.field mGameState:Lcom/andoop/android/engine/GameState;

.field private mGameTime:F

.field private final mGround:Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field mHUD:Lcom/andoop/android/engine/HUD;

.field private mIntDistance:I

.field mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private final mOverRunnable:Lcom/andoop/android/engine/DelayedRunnable;

.field mPaused:Z

.field mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private final mRestartRunnable:Ljava/lang/Runnable;

.field mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private final mRunner:Lcom/andoop/freerunning/Runner;

.field private final mRunnerY:F

.field private final mScoreColor:I

.field private final mSpriteBest:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

.field private final mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

.field private final mTextPower:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private final mTextShield:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private final mWallBaseSpeedX:I

.field private final mWallHighY:F

.field private final mWallInterval:I

.field private final mWallLowY:F

.field private mWallMax:I

.field private mWallMin:I

.field private mWallSpeedX:I

.field private final mWallSpeedXCal:I

.field private mWallSpeedXCalIndex:I

.field private final mWallSpeedXMax:I

.field private final mWallWidth:I

.field private final mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field private final mWallsLow:[Z


# direct methods
.method public constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 12
    .param p1, "pGame"    # Lcom/andoop/freerunning/Game;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/andoop/freerunning/BaseScene;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 30
    const/high16 v0, 0x42dc0000    # 110.0f

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mBaseMarginBotton:F

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->initOffsetX:I

    .line 33
    const/16 v0, 0xf

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallWidth:I

    .line 35
    const/16 v0, -0x190

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallBaseSpeedX:I

    .line 36
    const/16 v0, -0x190

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    .line 37
    const/16 v0, -0x2ee

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXMax:I

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXCal:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXCalIndex:I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonMarginLeft:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonMarginBottom:I

    .line 71
    const/16 v0, -0x32

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mCityVelocityX:I

    .line 77
    const-string v0, "#404040"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mScoreColor:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mPaused:Z

    .line 90
    new-instance v0, Lcom/andoop/freerunning/GameScene$1;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/GameScene$1;-><init>(Lcom/andoop/freerunning/GameScene;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestartRunnable:Ljava/lang/Runnable;

    .line 99
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallInterval:I

    .line 100
    iput-object p1, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    .line 101
    new-instance v0, Lcom/andoop/android/engine/GameState;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/GameState;-><init>(Lcom/andoop/android/engine/GameState$StateListener;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    .line 102
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/GameScene;->registerUpdateHandler(Lcom/andoop/android/engine/IUpdateHandler;)V

    .line 103
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 105
    .local v7, "asset":Landroid/content/res/AssetManager;
    const-string v0, "gfx/buttonjump.png"

    invoke-static {v7, v0}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 106
    .local v9, "mBitmapButtonJump":Landroid/graphics/Bitmap;
    const-string v0, "gfx/buttonroll.png"

    invoke-static {v7, v0}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 107
    .local v11, "mBitmapButtonRoll":Landroid/graphics/Bitmap;
    const-string v0, "gfx/btn_pause.png"

    invoke-static {v7, v0}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 109
    .local v10, "mBitmapButtonPause":Landroid/graphics/Bitmap;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x0

    .line 110
    new-instance v2, Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v3, 0x0

    iget v4, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x42480000    # 50.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4, v5}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 111
    new-instance v2, Lcom/andoop/android/engine/entity/shape/Sprite;

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v3, v3, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x42480000    # 50.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4, v5}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    aput-object v2, v0, v1

    .line 109
    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    .line 113
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v1, -0x3db80000    # -50.0f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->setVelocityX(F)V

    .line 116
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, -0x3db80000    # -50.0f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->setVelocityX(F)V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    .line 120
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    const/high16 v1, 0x42dc0000    # 110.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mRunnerY:F

    .line 121
    new-instance v0, Lcom/andoop/freerunning/Runner;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mRunnerY:F

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-direct {v0, v1, v2, p0}, Lcom/andoop/freerunning/Runner;-><init>(FLcom/andoop/freerunning/Game;Lcom/andoop/freerunning/GameScene;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    .line 136
    new-instance v0, Lcom/andoop/android/engine/entity/shape/Sprite;

    const/4 v1, 0x0

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    float-to-int v2, v2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v11}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonForward:Lcom/andoop/android/engine/entity/shape/Sprite;

    .line 137
    new-instance v0, Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    float-to-int v1, v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    float-to-int v2, v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v9}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonJump:Lcom/andoop/android/engine/entity/shape/Sprite;

    .line 138
    new-instance v0, Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    float-to-int v2, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v10}, Lcom/andoop/android/engine/entity/shape/Sprite;-><init>(FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonPause:Lcom/andoop/android/engine/entity/shape/Sprite;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/andoop/android/engine/entity/Entity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mButtonForward:Lcom/andoop/android/engine/entity/shape/Sprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mButtonJump:Lcom/andoop/android/engine/entity/shape/Sprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mButtonPause:Lcom/andoop/android/engine/entity/shape/Sprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/andoop/freerunning/GameScene;->addEntity(I[Lcom/andoop/android/engine/entity/Entity;)V

    .line 141
    new-instance v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/4 v1, 0x0

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mRunnerY:F

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGround:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 142
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGround:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {p0, v0, v1}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 144
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Runner;->getY(I)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallHighY:F

    .line 145
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGround:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallLowY:F

    .line 146
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x4

    if-lt v8, v0, :cond_1

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    .line 152
    const/4 v0, 0x3

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    .line 154
    new-instance v0, Lcom/andoop/android/engine/HUD;

    invoke-direct {v0}, Lcom/andoop/android/engine/HUD;-><init>()V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    .line 155
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/GameScene;->setHUD(Lcom/andoop/android/engine/HUD;)V

    .line 157
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v2, 0x43a00000    # 320.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    const-string v3, "SCORE: "

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    .line 158
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v2, 0x43200000    # 160.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    const-string v3, "BEST: "

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteBest:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    .line 159
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mScoreColor:I

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteBest:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mScoreColor:I

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->setColor(I)V

    .line 162
    new-instance v0, Lcom/andoop/freerunning/SpriteClock;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v3}, Lcom/andoop/freerunning/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/andoop/freerunning/SpriteClock;-><init>(FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mClock:Lcom/andoop/freerunning/SpriteClock;

    .line 163
    new-instance v0, Lcom/andoop/freerunning/SpriteBar;

    const/high16 v1, 0x42700000    # 60.0f

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mClock:Lcom/andoop/freerunning/SpriteClock;

    invoke-virtual {v2}, Lcom/andoop/freerunning/SpriteClock;->getCenterY()F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v4, 0x43a00000    # 320.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    sub-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/andoop/freerunning/SpriteBar;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBar:Lcom/andoop/freerunning/SpriteBar;

    .line 165
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v1, 0x41e00000    # 28.0f

    const/high16 v2, 0x41700000    # 15.0f

    const-string v3, "Shield"

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mTextShield:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 166
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBar:Lcom/andoop/freerunning/SpriteBar;

    invoke-virtual {v1}, Lcom/andoop/freerunning/SpriteBar;->getCenterX()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    const-string v3, "Power"

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mTextPower:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 168
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 169
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mSpriteBest:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 170
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mClock:Lcom/andoop/freerunning/SpriteClock;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 171
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBar:Lcom/andoop/freerunning/SpriteBar;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 172
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mTextShield:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 173
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mTextPower:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 175
    new-instance v0, Lcom/andoop/freerunning/GameScene$2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1}, Lcom/andoop/freerunning/GameScene$2;-><init>(Lcom/andoop/freerunning/GameScene;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mOverRunnable:Lcom/andoop/android/engine/DelayedRunnable;

    .line 183
    invoke-direct {p0}, Lcom/andoop/freerunning/GameScene;->initPauseDialog()V

    .line 185
    invoke-static {}, Lcom/andoop/freerunning/Game;->isAndroid1()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2:Z

    .line 186
    iget-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;-><init>(Lcom/andoop/freerunning/GameScene;)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2ButtonHandler:Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

    .line 189
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    new-instance v1, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallInterval:I

    mul-int/2addr v3, v8

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallLowY:F

    :goto_2
    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    aput-object v1, v0, v8

    .line 148
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v0, v0, v8

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVelocityX(F)V

    .line 149
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v1, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/andoop/freerunning/GameScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 147
    :cond_2
    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallHighY:F

    goto :goto_2

    .line 185
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/andoop/freerunning/GameScene;FF)Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/andoop/freerunning/GameScene;->handleButtonPress(FF)Z

    move-result v0

    return v0
.end method

.method private final handleButtonPress(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mButtonPause:Lcom/andoop/android/engine/entity/shape/Sprite;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/Sprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->pause()V

    move v0, v2

    .line 284
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v0, v2}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mWallLowY:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 275
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 276
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/andoop/freerunning/GameScene;->setRunnerState(I)V

    :cond_1
    :goto_1
    move v0, v2

    .line 280
    goto :goto_0

    .line 277
    :cond_2
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 278
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/andoop/freerunning/GameScene;->setRunnerState(I)V

    goto :goto_1

    .line 284
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPauseDialog()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/high16 v10, -0x1000000

    const v9, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 192
    new-instance v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    iget v5, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 193
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setIgnoreUpdate(Z)V

    .line 195
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v8}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVisible(Z)V

    .line 196
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 199
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v2, v3

    const-string v3, "Restart"

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    iget v6, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    mul-float/2addr v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 200
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->getY()F

    move-result v2

    const-string v3, "Resume"

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    iget v6, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    mul-float/2addr v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 201
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const-string v3, "Music Off"

    iget-object v5, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    iget v6, p0, Lcom/andoop/freerunning/GameScene;->mGameHeight:F

    mul-float/2addr v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 203
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 204
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 205
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 207
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setIgnoreUpdate(Z)V

    .line 208
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 209
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 210
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setIgnoreUpdate(Z)V

    .line 211
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setIgnoreUpdate(Z)V

    .line 212
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 214
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v10}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v10}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v10}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 219
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 220
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mHUD:Lcom/andoop/android/engine/HUD;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/HUD;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 221
    return-void
.end method

.method private over()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    invoke-virtual {v0}, Lcom/andoop/android/engine/GameState;->lose()V

    .line 450
    return-void
.end method

.method private saveBestScore()I
    .locals 3

    .prologue
    .line 386
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mBestLast:I

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 387
    .local v0, "bestNow":I
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mBestLast:I

    if-le v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1, v0}, Lcom/andoop/freerunning/Game;->saveBestScore(I)V

    .line 390
    :cond_0
    return v0
.end method

.method private setRunnerState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v0, p1}, Lcom/andoop/freerunning/Runner;->toState(I)V

    .line 225
    return-void
.end method


# virtual methods
.method public delayWallPosition()V
    .locals 4

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 478
    return-void

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v1, v2, v0

    .line 474
    .local v1, "wall":Lcom/andoop/android/engine/entity/shape/RectangularShape;
    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v2

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 475
    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v2

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setPosition(FF)V

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hitShield()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    .line 462
    iget v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    .line 463
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onActivityPause()V

    .line 339
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->pauseMusic()V

    .line 340
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onActivityResume()V

    .line 345
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->resumeMusic()V

    .line 346
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onEnd()V

    .line 327
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->reset()V

    .line 329
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->stopMusic()V

    .line 330
    return-void
.end method

.method public onGameLose()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onGameOver()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v0, v0, Lcom/andoop/freerunning/Game;->mEndScene:Lcom/andoop/freerunning/EndScene;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    invoke-direct {p0}, Lcom/andoop/freerunning/GameScene;->saveBestScore()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/andoop/freerunning/EndScene;->setDistance(II)V

    .line 382
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mOverRunnable:Lcom/andoop/android/engine/DelayedRunnable;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/GameScene;->postDelayedRunnable(Lcom/andoop/android/engine/DelayedRunnable;)V

    .line 383
    return-void
.end method

.method public onGameReady()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onGameRunning(F)V
    .locals 10
    .param p1, "pSeconds"    # F

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 400
    iget-boolean v1, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2ButtonHandler:Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2ButtonHandler:Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

    invoke-virtual {v1}, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->handlerTouchEvent()V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1, p1}, Lcom/andoop/freerunning/Runner;->onUpdate(F)V

    .line 405
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mClock:Lcom/andoop/freerunning/SpriteClock;

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v2}, Lcom/andoop/freerunning/Runner;->getProgressShield()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/andoop/freerunning/SpriteClock;->setProgress(F)V

    .line 406
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBar:Lcom/andoop/freerunning/SpriteBar;

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v2}, Lcom/andoop/freerunning/Runner;->getProgressAvatar()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/andoop/freerunning/SpriteBar;->setProgress(F)V

    .line 408
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v1

    const/16 v2, 0xf

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    move v3, v8

    :goto_0
    aput-boolean v3, v1, v2

    .line 410
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v2

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    iget v4, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallLowY:F

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setPosition(FF)V

    .line 411
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    .line 412
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Runner;->getX()F

    move-result v0

    .line 416
    .local v0, "runnerX":F
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1, v7}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWallsLow:[Z

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/andoop/freerunning/Runner;->toState(I)V

    .line 428
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1, v9}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    const/16 v2, -0x2ee

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXCalIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXCalIndex:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_5

    .line 429
    iput v8, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedXCalIndex:I

    .line 430
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    sub-int/2addr v1, v7

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    .line 431
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resetWallSpeed()V

    .line 434
    :cond_5
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameTime:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mGameTime:F

    .line 435
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mGameTime:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    .line 436
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->setInt(I)V

    .line 438
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 439
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/Sprite;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v4, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v4, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/Sprite;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/Sprite;->setPosition(FF)V

    .line 440
    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    .line 443
    :cond_6
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Runner;->isOver()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    invoke-direct {p0}, Lcom/andoop/freerunning/GameScene;->over()V

    .line 446
    :cond_7
    return-void

    .end local v0    # "runnerX":F
    :cond_8
    move v3, v7

    .line 409
    goto/16 :goto_0

    .line 410
    :cond_9
    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallHighY:F

    goto/16 :goto_1

    .line 421
    .restart local v0    # "runnerX":F
    :cond_a
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v1, v9}, Lcom/andoop/freerunning/Runner;->isState(I)Z

    goto/16 :goto_2
.end method

.method public onGameWin()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 230
    iget-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mPaused:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resume()V

    .line 232
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/andoop/freerunning/GameScene;->saveBestScore()I

    .line 237
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/andoop/freerunning/BaseScene;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onReady()V

    .line 318
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->hideAd()V

    .line 319
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->reset()V

    .line 321
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playMusic()V

    .line 322
    return-void
.end method

.method public onTouch(FFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-boolean v1, p0, Lcom/andoop/freerunning/GameScene;->mPaused:Z

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v1, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->restart()V

    .line 245
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resume()V

    :cond_0
    :goto_0
    move v1, v2

    .line 264
    :goto_1
    return v1

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v1, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    .line 248
    .local v0, "soundEnabled":Z
    :goto_2
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1, v0}, Lcom/andoop/freerunning/Game;->setSoundEnable(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resume()V

    goto :goto_0

    .end local v0    # "soundEnabled":Z
    :cond_2
    move v0, v2

    .line 247
    goto :goto_2

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v1, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resume()V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    invoke-virtual {v1}, Lcom/andoop/android/engine/GameState;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-boolean v1, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2:Z

    if-eqz v1, :cond_5

    .line 255
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mAndroid2ButtonHandler:Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->onTouch(FFLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/andoop/freerunning/GameScene;->handleButtonPress(FF)Z

    move-result v1

    goto :goto_1
.end method

.method pause()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->showPauseDialog()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mPaused:Z

    .line 290
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->pauseGame()V

    .line 291
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 350
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->reset()V

    .line 352
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->getY()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->setPosition(FF)V

    .line 353
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mCityIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/andoop/android/engine/entity/shape/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/andoop/freerunning/GameScene;->mBackCity:[Lcom/andoop/android/engine/entity/shape/Sprite;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/Sprite;->setPosition(FF)V

    .line 355
    const/16 v0, -0x190

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    .line 357
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    invoke-virtual {v0}, Lcom/andoop/android/engine/GameState;->reset()V

    .line 358
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRunner:Lcom/andoop/freerunning/Runner;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Runner;->reset()V

    .line 360
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resetWallPosition()V

    .line 361
    iput v3, p0, Lcom/andoop/freerunning/GameScene;->mWallMin:I

    .line 362
    const/4 v0, 0x3

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mWallMax:I

    .line 364
    iput v3, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    .line 365
    iput v4, p0, Lcom/andoop/freerunning/GameScene;->mGameTime:F

    .line 366
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget v0, v0, Lcom/andoop/freerunning/Game;->mBestScore:I

    iput v0, p0, Lcom/andoop/freerunning/GameScene;->mBestLast:I

    .line 368
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteDistance:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mIntDistance:I

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->setInt(I)V

    .line 369
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mSpriteBest:Lcom/andoop/android/engine/entity/shape/TextNumberSprite;

    iget v1, p0, Lcom/andoop/freerunning/GameScene;->mBestLast:I

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->setInt(I)V

    .line 371
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGameState:Lcom/andoop/android/engine/GameState;

    invoke-virtual {v0}, Lcom/andoop/android/engine/GameState;->run()V

    .line 372
    return-void
.end method

.method public resetClock()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mClock:Lcom/andoop/freerunning/SpriteClock;

    invoke-virtual {v0}, Lcom/andoop/freerunning/SpriteClock;->reset()V

    .line 458
    return-void
.end method

.method resetPauseDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVisible(Z)V

    .line 310
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 311
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 312
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 313
    return-void
.end method

.method public resetWallPosition()V
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 469
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mGameWidth:F

    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/freerunning/GameScene;->mWallInterval:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setPosition(FF)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resetWallSpeed()V
    .locals 3

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 484
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVelocityX(F)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/GameScene;->postRunnable(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/andoop/freerunning/GameScene;->resetPauseDialog()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/freerunning/GameScene;->mPaused:Z

    .line 296
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->resumeGame()V

    .line 297
    return-void
.end method

.method public scaleWallSpeed()V
    .locals 3

    .prologue
    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 490
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mWalls:[Lcom/andoop/android/engine/entity/shape/RectangularShape;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/andoop/freerunning/GameScene;->mWallSpeedX:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVelocityX(F)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method showPauseDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 300
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mDialogMask:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setVisible(Z)V

    .line 301
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mRestart:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 302
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 303
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mResume:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setVisible(Z)V

    .line 305
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene;->mMusicToggle:Lcom/andoop/android/engine/entity/shape/TextSprite;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getSoundEnable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Music On"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setText(Ljava/lang/String;)V

    .line 306
    return-void

    .line 305
    :cond_0
    const-string v1, "Music Off"

    goto :goto_0
.end method
