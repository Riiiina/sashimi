.class public Lcom/andoop/freerunning/BaseScene;
.super Lcom/andoop/android/engine/Scene;
.source "BaseScene.java"


# instance fields
.field mGame:Lcom/andoop/freerunning/Game;

.field mGameHeight:F

.field mGameWidth:F


# direct methods
.method public constructor <init>(ILcom/andoop/freerunning/Game;)V
    .locals 3
    .param p1, "layerNum"    # I
    .param p2, "pGame"    # Lcom/andoop/freerunning/Game;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/Scene;-><init>(I)V

    .line 32
    iput-object p2, p0, Lcom/andoop/freerunning/BaseScene;->mGame:Lcom/andoop/freerunning/Game;

    .line 34
    iget-object v1, p0, Lcom/andoop/freerunning/BaseScene;->mGame:Lcom/andoop/freerunning/Game;

    invoke-virtual {v1}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/background.png"

    invoke-static {v1, v2}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "mBitmapBackgroud":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/andoop/android/engine/FixedBackground;

    invoke-direct {v1, v0}, Lcom/andoop/android/engine/FixedBackground;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/andoop/freerunning/BaseScene;->setBackground(Lcom/andoop/android/engine/IBackground;)V

    .line 37
    iget-object v1, p2, Lcom/andoop/freerunning/Game;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v1}, Lcom/andoop/android/engine/Camera;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/andoop/freerunning/BaseScene;->mGameWidth:F

    .line 38
    iget-object v1, p2, Lcom/andoop/freerunning/Game;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v1}, Lcom/andoop/android/engine/Camera;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/andoop/freerunning/BaseScene;->mGameHeight:F

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 1
    .param p1, "pGame"    # Lcom/andoop/freerunning/Game;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/andoop/freerunning/BaseScene;-><init>(ILcom/andoop/freerunning/Game;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/andoop/freerunning/BaseScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/BaseScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, v1, Lcom/andoop/freerunning/Game;->mMenuScene:Lcom/andoop/freerunning/MenuScene;

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Game;->setScene(Lcom/andoop/android/engine/Scene;)V

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/andoop/android/engine/Scene;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
