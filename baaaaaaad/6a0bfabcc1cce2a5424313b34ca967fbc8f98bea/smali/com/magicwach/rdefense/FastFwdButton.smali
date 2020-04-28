.class public final Lcom/magicwach/rdefense/FastFwdButton;
.super Ljava/lang/Object;
.source "FastFwdButton.java"


# static fields
.field private static final BUTTON_COLOR:I = -0x5f600000

.field private static final BUTTON_HEIGHT:I = 0x30

.field private static final BUTTON_HPAD:I = 0x50

.field private static final BUTTON_VPAD:I = 0xf

.field private static final BUTTON_WIDTH:I = 0x30

.field private static final HPAD:I = 0x5

.field private static final PRESS_PAD:I = 0xf

.field private static final VPAD:I = 0xa


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private ff_img:Landroid/graphics/Bitmap;

.field frame_idx:I

.field private pressed_inside:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v9, 0x41d00000    # 26.0f

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/16 v5, 0x30

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    .line 10
    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    const/16 v3, 0x50

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x30

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 12
    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    sget v3, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    const/16 v4, 0xf

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 14
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->ff_img:Landroid/graphics/Bitmap;

    .line 15
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->ff_img:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v2, -0x5f600000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 18
    .local v1, "triangle":Landroid/graphics/Path;
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    const/high16 v2, 0x42180000    # 38.0f

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "triangle":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 23
    .restart local v1    # "triangle":Landroid/graphics/Path;
    invoke-virtual {v1, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    const/high16 v2, 0x42180000    # 38.0f

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "run_mode"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->frame_idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->frame_idx:I

    .line 43
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->frame_idx:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->ff_img:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    :cond_1
    return-void
.end method

.method public fingerDown(III)V
    .locals 2
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "run_mode"    # I

    .prologue
    const/16 v1, 0xf

    .line 29
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0xf

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xf

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->pressed_inside:Z

    .line 34
    return-void

    .line 29
    :cond_1
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
    iget-boolean v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->pressed_inside:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/magicwach/rdefense/FastFwdButton;->fingerDown(III)V

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/magicwach/rdefense/FastFwdButton;->pressed_inside:Z

    return v0
.end method
