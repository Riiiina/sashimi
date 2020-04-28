.class public Lcom/magicwach/rdefense/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field private static final EFFECT_BORDER:I = 0x1

.field private static final EFFECT_WIDTH:I = 0x26

.field private static final ENERGY_BAR_HEIGHT:I = 0x2

.field private static final ENERGY_BAR_SIDE_BORDER:I = 0x3

.field private static final ENERGY_BAR_TOP_BORDER:I = 0x1

.field private static final ENERGY_BAR_WIDTH:I = 0x22

.field private static final MESSAGE_X_BASE:I = 0xf

.field private static final MESSAGE_Y_BASE:I = 0xf

.field private static final MESSAGE_Y_GAP:I = 0xf

.field private static final MONEY_FLOAT_DIST:I = 0xa

.field private static final MONEY_OVERLAY_COLOR:I = -0x100


# instance fields
.field private active_paint:Landroid/graphics/Paint;

.field private active_tower:Lcom/magicwach/rdefense/ActiveTower;

.field private activity:Landroid/app/Activity;

.field private bg_bmp:Landroid/graphics/Bitmap;

.field private bg_canvas:Landroid/graphics/Canvas;

.field private bg_image:Landroid/graphics/Bitmap;

.field private bitmap_hash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bmp_paint:Landroid/graphics/Paint;

.field private enemy_paint:Landroid/graphics/Paint;

.field private ff_button:Lcom/magicwach/rdefense/FastFwdButton;

.field private frame_index:I

.field frame_num_string:Ljava/lang/String;

.field private level_image_id:I

.field private matrix:Landroid/graphics/Matrix;

