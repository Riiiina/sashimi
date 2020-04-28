.class public Lcom/andoop/freerunning/EndScene;
.super Lcom/andoop/freerunning/BaseScene;
.source "EndScene.java"


# static fields
.field private static final MY_AD_REFRESH_INTERVAL:J = 0x7530L


# instance fields
.field mBest:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mDistance:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mDistanceInt:I

.field mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mRetry:Lcom/andoop/android/engine/entity/shape/TextSprite;

.field mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;


# direct methods
.method public constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 9
    .param p1, "pGame"    # Lcom/andoop/freerunning/Game;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x2

    const-string v3, ""

    .line 16
    invoke-direct {p0, p1}, Lcom/andoop/freerunning/BaseScene;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 18
    iget v0, p0, Lcom/andoop/freerunning/EndScene;->mGameHeight:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float v6, v0, v1

    .line 19
    .local v6, "size":F
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const v1, 0x3e8a3d71    # 0.27f

    iget v2, p0, Lcom/andoop/freerunning/EndScene;->mGameWidth:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    iget v5, p0, Lcom/andoop/freerunning/EndScene;->mGameHeight:F

    mul-float/2addr v2, v5

    const-string v5, ""

    iget-object v5, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/EndScene;->mDistance:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 20
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const v1, 0x3f3ae148    # 0.73f

    iget v2, p0, Lcom/andoop/freerunning/EndScene;->mGameWidth:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mDistance:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->getY()F

    move-result v2

    const-string v5, ""

    iget-object v5, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/EndScene;->mBest:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 22
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v1, 0x3e800000    # 0.25f

    iget v2, p0, Lcom/andoop/freerunning/EndScene;->mGameWidth:F

    mul-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    iget v3, p0, Lcom/andoop/freerunning/EndScene;->mGameHeight:F

    mul-float/2addr v2, v3

    const-string v3, "Submit"

    iget-object v5, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 23
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/andoop/freerunning/EndScene;->mGameWidth:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->getY()F

    move-result v2

    const-string v3, "More"

    iget-object v5, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/EndScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 24
    new-instance v0, Lcom/andoop/android/engine/entity/shape/TextSprite;

    const/high16 v1, 0x3f400000    # 0.75f

    iget v2, p0, Lcom/andoop/freerunning/EndScene;->mGameWidth:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->getY()F

    move-result v2

    const-string v3, "Retry"

    iget-object v5, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v5, v5, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    iput-object v0, p0, Lcom/andoop/freerunning/EndScene;->mRetry:Lcom/andoop/android/engine/entity/shape/TextSprite;

    .line 26
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 27
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 28
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mRetry:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, v7}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setUnderline(Z)V

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/andoop/android/engine/entity/Entity;

    iget-object v1, p0, Lcom/andoop/freerunning/EndScene;->mDistance:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/andoop/freerunning/EndScene;->mBest:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mRetry:Lcom/andoop/android/engine/entity/shape/TextSprite;

    aput-object v2, v0, v1

    invoke-virtual {p0, v8, v0}, Lcom/andoop/freerunning/EndScene;->addEntity(I[Lcom/andoop/android/engine/entity/Entity;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0}, Lcom/andoop/freerunning/BaseScene;->onReady()V

    .line 37
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v2}, Lcom/andoop/freerunning/Game;->showAd()V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "current":J
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-wide v2, v2, Lcom/andoop/freerunning/Game;->lastAdShown:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iput-wide v0, v2, Lcom/andoop/freerunning/Game;->lastAdShown:J

    .line 41
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v2, v2, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v2, v2, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    invoke-virtual {v2}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 45
    :cond_0
    return-void
.end method

.method public onTouch(FFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mRetry:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 51
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, v1, Lcom/andoop/freerunning/Game;->mGameScene:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Game;->setScene(Lcom/andoop/android/engine/Scene;)V

    move v0, v2

    .line 63
    :goto_0
    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mMore:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 55
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/andoop/freerunning/Game;->showDialog(I)V

    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mSubmit:Lcom/andoop/android/engine/entity/shape/TextSprite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->onClick(FFLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->playPress()V

    .line 59
    invoke-virtual {p0}, Lcom/andoop/freerunning/EndScene;->submitScore()V

    move v0, v2

    .line 60
    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    goto :goto_0
.end method

.method setDistance(II)V
    .locals 3
    .param p1, "now"    # I
    .param p2, "bestLast"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mDistance:Lcom/andoop/android/engine/entity/shape/TextSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Score: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setText(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mBest:Lcom/andoop/android/engine/entity/shape/TextSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Best: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setText(Ljava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/andoop/freerunning/EndScene;->mDistanceInt:I

    .line 80
    return-void
.end method

.method submitScore()V
    .locals 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    .line 69
    iget v1, p0, Lcom/andoop/freerunning/EndScene;->mDistanceInt:I

    .line 70
    iget-object v2, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v2, v2, Lcom/andoop/freerunning/Game;->mMenuScene:Lcom/andoop/freerunning/MenuScene;

    .line 71
    iget-object v3, p0, Lcom/andoop/freerunning/EndScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v3}, Lcom/andoop/freerunning/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/andoop/android/highscore/HighScoreActivity;->submitHighScore(Lcom/andoop/android/engine/BaseActivity;ILcom/andoop/android/engine/Scene;Ljava/lang/String;)V

    .line 73
    return-void
.end method
