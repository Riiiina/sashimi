.class public final Lcom/magicwach/rdefense/AchievementAlert;
.super Ljava/lang/Object;
.source "AchievementAlert.java"


# static fields
.field private static final BG_ALPHA:I = 0xd0

.field private static final BG_COLOR:I = 0x0

.field private static final FADE_FRAMES:I = 0x1e

.field private static final HEIGHT:I = 0x32

.field private static final HOLD_FRAMES:I = 0x32

.field private static final HOLD_OFF_FRAMES:I = 0x14

.field private static final NAME_COLOR:I = 0xffffff

.field private static final NAME_X_PAD:I = 0x14

.field private static final NAME_Y_PAD:I = 0x28

.field private static final PAD:I = 0xa

.field private static final SHINE_FRAMES:I = 0x5

.field private static final STATE_FADE:I = 0x5

.field private static final STATE_FILL_BR:I = 0x1

.field private static final STATE_FILL_TL:I = 0x0

.field private static final STATE_HOLD:I = 0x4

.field private static final STATE_HOLD_OFF:I = 0x6

.field private static final STATE_UNFILL_BR:I = 0x3

.field private static final STATE_UNFILL_TL:I = 0x2

.field private static final TITLE_COLOR:I = 0xffff00

.field private static final TITLE_X_PAD:I = 0xa

.field private static final TITLE_Y_PAD:I = 0x14

.field private static final WIDTH:I = 0xfa

.field private static rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameEvent;)V
    .locals 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    .line 7
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/magicwach/rdefense/AchievementAlert;->initialize()V

    .line 10
    :cond_0
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x2

    aget v9, v0, v1

    .line 11
    .local v9, "state":I
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v6, v0, 0x1

    .line 12
    .local v6, "frame":I
    const/16 v0, 0xff

    .line 13
    .local v0, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    .line 14
    .local v8, "old_width":F
    const/4 v1, 0x5

    if-ne v9, v1, :cond_1

    .line 15
    const/16 v0, 0xff

    mul-int/lit16 v1, v6, 0xff

    div-int/lit8 v1, v1, 0x1e

    .end local v0    # "alpha":I
    sub-int/2addr v0, v1

    .line 17
    .restart local v0    # "alpha":I
    :cond_1
    const/4 v1, 0x6

    if-eq v9, v1, :cond_2

    .line 18
    iget-object v1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/magicwach/rdefense/AchievementAlert;->drawMain(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 19
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .end local v0    # "alpha":I
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    :cond_2
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v6

    div-int/lit8 v7, v0, 0x5

    .line 23
    .local v7, "hlength":I
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v6

    div-int/lit8 v10, v0, 0x5

    .line 24
    .local v10, "vlength":I
    packed-switch v9, :pswitch_data_0

    .end local p0    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    move p0, v6

    .local p0, "frame":I
    move v0, v9

    .line 81
    .end local v9    # "state":I
    .end local v6    # "frame":I
    .local v0, "state":I
    :goto_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 82
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    :cond_4
    iget-object p1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    .end local p1    # "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    aput p0, p1, v1

    .line 85
    iget-object p0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    .end local p0    # "frame":I
    const/4 p1, 0x2

    aput v0, p0, p1

    .line 86
    return-void

    .line 26
    .end local v0    # "state":I
    .restart local v6    # "frame":I
    .restart local v9    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :pswitch_0
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28
    const/4 p0, 0x5

    if-lt v6, p0, :cond_3

    .line 29
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 30
    .local p0, "frame":I
    const/4 v0, 0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 34
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_1
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    const/4 p0, 0x5

    if-lt v6, p0, :cond_3

    .line 39
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 40
    .local p0, "frame":I
    const/4 v0, 0x2

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 44
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_2
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    const/4 p0, 0x5

    if-lt v6, p0, :cond_3

    .line 49
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 50
    .local p0, "frame":I
    const/4 v0, 0x3

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 54
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_3
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    int-to-float v2, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    const/4 p0, 0x5

    if-lt v6, p0, :cond_3

    .line 57
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 58
    .local p0, "frame":I
    const/4 v0, 0x4

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 62
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_4
    const/16 p0, 0x32

    if-lt v6, p0, :cond_3

    .line 63
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 64
    .local p0, "frame":I
    const/4 v0, 0x5

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 68
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_5
    const/16 p0, 0x1e

    if-lt v6, p0, :cond_3

    .line 69
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x0

    .line 70
    .local p0, "frame":I
    const/4 v0, 0x6

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 74
    .end local v0    # "state":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :pswitch_6
    const/16 p0, 0x14

    if-lt v6, p0, :cond_3

    .line 75
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    move p0, v6

    .local p0, "frame":I
    move v0, v9

    .restart local v0    # "state":I
    goto/16 :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static drawMain(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "alpha"    # I
    .param p3, "type"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    mul-int/lit16 v0, p2, 0xd0

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 98
    const v0, 0xffff00

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    const-string v0, "\u6323\u5f97\u7684\u6210\u5c31:"

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    sget-object v2, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    const v0, 0xffffff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    invoke-static {p3}, Lcom/magicwach/rdefense/AchievementData;->getName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    sget-object v2, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method private static initialize()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    .line 89
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 90
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const/16 v2, 0xfa

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 91
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 92
    sget-object v0, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    sget-object v1, Lcom/magicwach/rdefense/AchievementAlert;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    return-void
.end method
