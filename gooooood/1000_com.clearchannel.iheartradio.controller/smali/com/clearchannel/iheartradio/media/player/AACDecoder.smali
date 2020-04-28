.class public final Lcom/clearchannel/iheartradio/media/player/AACDecoder;
.super Ljava/lang/Object;
.source "AACDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;,
        Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "AACDecoder"

.field private static libLoaded:Z


# instance fields
.field private aacdw:I

.field private state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->libLoaded:Z

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;->IDLE:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    .line 37
    return-void
.end method

.method public static declared-synchronized create()Lcom/clearchannel/iheartradio/media/player/AACDecoder;
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->libLoaded:Z

    if-nez v1, :cond_0

    .line 49
    const-string v1, "AACDecoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    sput-boolean v1, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->libLoaded:Z

    .line 54
    :cond_0
    new-instance v1, Lcom/clearchannel/iheartradio/media/player/AACDecoder;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeDecode(I[BII[SI)I
.end method

.method private native nativeStart([BIILcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;)I
.end method

.method private native nativeStop(I)V
.end method


# virtual methods
.method public decode([BII[SI)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "samples"    # [S
    .param p5, "outLen"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;->RUNNING:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget v1, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->aacdw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->nativeDecode(I[BII[SI)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public start([BII)Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    sget-object v2, Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;->IDLE:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 64
    :cond_0
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;-><init>()V

    .line 66
    .local v0, "ret":Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->nativeStart([BIILcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;)I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->aacdw:I

    .line 68
    sget-object v1, Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;->RUNNING:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    .line 70
    return-object v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->aacdw:I

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->aacdw:I

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->nativeStop(I)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->aacdw:I

    .line 94
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;->IDLE:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder;->state:Lcom/clearchannel/iheartradio/media/player/AACDecoder$State;

    .line 95
    return-void
.end method
