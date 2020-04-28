.class public final Lcom/magicwach/rdefense/PauseButton;
.super Ljava/lang/Object;
.source "PauseButton.java"


# static fields
.field private static final ALPHA_RANGE:I = 0x7f

.field private static final BUTTON_COLOR:I = -0x5f600000

.field private static final BUTTON_HEIGHT:I = 0x30

.field private static final BUTTON_HPAD:I = 0xf

.field private static final BUTTON_VPAD:I = 0xf

.field private static final BUTTON_WIDTH:I = 0x30

.field private static final MIN_ALPHA:I = 0x80

.field private static final PAUSE_GAP:I = 0x8

.field private static final PRESS_PAD:I = 0xf


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private frame_index:I

.field private pause_rect1:Landroid/graphics/Rect;

.field private pause_rect2:Landroid/graphics/Rect;

.field private pressed_inside:Z

.field private triangle:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0xf

    const/16 v3, 0x8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    .line 9
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 10
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 11
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 12
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    .line 15
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 16
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 18
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 19
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 20
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 22
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->triangle:Landroid/graphics/Path;

    .line 24
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->triangle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->triangle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->triangle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    return-void
.end method

.method private isActive(I)Z
    .locals 1
    .param p1, "run_mode"    # I

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "run_mode"    # I

    .prologue
    .line 42
    invoke-direct {p0, p3}, Lcom/magicwach/rdefense/PauseButton;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget v1, p0, Lcom/magicwach/rdefense/PauseButton;->frame_index:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/magicwach/rdefense/PauseButton;->frame_index:I

    .line 44
    const/high16 v1, -0x5f600000

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    if-eqz p3, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 47
    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->pause_rect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 49
    iget v1, p0, Lcom/magicwach/rdefense/PauseButton;->frame_index:I

    rem-int/lit16 v0, v1, 0xfe

    .line 50
    .local v0, "alpha":I
    const/16 v1, 0x7f

    if-le v0, v1, :cond_3

    .line 51
    const/16 v1, 0xfe

    sub-int v0, v1, v0

    .line 53
    :cond_3
    add-int/lit16 v1, v0, 0x80

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    iget-object v1, p0, Lcom/magicwach/rdefense/PauseButton;->triangle:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 55
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public fingerDown(III)V
    .locals 2
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    const/16 v1, 0xf

    .line 29
    invoke-direct {p0, p3}, Lcom/magicwach/rdefense/PauseButton;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0xf

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/PauseButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xf

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/PauseButton;->pressed_inside:Z

    .line 34
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fingerUp(III)Z
    .locals 1
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/magicwach/rdefense/PauseButton;->pressed_inside:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/magicwach/rdefense/PauseButton;->fingerDown(III)V

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/magicwach/rdefense/PauseButton;->pressed_inside:Z

    return v0
.end method
