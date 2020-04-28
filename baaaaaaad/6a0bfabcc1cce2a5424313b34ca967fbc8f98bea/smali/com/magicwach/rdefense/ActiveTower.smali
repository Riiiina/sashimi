.class public final Lcom/magicwach/rdefense/ActiveTower;
.super Ljava/lang/Object;
.source "ActiveTower.java"


# static fields
.field private static final DRAG_CHECK_TOLERANCE:I = 0x6

.field private static final INVALID_COLOR:I = -0x6f010000

.field private static final VALID_COLOR:I = -0x6f9f9fa0


# instance fields
.field private gridx:I

.field private gridy:I

.field private position_state:I

.field private rect:Landroid/graphics/Rect;

.field private rectf:Landroid/graphics/RectF;

.field private tower_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    .line 12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameState;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 14
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    if-ltz v5, :cond_2

    .line 15
    const/4 v2, 0x1

    .line 16
    .local v2, "valid":Z
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->position_state:I

    if-ltz v5, :cond_0

    .line 17
    invoke-virtual {p3}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v5

    iget v6, p0, Lcom/magicwach/rdefense/ActiveTower;->position_state:I

    sub-int/2addr v5, v6

    const/4 v6, 0x6

    if-le v5, v6, :cond_0

    .line 18
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->gridx:I

    iget v6, p0, Lcom/magicwach/rdefense/ActiveTower;->gridy:I

    iget v7, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    const/4 v8, 0x0

    invoke-virtual {p3, v5, v6, v7, v8}, Lcom/magicwach/rdefense/GameState;->checkTowerPlacement(IIIZ)Z

    move-result v2

    .line 21
    :cond_0
    if-eqz v2, :cond_1

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 22
    const v5, 0x2000ffff

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->gridx:I

    mul-int/lit8 v5, v5, 0x28

    add-int/lit8 v3, v5, 0x14

    .line 24
    .local v3, "x":I
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->gridy:I

    mul-int/lit8 v5, v5, 0x28

    add-int/lit8 v4, v5, 0x14

    .line 25
    .local v4, "y":I
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    invoke-static {v5}, Lcom/magicwach/rdefense/TowerData;->attackRadius(I)I

    move-result v1

    .line 26
    .local v1, "r":I
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    sub-int v6, v3, v1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 27
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    add-int v6, v3, v1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 28
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    sub-int v6, v4, v1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 29
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    add-int v6, v4, v1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 30
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 32
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v1    # "r":I
    :cond_1
    if-eqz v2, :cond_3

    const v5, -0x6f9f9fa0

    :goto_0
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/magicwach/rdefense/ActiveTower;->gridx:I

    mul-int/lit8 v6, v6, 0x28

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 34
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/magicwach/rdefense/ActiveTower;->gridy:I

    mul-int/lit8 v6, v6, 0x28

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 35
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x28

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 36
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x28

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->position_state:I

    if-ltz v5, :cond_2

    .line 39
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    invoke-static {v5}, Lcom/magicwach/rdefense/TowerData;->image(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    iget v5, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    const/16 v6, 0x10e

    invoke-static {v5, v6}, Lcom/magicwach/rdefense/TowerData;->getDirectionImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "dir_img":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 42
    iget-object v5, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/magicwach/rdefense/ActiveTower;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    const/16 v7, 0xf

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    .end local v2    # "valid":Z
    .end local v0    # "dir_img":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 32
    .restart local v2    # "valid":Z
    :cond_3
    const/high16 v5, -0x6f010000

    goto :goto_0
.end method

.method public getTowerID()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    return v0
.end method

.method public setPosition(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "state"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/magicwach/rdefense/ActiveTower;->gridx:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/ActiveTower;->gridy:I

    if-ne p2, v0, :cond_0

    if-gez p3, :cond_1

    .line 49
    :cond_0
    iput p1, p0, Lcom/magicwach/rdefense/ActiveTower;->gridx:I

    .line 50
    iput p2, p0, Lcom/magicwach/rdefense/ActiveTower;->gridy:I

    .line 51
    iput p3, p0, Lcom/magicwach/rdefense/ActiveTower;->position_state:I

    .line 53
    :cond_1
    return-void
.end method

.method public setTowerId(I)V
    .locals 0
    .param p1, "tower_id"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/magicwach/rdefense/ActiveTower;->tower_id:I

    .line 56
    return-void
.end method
