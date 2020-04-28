.class public Lcom/andoop/android/engine/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field protected static gamePaused:Z

.field protected static isScaling:Z

.field protected static lastTicks:J

.field protected static pauseStart:J

.field protected static pauseTime:J

.field protected static paused:Z

.field protected static realTicks:J

.field protected static scale:F

.field protected static scaleDuration:F

.field protected static ticks:J

.field protected static ticksFraction:F

.field protected static ticksSinceLastFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lcom/andoop/android/engine/Time;->isScaling:Z

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/andoop/android/engine/Time;->scale:F

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/andoop/android/engine/Time;->scaleDuration:F

    .line 25
    sput-boolean v1, Lcom/andoop/android/engine/Time;->gamePaused:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyScale(FF)V
    .locals 1
    .param p0, "pScale"    # F
    .param p1, "duration"    # F

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/andoop/android/engine/Time;->isScaling:Z

    .line 46
    sput p1, Lcom/andoop/android/engine/Time;->scaleDuration:F

    .line 47
    sput p0, Lcom/andoop/android/engine/Time;->scale:F

    .line 48
    return-void
.end method

.method public static getLastTicks()J
    .locals 2

    .prologue
    .line 83
    sget-wide v0, Lcom/andoop/android/engine/Time;->lastTicks:J

    return-wide v0
.end method

.method public static getTicks()J
    .locals 2

    .prologue
    .line 56
    sget-wide v0, Lcom/andoop/android/engine/Time;->ticks:J

    return-wide v0
.end method

.method public static getTicksFraction()F
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/andoop/android/engine/Time;->ticksFraction:F

    return v0
.end method

.method public static getTicksSinceLastFrame()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    return v0
.end method

.method public static isGamePaused()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/andoop/android/engine/Time;->gamePaused:Z

    return v0
.end method

.method public static isPaused()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/andoop/android/engine/Time;->paused:Z

    return v0
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 90
    sget-wide v0, Lcom/andoop/android/engine/Time;->ticks:J

    sput-wide v0, Lcom/andoop/android/engine/Time;->pauseStart:J

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/andoop/android/engine/Time;->paused:Z

    .line 92
    return-void
.end method

.method public static pauseGame()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/andoop/android/engine/Time;->gamePaused:Z

    .line 111
    invoke-static {}, Lcom/andoop/android/engine/Time;->pause()V

    .line 112
    return-void
.end method

.method public static resume()V
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/andoop/android/engine/Time;->pauseStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/andoop/android/engine/Time;->pauseTime:J

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/andoop/android/engine/Time;->paused:Z

    .line 100
    return-void
.end method

.method public static resumeGame()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/andoop/android/engine/Time;->gamePaused:Z

    .line 119
    invoke-static {}, Lcom/andoop/android/engine/Time;->resume()V

    .line 120
    return-void
.end method

.method protected static final update()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 28
    sget-wide v0, Lcom/andoop/android/engine/Time;->ticks:J

    sput-wide v0, Lcom/andoop/android/engine/Time;->lastTicks:J

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/andoop/android/engine/Time;->realTicks:J

    .line 30
    sget-boolean v0, Lcom/andoop/android/engine/Time;->paused:Z

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-wide v0, Lcom/andoop/android/engine/Time;->realTicks:J

    sget-wide v2, Lcom/andoop/android/engine/Time;->pauseTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/andoop/android/engine/Time;->ticks:J

    .line 32
    sget-wide v0, Lcom/andoop/android/engine/Time;->lastTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 33
    sget-wide v0, Lcom/andoop/android/engine/Time;->ticks:J

    sget-wide v2, Lcom/andoop/android/engine/Time;->lastTicks:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    .line 34
    sget-boolean v0, Lcom/andoop/android/engine/Time;->isScaling:Z

    if-eqz v0, :cond_2

    .line 35
    sget v0, Lcom/andoop/android/engine/Time;->scaleDuration:F

    sget v1, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/andoop/android/engine/Time;->scaleDuration:F

    .line 36
    sget v0, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    int-to-float v0, v0

    sget v1, Lcom/andoop/android/engine/Time;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    .line 37
    sget v0, Lcom/andoop/android/engine/Time;->scaleDuration:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/andoop/android/engine/Time;->isScaling:Z

    .line 41
    :cond_2
    sget v0, Lcom/andoop/android/engine/Time;->ticksSinceLastFrame:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    sput v0, Lcom/andoop/android/engine/Time;->ticksFraction:F

    goto :goto_0
.end method