.field money_cache:[Ljava/lang/String;

.field private new_level_str:Ljava/lang/StringBuffer;

.field private old_matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private pause_button:Lcom/magicwach/rdefense/PauseButton;

.field private rect:Landroid/graphics/Rect;

.field private text_paint:Landroid/graphics/Paint;

.field private tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

.field private upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

.field private xbase:I

.field private ybase:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/magicwach/rdefense/Display;->activity:Landroid/app/Activity;

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->matrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->old_matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->bitmap_hash:Ljava/util/Map;

    .line 19
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iput v5, p0, Lcom/magicwach/rdefense/Display;->level_image_id:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Lcom/magicwach/rdefense/ActiveTower;

    invoke-direct {v0}, Lcom/magicwach/rdefense/ActiveTower;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    .line 30
    new-instance v0, Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-direct {v0}, Lcom/magicwach/rdefense/UpgradeDialog;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    .line 31
    new-instance v0, Lcom/magicwach/rdefense/PauseButton;

    invoke-direct {v0}, Lcom/magicwach/rdefense/PauseButton;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->pause_button:Lcom/magicwach/rdefense/PauseButton;

    .line 32
    new-instance v0, Lcom/magicwach/rdefense/FastFwdButton;

    iget-object v1, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/FastFwdButton;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->ff_button:Lcom/magicwach/rdefense/FastFwdButton;

    .line 33
    const-string v0, "???"

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->frame_num_string:Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/magicwach/rdefense/TowerButton;

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    .line 35
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    new-instance v1, Lcom/magicwach/rdefense/TowerButton;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lcom/magicwach/rdefense/TowerButton;-><init>(II)V

    aput-object v1, v0, v3

    .line 36
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    new-instance v1, Lcom/magicwach/rdefense/TowerButton;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v4}, Lcom/magicwach/rdefense/TowerButton;-><init>(II)V

    aput-object v1, v0, v4

    .line 37
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    new-instance v1, Lcom/magicwach/rdefense/TowerButton;

    invoke-direct {v1, v4, v6}, Lcom/magicwach/rdefense/TowerButton;-><init>(II)V

    aput-object v1, v0, v6

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->money_cache:[Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->active_paint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_paint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Display;->new_level_str:Ljava/lang/StringBuffer;

    .line 43
    return-void
.end method

.method private drawBullets(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/Bullet;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bullet_list"    # Lcom/magicwach/rdefense/Bullet;
    .param p3, "state_index"    # I

    .prologue
    .line 298
    const-string v7, "D.drawBullets"

    invoke-static {v7}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 300
    .local v3, "old_width":F
    move-object v0, p2

    .local v0, "b":Lcom/magicwach/rdefense/Bullet;
    :goto_0
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Bullet;->getType()I

    move-result v1

    .line 302
    .local v1, "btype":I
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/magicwach/rdefense/BulletData;->color(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Bullet;->getX()I

    move-result v5

    .line 304
    .local v5, "x":I
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Bullet;->getY()I

    move-result v6

    .line 305
    .local v6, "y":I
    packed-switch v1, :pswitch_data_0

    .line 313
    :pswitch_0
    invoke-virtual {v0, p3}, Lcom/magicwach/rdefense/Bullet;->getSize(I)I

    move-result v4

    .line 314
    .local v4, "size":I
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    shr-int/lit8 v8, v4, 0x1

    sub-int v8, v5, v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 315
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    shr-int/lit8 v8, v4, 0x1

    sub-int v8, v6, v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 316
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 317
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 318
    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    .end local v4    # "size":I
    :goto_1
    iget-object v0, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Bullet;->getDirection()Lcom/magicwach/rdefense/Vector;

    move-result-object v7

    invoke-static {v7}, Lcom/magicwach/rdefense/Vector;->arctan(Lcom/magicwach/rdefense/Vector;)I

    move-result v7

    invoke-static {v1, v7}, Lcom/magicwach/rdefense/BulletData;->getDirectionImage(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 309
    .local v2, "img":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/magicwach/rdefense/BulletData;->size(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    sub-int v7, v5, v7

    int-to-float v7, v7

    invoke-static {v1}, Lcom/magicwach/rdefense/BulletData;->size(I)I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    sub-int v8, v6, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 322
    .end local v1    # "btype":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v2    # "img":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawEnemiesAndTowers(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p3, "state_index"    # I

    .prologue
    .line 231
    const-string v6, "D.drawEandT"

    invoke-static {v6}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getSortedList()Lcom/magicwach/rdefense/GridObject;

    move-result-object v5

    .line 233
    .local v5, "sorted_list":Lcom/magicwach/rdefense/GridObject;
    mul-int/lit8 v6, p3, 0x3

    rem-int/lit8 v1, v6, 0xe

    .line 234
    .local v1, "flame_shift":I
    :goto_0
    if-eqz v5, :cond_1

    .line 235
    invoke-virtual {v5}, Lcom/magicwach/rdefense/GridObject;->getClassType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 236
    move-object v0, v5

    check-cast v0, Lcom/magicwach/rdefense/GameTower;

    move-object v6, v0

    invoke-direct {p0, p1, v6}, Lcom/magicwach/rdefense/Display;->drawTower(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameTower;)V

    .line 234
    :goto_1
    iget-object v5, v5, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    goto :goto_0

    .line 238
    :cond_0
    move-object v0, v5

    check-cast v0, Lcom/magicwach/rdefense/Enemy;

    move-object v6, v0

    invoke-direct {p0, p1, v6, v1, p3}, Lcom/magicwach/rdefense/Display;->drawEnemy(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/Enemy;II)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v3

    .line 242
    .local v3, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {v3}, Lcom/magicwach/rdefense/LevelData;->getLevelOverlays()[Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v4

    .line 243
    .local v4, "lo":[Lcom/magicwach/rdefense/LevelOverlay;
    if-eqz v4, :cond_2

    .line 244
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 245
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/magicwach/rdefense/LevelOverlay;->bitmap:Landroid/graphics/Bitmap;

    aget-object v7, v4, v2

    iget v7, v7, Lcom/magicwach/rdefense/LevelOverlay;->x:I

    int-to-float v7, v7

    aget-object v8, v4, v2

    iget v8, v8, Lcom/magicwach/rdefense/LevelOverlay;->y:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 249
    .end local v2    # "idx":I
    :cond_2
    return-void
.end method

.method private drawEnemy(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/Enemy;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "ge"    # Lcom/magicwach/rdefense/Enemy;
    .param p3, "flame_shift"    # I
    .param p4, "state_index"    # I

    .prologue
    .line 251
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/magicwach/rdefense/EnemyData;->drawShiftX(I)I

    move-result v7

    add-int v3, v6, v7

    .line 252
    .local v3, "left":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/magicwach/rdefense/EnemyData;->drawShiftY(I)I

    move-result v7

    add-int v4, v6, v7

    .line 253
    .local v4, "top":I
    iget v6, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    sget v7, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_0

    add-int/lit8 v6, v3, 0x28

    iget v7, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    if-le v6, v7, :cond_0

    iget v6, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    sget v7, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v4, 0x28

    iget v7, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    if-le v6, v7, :cond_0

    .line 257
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    add-int/lit8 v7, v3, 0x1

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 258
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    add-int/lit8 v7, v4, 0x1

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 259
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    add-int/lit8 v7, v3, 0x26

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 260
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    add-int/lit8 v7, v4, 0x26

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 262
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getDeathFrame()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 263
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getDeathFrame()I

    move-result v0

    .line 264
    .local v0, "death_frame":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getSlowCounter()I

    move-result v6

    if-lez v6, :cond_1

    .line 265
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getOrientation()I

    move-result v7

    shr-int/lit8 v8, v0, 0x2

    invoke-static {v6, v7, v8}, Lcom/magicwach/rdefense/EnemyData;->slowImage(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    .local v2, "enemy_img":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/magicwach/rdefense/EnemyData;->deathFrames(I)I

    move-result v1

    .line 270
    .local v1, "death_frames":I
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    sub-int v8, p4, v0

    mul-int/lit16 v8, v8, 0xff

    div-int/2addr v8, v1

    sub-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x18

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 272
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    .end local v0    # "death_frame":I
    .end local v2    # "enemy_img":Landroid/graphics/Bitmap;
    .end local v1    # "death_frames":I
    :cond_0
    :goto_1
    return-void

    .line 267
    .restart local v0    # "death_frame":I
    :cond_1
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getOrientation()I

    move-result v7

    shr-int/lit8 v8, v0, 0x1

    invoke-static {v6, v7, v8}, Lcom/magicwach/rdefense/EnemyData;->image(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "enemy_img":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 274
    .end local v0    # "death_frame":I
    .end local v2    # "enemy_img":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getSlowCounter()I

    move-result v6

    if-lez v6, :cond_4

    .line 275
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getOrientation()I

    move-result v7

    shr-int/lit8 v8, p4, 0x2

    invoke-static {v6, v7, v8}, Lcom/magicwach/rdefense/EnemyData;->slowImage(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 279
    .restart local v2    # "enemy_img":Landroid/graphics/Bitmap;
    :goto_2
    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getFireCounter()I

    move-result v6

    if-lez v6, :cond_3

    .line 281
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    const/high16 v7, -0x7f010000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p3

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 283
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, p3

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 284
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    const/16 v8, 0xe

    sub-int/2addr v8, p3

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 285
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    :cond_3
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/magicwach/rdefense/EnemyData;->energyBarOffset(I)I

    move-result v7

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 289
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getHealth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x22

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getMaxHealth()I

    move-result v7

    div-int v5, v6, v7

    .line 290
    .local v5, "width":I
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 291
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    add-int/lit8 v7, v4, 0x1

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 292
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 293
    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->enemy_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 277
    .end local v2    # "enemy_img":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    :cond_4
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v6

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getOrientation()I

    move-result v7

    shr-int/lit8 v8, p4, 0x1

    invoke-static {v6, v7, v8}, Lcom/magicwach/rdefense/EnemyData;->image(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "enemy_img":Landroid/graphics/Bitmap;
    goto/16 :goto_2
.end method

.method private drawEventMessage(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 566
    iget-object v5, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v6, v5, v7

    sub-int/2addr v6, v8

    aput v6, v5, v7

    .line 567
    iget-object v5, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v2, v5, v7

    .line 568
    .local v2, "frames":I
    if-gtz v2, :cond_1

    move v5, v8

    :goto_0
    iput-boolean v5, p2, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 569
    iget-boolean v5, p2, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    if-nez v5, :cond_0

    .line 570
    const/16 v5, 0x1e

    if-ge v2, v5, :cond_2

    mul-int/lit16 v5, v2, 0xff

    div-int/lit8 v5, v5, 0x1e

    move v0, v5

    .line 572
    .local v0, "alpha":I
    :goto_1
    const/16 v3, 0xf

    .line 573
    .local v3, "xpos":I
    iget-object v5, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v8

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v4, v5, 0xf

    .line 575
    .local v4, "ypos":I
    shr-int/lit8 v5, v2, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    move v1, v8

    .line 576
    .local v1, "flash":Z
    :goto_2
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 578
    iget-object v5, p2, Lcom/magicwach/rdefense/GameEvent;->str:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    int-to-float v6, v6

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 579
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    const/16 v6, -0x5f60

    :goto_3
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 580
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 581
    iget-object v5, p2, Lcom/magicwach/rdefense/GameEvent;->str:Ljava/lang/String;

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 582
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    .end local v0    # "alpha":I
    .end local v3    # "xpos":I
    .end local v4    # "ypos":I
    .end local v1    # "flash":Z
    :cond_0
    return-void

    :cond_1
    move v5, v7

    .line 568
    goto :goto_0

    .line 570
    :cond_2
    const/16 v5, 0xff

    move v0, v5

    goto :goto_1

    .restart local v0    # "alpha":I
    .restart local v3    # "xpos":I
    .restart local v4    # "ypos":I
    :cond_3
    move v1, v7

    .line 575
    goto :goto_2

    .restart local v1    # "flash":Z
    :cond_4
    move v6, v9

    .line 579
    goto :goto_3
.end method

.method private drawGameLost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 400
    const-string v0, "\u6e38\u620f\u7ed3\u675f"

    const-string v1, "(\u4ece \u83dc\u5355 \u9009\u62e9 \'\u65b0\u6e38\u620f\' \u518d\u73a9\u4e00\u6b21)"

    invoke-direct {p0, p1, v0, v1}, Lcom/magicwach/rdefense/Display;->drawOverlay(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private drawGameWon(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 396
    const-string v0, "\u606d\u559c: \u60a8\u8d62\u4e86!"

    const-string v1, "(\u4ece \u83dc\u5355 \u9009\u62e9 \'\u65b0\u6e38\u620f\' \u518d\u73a9\u4e00\u6b21)"

    invoke-direct {p0, p1, v0, v1}, Lcom/magicwach/rdefense/Display;->drawOverlay(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private drawInfo(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 356
    const-string v0, "D.drawInfo"

    invoke-static {v0}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-static {p1, v0, p2}, Lcom/magicwach/rdefense/GameHud;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameState;)V

    .line 358
    return-void
.end method

.method private drawNotStarted(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x41600000    # 14.0f

    .line 404
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    const v3, -0x4fffffd0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 406
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 407
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 408
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 409
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    sget v2, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    .line 412
    .local v0, "xcenter":I
    const/16 v1, 0x3c

    .line 413
    .local v1, "ycenter":I
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 414
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 415
    const-string v2, "\u6b22\u8fce\u6765\u5230\u673a\u5668\u4eba\u5854\u9632"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    add-int/lit8 v1, v1, 0xf

    .line 417
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    const-string v2, "(\u70b9\u51fb\u5c4f\u5e55\u5f00\u59cb\u6e38\u620f)"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 419
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 420
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 421
    const/16 v0, 0x32

    .line 422
    const/16 v1, 0x78

    .line 423
    const-string v2, "\u8bf4\u660e:"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    add-int/lit8 v1, v1, 0x1e

    .line 425
    const-string v2, "- \u963b\u6b62\u654c\u4eba\u9003\u8dd1"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    add-int/lit8 v1, v1, 0x14

    .line 427
    const-string v2, "- \u70b9\u51fb\u53f3\u4e0b\u89d2\u6309\u94ae\u62d6\u52a8\u65b0\u5efa\u70ae\u5854"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    add-int/lit8 v1, v1, 0x14

    .line 429
    const-string v2, "- \u53ef\u4ee5\u70b9\u51fb\u70ae\u5854\u8fdb\u884c\u5347\u7ea7"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 430
    add-int/lit8 v1, v1, 0x14

    .line 431
    const-string v2, "- \u53ef\u4ee5\u4f7f\u7528\u60a8\u7684\u624b\u6307\u62d6\u52a8\u6e38\u620f\u5730\u56fe"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 433
    return-void
.end method

.method private drawOverlay(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "title_msg"    # Ljava/lang/String;
    .param p3, "info_msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x60000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 369
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 370
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 371
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 372
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 373
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    sget v2, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    .line 375
    .local v0, "xcenter":I
    sget v2, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    div-int/lit8 v1, v2, 0x2

    .line 376
    .local v1, "ycenter":I
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 377
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 378
    int-to-float v2, v0

    int-to-float v3, v1

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    add-int/lit8 v1, v1, 0xf

    .line 380
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    int-to-float v2, v0

    int-to-float v3, v1

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    return-void
.end method

.method private drawPause(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 386
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    sget v2, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    .line 388
    .local v0, "xcenter":I
    sget v2, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    div-int/lit8 v1, v2, 0x2

    .line 389
    .local v1, "ycenter":I
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 390
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 391
    const-string v2, "\u6e38\u620f\u6682\u505c"

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 392
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 394
    return-void
.end method

.method private drawTower(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameTower;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "t"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    .line 324
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v1

    .line 325
    .local v1, "type":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v4

    mul-int/lit8 v2, v4, 0x28

    .line 326
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    invoke-static {v1}, Lcom/magicwach/rdefense/TowerData;->towerHeight(I)I

    move-result v5

    sub-int v3, v4, v5

    .line 327
    .local v3, "y":I
    iget v4, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    sget v5, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x28

    iget v5, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    sget v5, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x28

    iget v5, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    if-le v4, v5, :cond_0

    .line 331
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameTower;->getDirection()I

    move-result v4

    iget v5, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    shr-int/lit8 v5, v5, 0x2

    invoke-static {v1, v4, v5}, Lcom/magicwach/rdefense/TowerData;->getDirectionImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, "dir_img":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 333
    int-to-float v4, v2

    int-to-float v5, v3

    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    .end local v0    # "dir_img":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private drawTowerButtons(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 360
    const-string v2, "D.drawTowerB"

    invoke-static {v2}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getMoney()I

    move-result v1

    .line 362
    .local v1, "money":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {v4}, Lcom/magicwach/rdefense/ActiveTower;->getTowerID()I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/magicwach/rdefense/TowerButton;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IZ)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 365
    :cond_1
    return-void
.end method

.method private drawUnderlays(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 221
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v1

    .line 222
    .local v1, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getLevelUnderlays()[Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v2

    .line 223
    .local v2, "lo":[Lcom/magicwach/rdefense/LevelOverlay;
    if-eqz v2, :cond_0

    .line 224
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 225
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/magicwach/rdefense/LevelOverlay;->bitmap:Landroid/graphics/Bitmap;

    aget-object v4, v2, v0

    iget v4, v4, Lcom/magicwach/rdefense/LevelOverlay;->x:I

    int-to-float v4, v4

    aget-object v5, v2, v0

    iget v5, v5, Lcom/magicwach/rdefense/LevelOverlay;->y:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "idx":I
    :cond_0
    return-void
.end method

.method private findGoodView(Lcom/magicwach/rdefense/GameState;)V
    .locals 7
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 435
    iput v5, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    .line 436
    iput v5, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    .line 437
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v0

    .line 438
    .local v0, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {v0, v5}, Lcom/magicwach/rdefense/LevelData;->getStartX(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    neg-int v3, v3

    sget v4, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, v6

    .line 439
    .local v1, "xdelta":I
    invoke-virtual {v0, v5}, Lcom/magicwach/rdefense/LevelData;->getStartY(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    neg-int v3, v3

    sget v4, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v6

    .line 440
    .local v2, "ydelta":I
    invoke-virtual {p0, v1, v2, v0}, Lcom/magicwach/rdefense/Display;->scrollView(IILcom/magicwach/rdefense/LevelData;)V

    .line 441
    return-void
.end method

.method private getHashedBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "image_id"    # I

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "val":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 204
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bitmap_hash:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bitmap_hash:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "val":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 211
    .restart local v1    # "val":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 209
    .restart local v1    # "val":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bitmap_hash:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getMoneyString(I)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 548
    invoke-static {p1}, Lcom/magicwach/rdefense/EnemyData;->value(I)I

    move-result v0

    .line 549
    .local v0, "amount":I
    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 550
    const-string v2, ">$100"

    .line 563
    .local v2, "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 552
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->money_cache:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 553
    const/4 v1, 0x1

    .line 554
    .local v1, "new_size":I
    :goto_1
    if-gt v1, v0, :cond_2

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    :cond_2
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/magicwach/rdefense/Display;->money_cache:[Ljava/lang/String;

    .line 557
    .end local v1    # "new_size":I
    :cond_3
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->money_cache:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 558
    .restart local v2    # "ret":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->money_cache:[Ljava/lang/String;

    aput-object v2, v3, v0

    goto :goto_0
.end method

.method private handleEnemyDefeatedMoneyAdd(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/GameEvent;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "state_index"    # I
    .param p3, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p4, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "changed_score_string":Z
    iget-object v5, p4, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v7

    sub-int v1, p2, v5

    .line 536
    .local v1, "dist":I
    iget-object v5, p4, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    add-int/lit8 v3, v5, 0x5

    .line 537
    .local v3, "xpos":I
    iget-object v5, p4, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x14

    sub-int v4, v5, v1

    .line 538
    .local v4, "ypos":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    if-gez v1, :cond_1

    :cond_0
    move v5, v8

    :goto_0
    iput-boolean v5, p4, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 539
    iget-object v5, p4, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Lcom/magicwach/rdefense/Display;->getMoneyString(I)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "money_string":Ljava/lang/String;
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 542
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    int-to-float v5, v3

    int-to-float v6, v4

    iget-object v7, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    iget-object v5, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    return-void

    .end local v2    # "money_string":Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 538
    goto :goto_0
.end method

.method private handleExplosionEvent(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameEvent;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "state_index"    # I
    .param p3, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 520
    iget-object v3, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    .line 521
    .local v0, "first_state":I
    iget-object v3, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v4, 0x4

    aget v2, v3, v4

    .line 522
    .local v2, "num_states":I
    if-lt p2, v0, :cond_0

    add-int v3, v0, v2

    if-lt p2, v3, :cond_2

    :cond_0
    move v3, v6

    :goto_0
    iput-boolean v3, p3, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 524
    iget-boolean v3, p3, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    if-nez v3, :cond_1

    .line 525
    sub-int v1, p2, v0

    .line 526
    .local v1, "frame":I
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 527
    iget-object v3, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3, v1}, Lcom/magicwach/rdefense/ExplosionData;->image(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v4, v4, v5

    shr-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v6

    shr-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 531
    .end local v1    # "frame":I
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 522
    goto :goto_0
.end method

.method private handleExplosionEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "e"    # Lcom/magicwach/rdefense/GameEvent;
    .param p3, "state_index"    # I

    .prologue
    .line 492
    const-string v0, "D.explosion"

    invoke-static {v0}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 493
    :goto_0
    if-eqz p2, :cond_0

    .line 494
    invoke-direct {p0, p1, p3, p2}, Lcom/magicwach/rdefense/Display;->handleExplosionEvent(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameEvent;)V

    .line 493
    iget-object p2, p2, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method private handleMoneyEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p3, "state_index"    # I

    .prologue
    .line 485
    const-string v1, "D.$Overlay"

    invoke-static {v1}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 487
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_0
    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/magicwach/rdefense/Display;->handleEnemyDefeatedMoneyAdd(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/GameEvent;)V

    .line 487
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 490
    :cond_0
    return-void
.end method

.method private handleOverlayEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-virtual {p2, v3}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 445
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_0
    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0, p1, v0}, Lcom/magicwach/rdefense/Display;->drawEventMessage(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;)V

    .line 445
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 448
    :cond_0
    const/4 v1, 0x0

    .line 449
    .local v1, "handled":Z
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 450
    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_1
    if-eqz v0, :cond_2

    .line 452
    iput-boolean v3, v0, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 453
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    if-nez v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v0}, Lcom/magicwach/rdefense/AchievementAlert;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameEvent;)V

    .line 455
    const/4 v1, 0x1

    .line 451
    :cond_1
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    goto :goto_1

    .line 458
    :cond_2
    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 459
    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_2
    if-eqz v0, :cond_4

    .line 461
    iput-boolean v3, v0, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 462
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 463
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->text_paint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v0}, Lcom/magicwach/rdefense/ScoreOverlay;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameEvent;)V

    .line 460
    :cond_3
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    goto :goto_2

    .line 466
    :cond_4
    return-void
.end method

.method private handleParticleEvent(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameEvent;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "state_index"    # I
    .param p3, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 498
    iget-object v3, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v4, 0x7

    aget v0, v3, v4

    .line 499
    .local v0, "first_state":I
    iget-object v3, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/16 v4, 0x8

    aget v1, v3, v4

    .line 500
    .local v1, "num_states":I
    if-lt p2, v0, :cond_0

    add-int v3, v0, v1

    if-lt p2, v3, :cond_2

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, p3, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 502
    iget-boolean v3, p3, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    if-nez v3, :cond_1

    .line 503
    sub-int v2, p2, v0

    .line 504
    .local v2, "state_sub_range":I
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v4, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v4, v4, v5

    iget-object v5, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 507
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v4, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v4, v4, v7

    iget-object v5, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 510
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v8

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 511
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v5, v5, v8

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 512
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    iget-object v4, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    iget-object v4, p3, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-int v5, v1, v2

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 515
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 516
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 518
    .end local v2    # "state_sub_range":I
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 500
    goto :goto_0
.end method

.method private handleParticleEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "e"    # Lcom/magicwach/rdefense/GameEvent;
    .param p3, "state_index"    # I

    .prologue
    .line 479
    const-string v0, "D.particles"

    invoke-static {v0}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 480
    :goto_0
    if-eqz p2, :cond_0

    .line 481
    invoke-direct {p0, p1, p3, p2}, Lcom/magicwach/rdefense/Display;->handleParticleEvent(Landroid/graphics/Canvas;ILcom/magicwach/rdefense/GameEvent;)V

    .line 480
    iget-object p2, p2, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method private handlePredrawEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 468
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0, p2}, Lcom/magicwach/rdefense/Display;->setupBackgroundAndOverlays(Lcom/magicwach/rdefense/GameState;)V

    .line 471
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0, p2}, Lcom/magicwach/rdefense/Display;->updateBackground(Lcom/magicwach/rdefense/GameState;)V

    .line 474
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    .line 477
    :cond_2
    return-void
.end method

.method private markAllEventsFinished(Lcom/magicwach/rdefense/GameState;)V
    .locals 3
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "event_type":I
    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 215
    invoke-virtual {p1, v0}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v1

    .local v1, "ge":Lcom/magicwach/rdefense/GameEvent;
    :goto_1
    if-eqz v1, :cond_0

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 215
    iget-object v1, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_1

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "ge":Lcom/magicwach/rdefense/GameEvent;
    :cond_1
    return-void
.end method

.method private setupBackgroundAndOverlays(Lcom/magicwach/rdefense/GameState;)V
    .locals 5
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v1

    .line 186
    .local v1, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-static {}, Lcom/magicwach/rdefense/LevelData;->getImageID()I

    move-result v3

    iput v3, p0, Lcom/magicwach/rdefense/Display;->level_image_id:I

    .line 187
    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/magicwach/rdefense/Display;->level_image_id:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/magicwach/rdefense/Display;->bg_image:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getLevelOverlays()[Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v2

    .line 189
    .local v2, "lo":[Lcom/magicwach/rdefense/LevelOverlay;
    if-eqz v2, :cond_0

    .line 190
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 191
    aget-object v3, v2, v0

    aget-object v4, v2, v0

    iget v4, v4, Lcom/magicwach/rdefense/LevelOverlay;->image_id:I

    invoke-direct {p0, v4}, Lcom/magicwach/rdefense/Display;->getHashedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/magicwach/rdefense/LevelOverlay;->bitmap:Landroid/graphics/Bitmap;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "idx":I
    :cond_0
    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getLevelUnderlays()[Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_1

    .line 196
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 197
    aget-object v3, v2, v0

    aget-object v4, v2, v0

    iget v4, v4, Lcom/magicwach/rdefense/LevelOverlay;->image_id:I

    invoke-direct {p0, v4}, Lcom/magicwach/rdefense/Display;->getHashedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/magicwach/rdefense/LevelOverlay;->bitmap:Landroid/graphics/Bitmap;

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "idx":I
    :cond_1
    return-void
.end method

.method private updateBackground(Lcom/magicwach/rdefense/GameState;)V
    .locals 7
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v5, 0x0

    .line 338
    const-string v2, "D.updateBG"

    invoke-static {v2}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_bmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v0

    .line 341
    .local v0, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_bmp:Landroid/graphics/Bitmap;

    .line 344
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->bg_bmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_canvas:Landroid/graphics/Canvas;

    .line 346
    .end local v0    # "level_data":Lcom/magicwach/rdefense/LevelData;
    :cond_0
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->bg_image:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getTowerList()Lcom/magicwach/rdefense/GameTower;

    move-result-object v1

    .local v1, "t":Lcom/magicwach/rdefense/GameTower;
    :goto_0
    if-eqz v1, :cond_1

    .line 348
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/magicwach/rdefense/TowerData;->image(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    int-to-float v5, v5

    iget-object v6, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v1, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_0

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-virtual {v2}, Lcom/magicwach/rdefense/UpgradeDialog;->initButtons()V

    .line 354
    return-void
.end method


# virtual methods
.method public activateUpgradeDialog(Lcom/magicwach/rdefense/GameTower;)V
    .locals 4
    .param p1, "tower"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    iget v1, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    iget v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/magicwach/rdefense/UpgradeDialog;->enable(Lcom/magicwach/rdefense/GameTower;II)V

    .line 155
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/ActiveTower;->setTowerId(I)V

    .line 156
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v1

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/magicwach/rdefense/ActiveTower;->setPosition(III)V

    .line 158
    return-void
.end method

.method public checkTowerButtons(ZIIII)Z
    .locals 3
    .param p1, "drag_mode"    # Z
    .param p2, "xpos"    # I
    .param p3, "ypos"    # I
    .param p4, "pressedx"    # I
    .param p5, "pressedy"    # I

    .prologue
    .line 115
    const/4 v1, -0x1

    .line 116
    .local v1, "tower_id":I
    const/4 v0, 0x0

    .line 117
    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/magicwach/rdefense/TowerButton;->fingerDrag(IIII)I

    move-result v1

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p3}, Lcom/magicwach/rdefense/TowerButton;->fingerDown(II)I

    move-result v1

    .restart local v1    # "tower_id":I
    goto :goto_1

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    if-ltz v1, :cond_2

    .line 127
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {v2, v1}, Lcom/magicwach/rdefense/ActiveTower;->setTowerId(I)V

    .line 129
    :cond_2
    if-ltz v1, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public clearActiveTower()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/ActiveTower;->setTowerId(I)V

    .line 141
    return-void
.end method

.method public clearTowerButtons()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/magicwach/rdefense/Display;->tower_buttons:[Lcom/magicwach/rdefense/TowerButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/magicwach/rdefense/TowerButton;->fingerUp()V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v2, "D.draw"

    invoke-static {v2}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v1

    .line 51
    .local v1, "state_index":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v0

    .line 52
    .local v0, "run_state":I
    invoke-direct {p0, p2}, Lcom/magicwach/rdefense/Display;->markAllEventsFinished(Lcom/magicwach/rdefense/GameState;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->handlePredrawEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 54
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->old_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 55
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 56
    const-string v2, "D.bg_bmp"

    invoke-static {v2}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->bg_bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->bmp_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->drawUnderlays(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lcom/magicwach/rdefense/Display;->drawEnemiesAndTowers(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;I)V

    .line 60
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/magicwach/rdefense/Display;->handleParticleEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;I)V

    .line 61
    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/magicwach/rdefense/Display;->handleExplosionEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameEvent;I)V

    .line 62
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getBulletList()Lcom/magicwach/rdefense/Bullet;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/magicwach/rdefense/Display;->drawBullets(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/Bullet;I)V

    .line 63
    invoke-direct {p0, p1, p2, v1}, Lcom/magicwach/rdefense/Display;->handleMoneyEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;I)V

    .line 64
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, p2}, Lcom/magicwach/rdefense/ActiveTower;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameState;)V

    .line 65
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->old_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 66
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->drawTowerButtons(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 69
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->handleOverlayEvents(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 96
    return-void

    .line 72
    :pswitch_0
    iget v2, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    .line 73
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    .line 74
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->drawInfo(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 75
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getMoney()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/magicwach/rdefense/UpgradeDialog;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->pause_button:Lcom/magicwach/rdefense/PauseButton;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Lcom/magicwach/rdefense/PauseButton;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 77
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->ff_button:Lcom/magicwach/rdefense/FastFwdButton;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Lcom/magicwach/rdefense/FastFwdButton;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/Display;->drawInfo(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Display;->drawPause(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->pause_button:Lcom/magicwach/rdefense/PauseButton;

    iget-object v3, p0, Lcom/magicwach/rdefense/Display;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Lcom/magicwach/rdefense/PauseButton;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Display;->drawGameLost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Display;->drawGameWon(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Display;->drawNotStarted(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public fastFwdButtonFingerDown(III)V
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->ff_button:Lcom/magicwach/rdefense/FastFwdButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/FastFwdButton;->fingerDown(III)V

    .line 180
    return-void
.end method

.method public fastFwdButtonFingerUp(III)Z
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->ff_button:Lcom/magicwach/rdefense/FastFwdButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/FastFwdButton;->fingerUp(III)Z

    move-result v0

    return v0
.end method

.method public getActiveTowerID()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/ActiveTower;->getTowerID()I

    move-result v0

    return v0
.end method

.method public init(Lcom/magicwach/rdefense/GameState;)V
    .locals 1
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/Display;->frame_index:I

    .line 46
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Display;->findGoodView(Lcom/magicwach/rdefense/GameState;)V

    .line 47
    return-void
.end method

.method public moveActiveTower(III)V
    .locals 1
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I
    .param p3, "state_idx"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->active_tower:Lcom/magicwach/rdefense/ActiveTower;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/ActiveTower;->setPosition(III)V

    .line 138
    return-void
.end method

.method public pauseButtonFingerDown(III)V
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->pause_button:Lcom/magicwach/rdefense/PauseButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/PauseButton;->fingerDown(III)V

    .line 174
    return-void
.end method

.method public pauseButtonFingerUp(III)Z
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->pause_button:Lcom/magicwach/rdefense/PauseButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/PauseButton;->fingerUp(III)Z

    move-result v0

    return v0
.end method

.method public screen2GridX(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 146
    iget v0, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public screen2GridY(IZ)I
    .locals 4
    .param p1, "y"    # I
    .param p2, "use_finger_offset"    # Z

    .prologue
    const/4 v3, 0x0

    .line 149
    if-eqz p2, :cond_0

    const/16 v2, 0x3c

    move v0, v2

    .line 150
    .local v0, "offset":I
    :goto_0
    iget v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    div-int/lit8 v1, v2, 0x28

    .line 151
    .local v1, "ygrid":I
    if-ltz v1, :cond_1

    move v2, v1

    :goto_1
    return v2

    .end local v0    # "offset":I
    .end local v1    # "ygrid":I
    :cond_0
    move v0, v3

    .line 149
    goto :goto_0

    .restart local v0    # "offset":I
    .restart local v1    # "ygrid":I
    :cond_1
    move v2, v3

    .line 151
    goto :goto_1
.end method

.method public scrollView(IILcom/magicwach/rdefense/LevelData;)V
    .locals 5
    .param p1, "xdelta"    # I
    .param p2, "ydelta"    # I
    .param p3, "level_data"    # Lcom/magicwach/rdefense/LevelData;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget v2, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    .line 99
    iget v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    sub-int/2addr v2, p2

    iput v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    .line 100
    invoke-virtual {p3}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    sub-int v0, v2, v3

    .line 102
    .local v0, "xmax":I
    invoke-virtual {p3}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x32

    .line 104
    .local v1, "ymax":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 106
    :cond_1
    iget v2, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    if-gez v2, :cond_4

    iput v4, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    .line 108
    :cond_2
    :goto_0
    iget v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    if-gez v2, :cond_5

    iput v4, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    .line 110
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/magicwach/rdefense/Display;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 111
    return-void

    .line 107
    :cond_4
    iget v2, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    if-le v2, v0, :cond_2

    iput v0, p0, Lcom/magicwach/rdefense/Display;->xbase:I

    goto :goto_0

    .line 109
    :cond_5
    iget v2, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    if-le v2, v1, :cond_3

    iput v1, p0, Lcom/magicwach/rdefense/Display;->ybase:I

    goto :goto_1
.end method

.method public upgradeDialogCancel()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/UpgradeDialog;->disable()V

    .line 171
    return-void
.end method

.method public upgradeDialogFingerDown(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-virtual {v0, p1, p2}, Lcom/magicwach/rdefense/UpgradeDialog;->fingerDown(II)Z

    move-result v0

    return v0
.end method

.method public upgradeDialogFingerDrag(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-virtual {v0, p1, p2}, Lcom/magicwach/rdefense/UpgradeDialog;->fingerDrag(II)V

    .line 164
    return-void
.end method

.method public upgradeDialogFingerUp(IILcom/magicwach/rdefense/GameState;)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/magicwach/rdefense/Display;->clearActiveTower()V

    .line 167
    iget-object v0, p0, Lcom/magicwach/rdefense/Display;->upgrade_dialog:Lcom/magicwach/rdefense/UpgradeDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magicwach/rdefense/UpgradeDialog;->fingerUp(IILcom/magicwach/rdefense/GameState;)Z

    move-result v0

    return v0
.end method
