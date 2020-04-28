.class public final Lcom/magicwach/rdefense/ScoreOverlay;
.super Ljava/lang/Object;
.source "ScoreOverlay.java"


# static fields
.field private static final BOTTOM_BORDER:I = 0x32

.field private static final COLUMN_COLOR:I = -0x100

.field private static final COUNTDOWN_FRAMES:I = 0x2d

.field private static final DRAW_ADD:I = 0x1

.field private static final DRAW_HEALTH:I = 0x4

.field private static final DRAW_MONEY:I = 0x8

.field private static final DRAW_PERFECT:I = 0x10

.field private static final DRAW_TOTAL:I = 0x20

.field private static final DRAW_WON:I = 0x2

.field private static final FADE_FRAMES:I = 0x1e

.field private static final HOLD_FRAMES:I = 0x3c

.field private static final LABEL_X:I = 0x32

.field private static final LINE_GAP:I = 0x14

.field private static final RECT_BORDER:I = 0x7

.field private static final SHOW_FRAMES:I = 0xf

.field private static final STATE_ADD:I = 0x1

.field private static final STATE_COUNTDOWN:I = 0x7

.field private static final STATE_COUNTDOWN_PAUSE:I = 0x6

.field private static final STATE_FADE:I = 0x9

.field private static final STATE_HEALTH:I = 0x3

.field private static final STATE_HOLD:I = 0x8

.field private static final STATE_MONEY:I = 0x4

.field private static final STATE_NEW:I = 0x0

.field private static final STATE_PERFECT:I = 0x5

.field private static final STATE_WON:I = 0x2

.field private static final TOTAL_COLOR:I = -0x1

.field private static final VALUE_WIDTH:I = 0x64

.field private static final VALUE_X:I = 0x15e

.field private static add_string:Ljava/lang/String;

.field private static health_string:Ljava/lang/String;

.field private static money_string:Ljava/lang/String;

.field private static perfect_string:Ljava/lang/String;

.field private static rect:Landroid/graphics/Rect;

.field private static total_string:Ljava/lang/String;

