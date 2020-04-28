.class public final Lcom/magicwach/rdefense/TowerButton;
.super Ljava/lang/Object;
.source "TowerButton.java"


# static fields
.field private static final ANIMATE_FRAMES:I = 0x8

.field private static final BUTTON_ACTIVE_COLOR:I = -0x6fcfcfd0

.field private static final BUTTON_BORDER:I = 0x14

.field private static final BUTTON_BORDER_COLOR:I = -0x1

.field private static final BUTTON_DISABLED_BORDER_COLOR:I = 0x40ffffff

.field private static final BUTTON_DISABLED_COLOR:I = 0x30000000

.field private static final BUTTON_GAP:I = 0xf

.field private static final BUTTON_HEIGHT:I = 0x46

.field private static final BUTTON_INACTIVE_COLOR:I = -0x70000000

.field private static final BUTTON_WIDTH:I = 0x46

.field private static final DRAG_AMOUNT_SQ:I = 0xe1


# instance fields
.field active:Z

.field active_img:Landroid/graphics/Bitmap;

.field bounds:Landroid/graphics/Rect;

.field current_frame:I

.field disabled_img:Landroid/graphics/Bitmap;

.field enabled:Z

.field inactive_img:Landroid/graphics/Bitmap;

.field tower_id:I

.field tower_id_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "tower_id"    # I
    .param p2, "slot_num"    # I

    .prologue
    const/16 v4, 0x46

    const/16 v3, 0x14

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id_str:Ljava/lang/String;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    .line 12
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    mul-int/lit8 v2, p2, 0x55

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x46

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 15
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    .line 19
    invoke-direct {p0}, Lcom/magicwach/rdefense/TowerButton;->drawImages()V

    .line 20
    return-void
.end method

.method private drawImages()V
    .locals 12

    .prologue
    const/high16 v11, 0x428c0000    # 70.0f

    const/4 v10, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/16 v7, 0x46

    .line 49
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->active_img:Landroid/graphics/Bitmap;

    .line 50
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->inactive_img:Landroid/graphics/Bitmap;

    .line 51
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->disabled_img:Landroid/graphics/Bitmap;

    .line 53
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v10, v10, v11, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 55
    .local v2, "fbounds":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_4

    .line 56
    if-nez v3, :cond_1

    .line 57
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->active_img:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v6, -0x6fcfcfd0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    invoke-virtual {v0, v2, v8, v8, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    const/4 v6, 0x2

    if-ge v3, v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 72
    .local v4, "old_stroke":F
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    invoke-virtual {v0, v2, v8, v8, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 74
    iget v6, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->image(I)Landroid/graphics/Bitmap;

    move-result-object v6

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v0, v6, v9, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget v6, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    const/16 v7, 0x10e

    invoke-static {v6, v7}, Lcom/magicwach/rdefense/TowerData;->getDirectionImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, "dir_img":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    :cond_0
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id_str:Ljava/lang/String;

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-virtual {v0, v6, v7, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "old_stroke":F
    .end local v1    # "dir_img":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->inactive_img:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    const/high16 v6, -0x70000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 63
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/magicwach/rdefense/TowerButton;->disabled_img:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    const/high16 v6, 0x30000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 70
    :cond_3
    const v6, 0x40ffffff    # 7.9999995f

    goto :goto_2

    .line 82
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "available_cash"    # I
    .param p4, "hide"    # Z

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 84
    if-eqz p4, :cond_1

    iget v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    if-eq v3, v5, :cond_1

    .line 85
    iget v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    .line 86
    iget-object v3, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 87
    iget-object v3, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 93
    :cond_0
    :goto_0
    const/high16 v3, -0x1000000

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget v3, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    invoke-static {v3}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v3

    if-gt v3, p3, :cond_2

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    .line 95
    iget-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    iget-boolean v4, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    .line 97
    iget-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    if-eqz v3, :cond_3

    .line 98
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->active_img:Landroid/graphics/Bitmap;

    .line 104
    .local v0, "current_img":Landroid/graphics/Bitmap;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 105
    .local v1, "start":J
    iget-object v3, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    return-void

    .line 88
    .end local v0    # "current_img":Landroid/graphics/Bitmap;
    .end local v1    # "start":J
    :cond_1
    if-nez p4, :cond_0

    iget v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    if-eqz v3, :cond_0

    .line 89
    iget v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/magicwach/rdefense/TowerButton;->current_frame:I

    .line 90
    iget-object v3, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 91
    iget-object v3, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 94
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 99
    :cond_3
    iget-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    if-eqz v3, :cond_4

    .line 100
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->inactive_img:Landroid/graphics/Bitmap;

    .restart local v0    # "current_img":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 102
    .end local v0    # "current_img":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->disabled_img:Landroid/graphics/Bitmap;

    .restart local v0    # "current_img":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public fingerDown(II)I
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/magicwach/rdefense/TowerButton;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/TowerButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    .line 27
    iget-boolean v0, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    :goto_1
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public fingerDrag(IIII)I
    .locals 5
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "pressedx"    # I
    .param p4, "pressedy"    # I

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 32
    .local v0, "ret_tower_id":I
    iget-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    if-eqz v3, :cond_0

    .line 33
    sub-int v1, p3, p1

    .line 34
    .local v1, "xdelta":I
    sub-int v2, p4, p2

    .line 35
    .local v2, "ydelta":I
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    const/16 v4, 0xe1

    if-le v3, v4, :cond_0

    .line 36
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    .line 37
    iget v0, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    .line 40
    .end local v1    # "xdelta":I
    .end local v2    # "ydelta":I
    :cond_0
    return v0
.end method

.method public fingerUp()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/TowerButton;->active:Z

    .line 44
    return-void
.end method

.method public getTowerID()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/magicwach/rdefense/TowerButton;->tower_id:I

    return v0
.end method
