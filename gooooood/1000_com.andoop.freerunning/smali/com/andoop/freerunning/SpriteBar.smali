.class public Lcom/andoop/freerunning/SpriteBar;
.super Lcom/andoop/android/engine/entity/shape/RectangularShape;
.source "SpriteBar.java"


# static fields
.field private static final FRAME_COLOR:I = -0x1000000

.field private static final FRAME_WIDTH:F = 2.0f

.field private static final LIFE_COLOR:I = -0x1

.field private static final LIFE_SHADOW_COLOR:I = -0x777778


# instance fields
.field mCurrentPower:F

.field mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field mPowerModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

.field mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

.field mTotalPower:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    .line 24
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPowerModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    .line 31
    new-instance v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 32
    new-instance v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 33
    new-instance v0, Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    iput-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    .line 35
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v5}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setIgnoreUpdate(Z)V

    .line 36
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v5}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setIgnoreUpdate(Z)V

    .line 37
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v4}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setUpdatePhysics(Z)V

    .line 39
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setStrokeWidth(F)V

    .line 41
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPowerModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0, v4}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->setRemoveWhenFinished(Z)V

    .line 46
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget-object v1, p0, Lcom/andoop/freerunning/SpriteBar;->mPowerModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->addShapeModifier(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;)V

    .line 48
    iput p3, p0, Lcom/andoop/freerunning/SpriteBar;->mTotalPower:F

    .line 49
    iput v3, p0, Lcom/andoop/freerunning/SpriteBar;->mCurrentPower:F

    .line 50
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 62
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 63
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mFrame:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 64
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 1
    .param p1, "seconds"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->onUpdate(F)V

    .line 57
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/andoop/freerunning/SpriteBar;->mCurrentPower:F

    .line 83
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setWidth(F)V

    .line 84
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v1, p0, Lcom/andoop/freerunning/SpriteBar;->mCurrentPower:F

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mShadow:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setAlpha(F)V

    .line 74
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPowerModifier:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    invoke-interface {v0}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;->reset()V

    .line 76
    iget v0, p0, Lcom/andoop/freerunning/SpriteBar;->mTotalPower:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/freerunning/SpriteBar;->mCurrentPower:F

    .line 77
    iget-object v0, p0, Lcom/andoop/freerunning/SpriteBar;->mPower:Lcom/andoop/android/engine/entity/shape/RectangularShape;

    iget v1, p0, Lcom/andoop/freerunning/SpriteBar;->mCurrentPower:F

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setWidth(F)V

    .line 78
    return-void
.end method
