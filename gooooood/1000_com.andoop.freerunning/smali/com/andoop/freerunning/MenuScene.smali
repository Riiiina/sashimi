.class public Lcom/andoop/freerunning/MenuScene;
.super Lcom/andoop/freerunning/BaseScene;
.source "MenuScene.java"


# instance fields
.field private final loadText:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field private mButtonEnabled:Z

.field mHighscore:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mPlay:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;


# direct methods
.method public constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 14
    .param p1, "pGame"    # Lcom/andoop/freerunning/Game;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/andoop/freerunning/BaseScene;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andoop/freerunning/MenuScene;->mButtonEnabled:Z

    .line 25
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    mul-float/2addr v1, v2

    const v2, 0x3eb851ec    # 0.36f

    iget v3, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float/2addr v2, v3

    const-string v3, "FREE  RUNNING"

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const v6, 0x3e23d70a    # 0.16f

    iget v7, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float/2addr v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    .line 26
    .local v0, "title":Lcom/andoop/android/engine/entity/shape/TextSprite;
    new-instance v1, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v2, 0x3f000000    # 0.5f

    iget v3, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    mul-float/2addr v2, v3

    const v3, 0x3f28f5c3    # 0.66f

    iget v4, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float/2addr v3, v4

    const-string v4, "Loading . . ."

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v6, v6, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    const v7, 0x3e051eb8    # 0.13f

    iget v8, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float/2addr v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v1, p0, Lcom/andoop/freerunning/MenuScene;->loadText:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 28
    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float v7, v1, v2

    .line 29
    .local v7, "size":F
    const v1, 0x3f28f5c3    # 0.66f

    iget v2, p0, Lcom/andoop/freerunning/MenuScene;->mGameHeight:F

    mul-float v3, v1, v2

    .line 30
    .local v3, "y":F
    new-instance v1, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v2, 0x3e800000    # 0.25f

    iget v4, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    mul-float/2addr v2, v4

    const-string v4, "Play"

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v6, v6, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v1 .. v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mPlay:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 31
    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mPlay:Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 33
    new-instance v1, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v2, 0x3f000000    # 0.5f

    iget v4, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    mul-float/2addr v2, v4

    const-string v4, "More"

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v6, v6, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v1 .. v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 34
    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 36
    new-instance v1, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v2, 0x3f400000    # 0.75f

    iget v4, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    mul-float/2addr v2, v4

    const-string v4, "Score"

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v6, v6, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v1 .. v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mHighscore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 37
    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mHighscore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 39
    new-instance v8, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    iget v1, p0, Lcom/andoop/freerunning/MenuScene;->mGameWidth:F

    const/high16 v2, 0x42680000    # 58.0f

    sub-float v9, v1, v2

    const/high16 v10, 0x41200000    # 10.0f

    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/btn_sound.png"

    invoke-static {v1, v2}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x2

    invoke-direct/range {v8 .. v13}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;-><init>(FFLandroid/graphics/Bitmap;II)V

    iput-object v8, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 40
    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setTile(I)V

    .line 44
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/andoop/android/engine/entity/Entity;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .end local v3    # "y":F
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/andoop/freerunning/MenuScene;->loadText:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/andoop/freerunning/MenuScene;->addEntity(I[Lcom/andoop/android/engine/entity/Entity;)V

    .line 45
    return-void
.end method

.method private checkSoundButton()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->getSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setTile(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->setTile(I)V

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 79
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->pressToExit()V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/andoop/freerunning/BaseScene;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->loadText:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/MenuScene;->removeEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 49
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mPlay:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/MenuScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 50
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/MenuScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 51
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mHighscore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/MenuScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 52
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/MenuScene;->addEntity(ILcom/andoop/android/engine/entity/Entity;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/freerunning/MenuScene;->mButtonEnabled:Z

    .line 56
    invoke-direct {p0}, Lcom/andoop/freerunning/MenuScene;->checkSoundButton()V

    .line 57
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onReady()V

    .line 63
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->showAd()V

    .line 64
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/andoop/freerunning/Game;->lastAdShown:J

    .line 66
    invoke-direct {p0}, Lcom/andoop/freerunning/MenuScene;->checkSoundButton()V

    .line 67
    return-void
.end method

.method public onTouch(FFLandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-boolean v0, p0, Lcom/andoop/freerunning/MenuScene;->mButtonEnabled:Z

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mPlay:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 91
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, v1, Lcom/andoop/freerunning/Game;->mGameScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Game;->setScene(Lcom/andoop/android/engine/Scene;)V

    move v0, v3

    .line 107
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 95
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/andoop/freerunning/Game;->showDialog(I)V

    move v0, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mHighscore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->showTopHighScore(Lcom/andoop/android/engine/BaseActivity;Ljava/lang/String;)V

    move v0, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 102
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/MenuScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Game;->setSoundEnable(Z)V

    .line 103
    iget-object v0, p0, Lcom/andoop/freerunning/MenuScene;->mSound:Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    invoke-virtual {v0}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->nextTile()V

    move v0, v3

    .line 104
    goto :goto_0

    :cond_3
    move v1, v3

    .line 102
    goto :goto_1

    :cond_4
    move v0, v3

    .line 107
    goto :goto_0
.end method