.field private static won_string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameEvent;)V
    .locals 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "e"    # Lcom/magicwach/rdefense/GameEvent;

    .prologue
    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 8
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v4, v0, 0x1

    .line 9
    .local v4, "frame":I
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 10
    .local v7, "state":I
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    .line 11
    .local v6, "original":I
    iget-object v0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 12
    .local v0, "add":I
    iget-object v1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x4

    aget v11, v1, v2

    .line 13
    .local v11, "won":I
    iget-object v1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x5

    aget v5, v1, v2

    .line 14
    .local v5, "health":I
    iget-object v1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x7

    aget v8, v1, v2

    .line 15
    .local v8, "money":I
    iget-object v1, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x6

    aget v9, v1, v2

    .line 16
    .local v9, "perfect":I
    const/16 v1, 0xff

    .line 17
    .local v1, "alpha":I
    const/4 v2, 0x0

    .line 18
    .local v2, "draw_flags":I
    const/4 v3, 0x2

    .line 19
    .local v3, "draw_rows":I
    if-lez v11, :cond_0

    add-int/lit8 v3, v3, 0x3

    .line 20
    :cond_0
    if-lez v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 21
    :cond_1
    sget-object v10, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    if-nez v10, :cond_2

    invoke-static {}, Lcom/magicwach/rdefense/ScoreOverlay;->initRect()V

    .line 22
    :cond_2
    packed-switch v7, :pswitch_data_0

    move v0, v2

    .local v0, "draw_flags":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v7

    .local v10, "state":I
    move v7, v4

    .line 117
    .end local v4    # "frame":I
    .end local v1    # "alpha":I
    .end local v2    # "draw_flags":I
    .local v7, "frame":I
    :goto_0
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    shr-int/lit8 v1, v6, 0x2

    sub-int v1, v6, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    sget-object v1, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    const/16 v1, -0x100

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x14

    sub-int/2addr v1, v2

    .line 123
    .local v1, "y":I
    sget-object v2, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    const/16 v3, 0x14

    sub-int v3, v1, v3

    const/4 v4, 0x7

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 124
    .end local v3    # "draw_rows":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    .line 125
    const-string v2, "\u5f97\u5206:"

    sget-object v3, Lcom/magicwach/rdefense/ScoreOverlay;->add_string:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 128
    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    if-lez v11, :cond_4

    .line 129
    const-string v2, "\u80dc\u5229\u5956\u91d1:"

    sget-object v3, Lcom/magicwach/rdefense/ScoreOverlay;->won_string:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 132
    .restart local v1    # "y":I
    :cond_4
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_5

    if-lez v5, :cond_5

    .line 133
    const-string v2, "Remaining Health Bonus:"

    sget-object v3, Lcom/magicwach/rdefense/ScoreOverlay;->health_string:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 136
    .restart local v1    # "y":I
    :cond_5
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_6

    if-lez v8, :cond_6

    .line 137
    const-string v2, "\u5269\u4f59\u5956\u91d1:"

    sget-object v3, Lcom/magicwach/rdefense/ScoreOverlay;->money_string:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 140
    .restart local v1    # "y":I
    :cond_6
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_e

    if-lez v9, :cond_e

    .line 141
    const-string v2, "\u5b8c\u6210\u6e38\u620f\u5956\u91d1:"

    sget-object v3, Lcom/magicwach/rdefense/ScoreOverlay;->perfect_string:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "y":I
    move v8, v1

    .line 144
    .end local v1    # "y":I
    .local v8, "y":I
    :goto_1
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 145
    .end local v0    # "draw_flags":I
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    const/16 v0, 0x14

    sub-int v0, v8, v0

    add-int/lit8 v0, v0, 0x2

    .line 148
    .local v0, "line_y":I
    const/high16 v1, 0x42480000    # 50.0f

    int-to-float v2, v0

    const/high16 v3, 0x43e10000    # 450.0f

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    .end local v5    # "health":I
    .end local v0    # "line_y":I
    const-string v0, "\u83b7\u5f97\u5956\u52b1\u70b9\u6570"

    sget-object v1, Lcom/magicwach/rdefense/ScoreOverlay;->total_string:Ljava/lang/String;

    invoke-static {p0, p1, v8, v0, v1}, Lcom/magicwach/rdefense/ScoreOverlay;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 152
    .end local v8    # "y":I
    .local p0, "y":I
    :goto_2
    iget-object p0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    .end local p0    # "y":I
    const/4 v0, 0x0

    aput v7, p0, v0

    .line 153
    iget-object p0, p2, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 p2, 0x1

    aput v10, p0, p2

    .line 154
    .end local p2    # "e":Lcom/magicwach/rdefense/GameEvent;
    const/16 p0, 0xff

    if-ge v6, p0, :cond_7

    .line 155
    const/16 p0, 0xff

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    :cond_7
    return-void

    .line 24
    .end local v10    # "state":I
    .local v0, "add":I
    .local v1, "alpha":I
    .restart local v2    # "draw_flags":I
    .restart local v3    # "draw_rows":I
    .restart local v4    # "frame":I
    .restart local v5    # "health":I
    .local v6, "original":I
    .local v7, "state":I
    .local v8, "money":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    .restart local p2    # "e":Lcom/magicwach/rdefense/GameEvent;
    :pswitch_0
    const/16 v10, 0xf

    if-le v4, v10, :cond_8

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "add":I
    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->add_string:Ljava/lang/String;

    .line 27
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->total_string:Ljava/lang/String;

    .line 28
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->won_string:Ljava/lang/String;

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->health_string:Ljava/lang/String;

    .line 30
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->money_string:Ljava/lang/String;

    .line 31
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->perfect_string:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    .local v0, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v0

    .restart local v10    # "state":I
    move v7, v4

    .local v7, "frame":I
    move v0, v2

    .local v0, "draw_flags":I
    goto/16 :goto_0

    .line 34
    .end local v10    # "state":I
    .local v0, "add":I
    .local v6, "original":I
    .local v7, "state":I
    :cond_8
    mul-int/lit16 v0, v4, 0xff

    div-int/lit8 v0, v0, 0xf

    .local v0, "alpha":I
    move v6, v0

    .local v6, "alpha":I
    move v10, v7

    .restart local v10    # "state":I
    move v0, v2

    .local v0, "draw_flags":I
    move v7, v4

    .line 36
    .local v7, "frame":I
    goto/16 :goto_0

    .line 38
    .end local v10    # "state":I
    .local v0, "add":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 39
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 40
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 41
    .local v2, "frame":I
    if-lez v11, :cond_9

    .end local v4    # "frame":I
    const/4 v4, 0x2

    .local v4, "state":I
    :goto_3
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .end local v4    # "state":I
    .end local v10    # "state":I
    .local v6, "original":I
    .local v7, "state":I
    :cond_9
    const/4 v4, 0x6

    goto :goto_3

    .line 45
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    :pswitch_2
    const/4 v0, 0x3

    .line 46
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 47
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 48
    .local v2, "frame":I
    const/4 v4, 0x3

    .local v4, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .line 52
    .end local v10    # "state":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_3
    const/4 v0, 0x7

    .line 53
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 54
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 55
    .local v2, "frame":I
    const/4 v4, 0x4

    .local v4, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .line 59
    .end local v10    # "state":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_4
    const/16 v0, 0xf

    .line 60
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 61
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 62
    .local v2, "frame":I
    if-lez v9, :cond_a

    .end local v4    # "frame":I
    const/4 v4, 0x5

    .local v4, "state":I
    :goto_4
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .end local v4    # "state":I
    .end local v10    # "state":I
    .local v6, "original":I
    .local v7, "state":I
    :cond_a
    const/4 v4, 0x6

    goto :goto_4

    .line 66
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    :pswitch_5
    const/16 v0, 0x1f

    .line 68
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 69
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 70
    .local v2, "frame":I
    const/4 v4, 0x6

    .local v4, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .line 74
    .end local v10    # "state":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_6
    const/16 v0, 0x3f

    .line 76
    .local v0, "draw_flags":I
    const/16 v2, 0xf

    if-le v4, v2, :cond_f

    .line 77
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 78
    .local v2, "frame":I
    const/4 v4, 0x7

    .local v4, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .restart local v10    # "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .line 82
    .end local v10    # "state":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_7
    add-int/2addr v0, v11

    add-int/2addr v0, v5

    add-int/2addr v0, v8

    add-int v10, v0, v9

    .line 83
    .local v10, "total_bonus":I
    const/16 v0, 0x3f

    .line 85
    .local v0, "draw_flags":I
    const/16 v2, 0x2d

    if-le v4, v2, :cond_b

    .line 86
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 87
    .local v2, "frame":I
    const/16 v4, 0x8

    .local v4, "state":I
    move v7, v10

    .line 91
    .end local v10    # "total_bonus":I
    .local v7, "total_bonus":I
    :goto_5
    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .end local v6    # "original":I
    move-result-object v6

    sput-object v6, Lcom/magicwach/rdefense/ScoreOverlay;->total_string:Ljava/lang/String;

    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .local v10, "state":I
    move v7, v2

    .line 92
    .local v7, "frame":I
    goto/16 :goto_0

    .line 89
    .end local v2    # "frame":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    .local v10, "total_bonus":I
    :cond_b
    mul-int v2, v10, v4

    div-int/lit8 v2, v2, 0x2d

    .local v2, "total_bonus":I
    move v12, v2

    .local v12, "total_bonus":I
    move v2, v4

    .local v2, "frame":I
    move v4, v7

    .local v4, "state":I
    move v7, v12

    .local v7, "total_bonus":I
    goto :goto_5

    .line 94
    .end local v10    # "total_bonus":I
    .end local v12    # "total_bonus":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v7, "state":I
    :pswitch_8
    const/16 v0, 0x3f

    .line 96
    .local v0, "draw_flags":I
    const/16 v2, 0x3c

    if-le v4, v2, :cond_f

    .line 97
    .end local v2    # "draw_flags":I
    const/4 v2, 0x0

    .line 98
    .local v2, "frame":I
    const/16 v4, 0x9

    .local v4, "state":I
    move v6, v1

    .local v6, "alpha":I
    move v10, v4

    .local v10, "state":I
    move v7, v2

    .local v7, "frame":I
    goto/16 :goto_0

    .line 102
    .end local v10    # "state":I
    .local v0, "add":I
    .local v2, "draw_flags":I
    .local v4, "frame":I
    .local v6, "original":I
    .local v7, "state":I
    :pswitch_9
    const/16 v0, 0x1e

    if-lt v4, v0, :cond_c

    .line 103
    .end local v0    # "add":I
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->total_string:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->add_string:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->won_string:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->health_string:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->money_string:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->perfect_string:Ljava/lang/String;

    move v1, v2

    .line 114
    .end local v2    # "draw_flags":I
    .local v1, "draw_flags":I
    :goto_6
    const/16 v0, 0xff

    mul-int/lit16 v2, v4, 0xff

    div-int/lit8 v2, v2, 0x1e

    sub-int/2addr v0, v2

    .local v0, "alpha":I
    move v6, v0

    .local v6, "alpha":I
    move v10, v7

    .restart local v10    # "state":I
    move v0, v1

    .local v0, "draw_flags":I
    move v7, v4

    .local v7, "frame":I
    goto/16 :goto_0

    .line 111
    .end local v10    # "state":I
    .end local v0    # "draw_flags":I
    .local v1, "alpha":I
    .restart local v2    # "draw_flags":I
    .local v6, "original":I
    .local v7, "state":I
    :cond_c
    const/16 v0, 0x3f

    .restart local v0    # "draw_flags":I
    move v1, v0

    .local v1, "draw_flags":I
    goto :goto_6

    .end local v3    # "draw_rows":I
    .end local v4    # "frame":I
    .end local v2    # "draw_flags":I
    .end local v0    # "draw_flags":I
    .end local v1    # "draw_flags":I
    .local v6, "alpha":I
    .local v7, "frame":I
    .local v8, "y":I
    .restart local v10    # "state":I
    :cond_d
    move p0, v8

    .local p0, "y":I
    goto/16 :goto_2

    .restart local v0    # "draw_flags":I
    .local v1, "y":I
    .local v8, "money":I
    .local p0, "canvas":Landroid/graphics/Canvas;
    :cond_e
    move v8, v1

    .local v8, "y":I
    goto/16 :goto_1

    .end local v10    # "state":I
    .local v1, "alpha":I
    .restart local v3    # "draw_rows":I
    .restart local v4    # "frame":I
    .local v6, "original":I
    .local v7, "state":I
    .local v8, "money":I
    :cond_f
    move v6, v1

    .local v6, "alpha":I
    move v10, v7

    .restart local v10    # "state":I
    move v7, v4

    .local v7, "frame":I
    goto/16 :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "y"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    const/high16 v0, 0x42480000    # 50.0f

    int-to-float v1, p2

    invoke-virtual {p0, p3, v0, v1, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    const/high16 v0, 0x43af0000    # 350.0f

    int-to-float v1, p2

    invoke-virtual {p0, p4, v0, v1, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v0, p2, 0x14

    return v0
.end method

.method private static initRect()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    .line 166
    sget-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    const/16 v1, 0x2b

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 167
    sget-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    const/16 v1, 0x1c9

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 168
    sget-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 169
    sget-object v0, Lcom/magicwach/rdefense/ScoreOverlay;->rect:Landroid/graphics/Rect;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    return-void
.end method
