.class public Lcom/activefrequency/android/rockout/SoundPoolTouchListener;
.super Ljava/lang/Object;
.source "SoundPoolTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final CHORD_1_DOWN:I = 0x0

.field private static final CHORD_1_UP:I = 0x1

.field private static final CHORD_2_DOWN:I = 0x2

.field private static final CHORD_2_UP:I = 0x3

.field private static final CHORD_3_DOWN:I = 0x4

.field private static final CHORD_3_UP:I = 0x5

.field private static final SOUND_POOL_SIZE:I = 0x14

.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private curr_pool_sound:I

.field private curr_stroke:I

.field private direction:F

.field height:I

.field newdirection:F

.field newx:F

.field private pool_mappings:[I

.field private prev_pool_sound:I

.field private prev_stroke:I

.field private prev_x:F

.field private soundPool:Landroid/media/SoundPool;

.field private start_y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "SoundPoolTouchListener"

    sput-object v0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "song"    # Lcom/activefrequency/android/rockout/Song;

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    .line 22
    iput v5, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    .line 23
    iput v5, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_stroke:I

    .line 27
    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    .line 28
    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_x:F

    .line 29
    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    .line 41
    iput-object p1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x14

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    .line 44
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    iget-object v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v2, p2, Lcom/activefrequency/android/rockout/Song;->chord_1_down:I

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 45
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    iget-object v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v2, p2, Lcom/activefrequency/android/rockout/Song;->chord_1_up:I

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 46
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v3, p2, Lcom/activefrequency/android/rockout/Song;->chord_2_down:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    iget-object v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v2, p2, Lcom/activefrequency/android/rockout/Song;->chord_2_up:I

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 48
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v3, p2, Lcom/activefrequency/android/rockout/Song;->chord_3_down:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v3, p2, Lcom/activefrequency/android/rockout/Song;->chord_3_up:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 51
    iput v5, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    .line 52
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, "action":I
    if-ne v0, v3, :cond_0

    .line 78
    iput v4, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    .line 79
    iput v4, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_x:F

    .line 80
    iput v4, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    move v1, v3

    .line 149
    :goto_0
    return v1

    .line 82
    :cond_0
    if-nez v0, :cond_1

    .line 83
    iput v4, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_x:F

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    move v1, v3

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    if-eq v0, v6, :cond_2

    move v1, v3

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newx:F

    .line 93
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_x:F

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newx:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    .line 94
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move v1, v3

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newx:F

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_x:F

    .line 100
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    move v1, v3

    :goto_1
    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    move v2, v3

    :goto_2
    if-ne v1, v2, :cond_6

    move v1, v3

    .line 101
    goto :goto_0

    :cond_4
    move v1, v5

    .line 100
    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_2

    .line 103
    :cond_6
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    move v1, v3

    .line 104
    goto :goto_0

    .line 109
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->height:I

    .line 110
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->direction:F

    .line 111
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_stroke:I

    .line 112
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_pool_sound:I

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_pool_sound:I

    .line 113
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->newdirection:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_b

    .line 115
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->height:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 117
    iput v3, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    .line 144
    :goto_3
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    invoke-virtual {p0, v1}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->playSound(I)I

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_pool_sound:I

    .line 146
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_pool_sound:I

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_pool_sound:I

    if-eq v1, v2, :cond_8

    .line 147
    invoke-virtual {p0}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->stopPrev()V

    :cond_8
    move v1, v3

    .line 149
    goto/16 :goto_0

    .line 120
    :cond_9
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->height:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    .line 122
    const/4 v1, 0x3

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    goto :goto_3

    .line 125
    :cond_a
    const/4 v1, 0x5

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    goto :goto_3

    .line 130
    :cond_b
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->height:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    .line 132
    iput v5, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    goto :goto_3

    .line 135
    :cond_c
    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->start_y:F

    iget v2, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->height:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 137
    iput v6, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    goto :goto_3

    .line 140
    :cond_d
    const/4 v1, 0x4

    iput v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->curr_stroke:I

    goto :goto_3
.end method

.method public playSound(I)I
    .locals 9
    .param p1, "sound"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 56
    .local v7, "mgr":Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 57
    .local v8, "streamVolume":I
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->pool_mappings:[I

    aget v1, v1, p1

    int-to-float v2, v8

    int-to-float v3, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 70
    return-void
.end method

.method public stopPrev()V
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_pool_sound:I

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->prev_pool_sound:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 66
    :cond_0
    return-void
.end method
