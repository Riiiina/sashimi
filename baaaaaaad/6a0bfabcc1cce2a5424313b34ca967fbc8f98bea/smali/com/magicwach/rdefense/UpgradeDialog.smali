.class public final Lcom/magicwach/rdefense/UpgradeDialog;
.super Ljava/lang/Object;
.source "UpgradeDialog.java"


# static fields
.field private static final ANIMATE_FRAMES:I = 0x8

.field private static final BACKGROUND_COLOR:I = 0x30000000

.field private static final BORDER:I = 0x32

.field private static final BUTTON_IPAD:I = 0xa

.field private static final BUTTON_PAD:I = 0xf

.field private static final OUTLINE_COLOR:I = -0x70000000


# instance fields
.field private anim_bounds:Landroid/graphics/Rect;

.field private anim_bounds_inc:Landroid/graphics/Rect;

.field bounds:Landroid/graphics/Rect;

.field private button:[Lcom/magicwach/rdefense/UpgradeButton;

.field private frame_countdown:I

.field private tower:Lcom/magicwach/rdefense/GameTower;


# direct methods
.method public constructor <init>()V
    .locals 14

    .prologue
    const/16 v13, 0xf

    const/16 v12, 0xa

    const/4 v11, 0x0

    const/16 v10, 0x32

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    .line 8
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 10
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    sget v9, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 11
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    sget v9, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 12
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    .line 13
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    .line 14
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/magicwach/rdefense/UpgradeButton;

    iput-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    .line 15
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v8, 0xf

    .line 16
    .local v0, "x1":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v12

    div-int/lit8 v1, v8, 0x2

    .line 17
    .local v1, "x2":I
    add-int/lit8 v2, v1, 0xa

    .line 18
    .local v2, "x3":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v13

    .line 19
    .local v3, "x4":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v8, 0xf

    .line 20
    .local v4, "y1":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v12

    div-int/lit8 v5, v8, 0x2

    .line 21
    .local v5, "y2":I
    add-int/lit8 v6, v5, 0xa

    .line 22
    .local v6, "y3":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v8, v13

    .line 23
    .local v7, "y4":I
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    new-instance v9, Lcom/magicwach/rdefense/UpgradeButton;

    invoke-direct {v9, v0, v4, v1, v5}, Lcom/magicwach/rdefense/UpgradeButton;-><init>(IIII)V

    aput-object v9, v8, v11

    .line 24
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v8, v8, v11

    invoke-virtual {v8, v11}, Lcom/magicwach/rdefense/UpgradeButton;->init(I)V

    .line 25
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    const/4 v9, 0x1

    new-instance v10, Lcom/magicwach/rdefense/UpgradeButton;

    invoke-direct {v10, v2, v4, v3, v5}, Lcom/magicwach/rdefense/UpgradeButton;-><init>(IIII)V

    aput-object v10, v8, v9

    .line 26
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    const/4 v9, 0x2

    new-instance v10, Lcom/magicwach/rdefense/UpgradeButton;

    invoke-direct {v10, v0, v6, v1, v7}, Lcom/magicwach/rdefense/UpgradeButton;-><init>(IIII)V

    aput-object v10, v8, v9

    .line 27
    iget-object v8, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    const/4 v9, 0x3

    new-instance v10, Lcom/magicwach/rdefense/UpgradeButton;

    invoke-direct {v10, v2, v6, v3, v7}, Lcom/magicwach/rdefense/UpgradeButton;-><init>(IIII)V

    aput-object v10, v8, v9

    .line 28
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    .line 90
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "available_cash"    # I

    .prologue
    const/high16 v6, 0x30000000

    const/4 v5, 0x1

    const/high16 v4, -0x70000000

    .line 61
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v1, :cond_0

    .line 62
    iget v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->frame_countdown:I

    if-lez v1, :cond_1

    .line 63
    iget v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->frame_countdown:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->frame_countdown:I

    .line 64
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 65
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 66
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 67
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v1, :cond_2

    move v1, v5

    :goto_0
    return v1

    .line 75
    :cond_1
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p3}, Lcom/magicwach/rdefense/UpgradeButton;->draw(Landroid/graphics/Canvas;I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable(Lcom/magicwach/rdefense/GameTower;II)V
    .locals 3
    .param p1, "tower"    # Lcom/magicwach/rdefense/GameTower;
    .param p2, "xbase"    # I
    .param p3, "ybase"    # I

    .prologue
    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->frame_countdown:I

    .line 93
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    add-int/lit8 v2, v2, 0x14

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 94
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    add-int/lit8 v2, v2, 0x14

    sub-int/2addr v2, p3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 95
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 96
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 97
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v0, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds_inc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->anim_bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 99
    iput-object p1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    .line 100
    invoke-virtual {p0}, Lcom/magicwach/rdefense/UpgradeDialog;->initButtons()V

    .line 101
    return-void
.end method

.method public fingerDown(II)Z
    .locals 2
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_2

    .line 35
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 37
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/magicwach/rdefense/UpgradeButton;->fingerDown(II)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fingerDrag(II)V
    .locals 2
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/magicwach/rdefense/UpgradeButton;->fingerDrag(II)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public fingerUp(IILcom/magicwach/rdefense/GameState;)Z
    .locals 3
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/magicwach/rdefense/UpgradeButton;->fingerUp(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/magicwach/rdefense/UpgradeButton;->getTowerId()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/magicwach/rdefense/GameState;->upgradeTower(Lcom/magicwach/rdefense/GameTower;I)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initButtons()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->tower:Lcom/magicwach/rdefense/GameTower;

    invoke-virtual {v2}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v1

    .line 105
    .local v1, "tower_type":I
    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1}, Lcom/magicwach/rdefense/TowerData;->sellValue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/magicwach/rdefense/UpgradeButton;->setSellLabel(I)V

    .line 106
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/magicwach/rdefense/UpgradeDialog;->button:[Lcom/magicwach/rdefense/UpgradeButton;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/TowerData;->upgradeType(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/magicwach/rdefense/UpgradeButton;->init(I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "tower_type":I
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
