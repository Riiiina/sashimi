.class public final Lcom/magicwach/rdefense/UpgradeButton;
.super Ljava/lang/Object;
.source "UpgradeButton.java"


# static fields
.field private static final BUTTON_ACTIVE_COLOR:I = -0x6f9f9fa0

.field private static final BUTTON_BORDER_COLOR:I = -0x1

.field private static final BUTTON_DISABLED_BORDER_COLOR:I = 0x40ffffff

.field private static final BUTTON_DISABLED_COLOR:I = 0x30000000

.field private static final BUTTON_INACTIVE_COLOR:I = -0x70000000

.field private static final BUTTON_PENDING_COLOR:I = -0x6fcfcfd0

.field private static final INNER_PAD:I = 0xf

.field private static final LVL_TXT_COLOR:I = -0x8f8f01

.field private static final LVL_TXT_GAP:I = 0x14


# instance fields
.field private affordable:Z

.field private bounds:Landroid/graphics/Rect;

.field private dragged_inside:Z

.field private img_x:I

.field private img_y:I

.field private lvl_paint:Landroid/graphics/Paint;

.field private lvl_text_x:I

.field private lvl_text_y:I

.field private message:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private pressed_inside:Z

.field private text_x:I

.field private text_y:I

.field private tower_id:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v2, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    .line 9
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 10
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 11
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    .line 14
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 17
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->text_x:I

    .line 18
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->text_y:I

    .line 19
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_x:I

    .line 20
    iget v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->text_y:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_y:I

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    const v1, -0x8f8f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/16 v1, 0xf

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_text_x:I

    .line 27
    iget v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_y:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_text_y:I

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/UpgradeButton;->init(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "available_cash"    # I

    .prologue
    .line 69
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    if-ltz v6, :cond_7

    .line 70
    const/4 v2, -0x1

    .line 71
    .local v2, "fg_color":I
    const/high16 v0, -0x70000000

    .line 72
    .local v0, "bg_color":I
    const v4, -0x8f8f01

    .line 73
    .local v4, "lvl_color":I
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v6

    if-lt p2, v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->affordable:Z

    .line 74
    iget-boolean v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->affordable:Z

    if-nez v6, :cond_4

    .line 75
    const v2, 0x40ffffff    # 7.9999995f

    .line 76
    move v4, v2

    .line 77
    const/high16 v0, 0x30000000

    .line 81
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    if-eqz v6, :cond_1

    .line 88
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->image(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_x:I

    int-to-float v7, v7

    iget v8, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_y:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    const/16 v7, 0x10e

    invoke-static {v6, v7}, Lcom/magicwach/rdefense/TowerData;->getDirectionImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .local v1, "dir_img":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 91
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_x:I

    int-to-float v6, v6

    iget v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->img_y:I

    iget v8, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    invoke-static {v8}, Lcom/magicwach/rdefense/TowerData;->towerHeight(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    .end local v1    # "dir_img":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->message:Ljava/lang/String;

    iget v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->text_x:I

    int-to-float v7, v7

    iget v8, p0, Lcom/magicwach/rdefense/UpgradeButton;->text_y:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->upgradeStrings(I)[Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "lvl_string":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 100
    aget-object v6, v5, v3

    if-eqz v6, :cond_2

    .line 101
    aget-object v6, v5, v3

    iget v7, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_text_x:I

    int-to-float v7, v7

    iget v8, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_text_y:I

    mul-int/lit8 v9, v3, 0x14

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/magicwach/rdefense/UpgradeButton;->lvl_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 73
    .end local v5    # "lvl_string":[Ljava/lang/String;
    .end local v3    # "idx":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 78
    :cond_4
    iget-boolean v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    if-eqz v6, :cond_0

    .line 79
    iget-boolean v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    if-eqz v6, :cond_5

    const v6, -0x6f9f9fa0

    move v0, v6

    :goto_3
    goto/16 :goto_1

    :cond_5
    const v6, -0x6fcfcfd0

    move v0, v6

    goto :goto_3

    .line 105
    .restart local v3    # "idx":I
    .restart local v5    # "lvl_string":[Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/magicwach/rdefense/UpgradeButton;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    .end local v2    # "fg_color":I
    .end local v4    # "lvl_color":I
    .end local v0    # "bg_color":I
    .end local v3    # "idx":I
    .end local v5    # "lvl_string":[Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public fingerDown(II)V
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->affordable:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    .line 48
    iget-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    .line 50
    :cond_0
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fingerDrag(II)V
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->affordable:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    .line 58
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fingerUp(II)Z
    .locals 3
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-boolean v1, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 61
    .local v0, "activated":Z
    :goto_0
    iput-boolean v2, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    .line 62
    iput-boolean v2, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    .line 63
    return v0

    .end local v0    # "activated":Z
    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public getTowerId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    return v0
.end method

.method public init(I)V
    .locals 2
    .param p1, "tower_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    iput p1, p0, Lcom/magicwach/rdefense/UpgradeButton;->tower_id:I

    .line 32
    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->pressed_inside:Z

    .line 33
    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->dragged_inside:Z

    .line 34
    iput-boolean v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->affordable:Z

    .line 35
    if-ltz p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->label(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->message:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method public setSellLabel(I)V
    .locals 2
    .param p1, "sell_amount"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51fa\u552e $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeButton;->message:Ljava/lang/String;

    .line 41
    return-void
.end method
