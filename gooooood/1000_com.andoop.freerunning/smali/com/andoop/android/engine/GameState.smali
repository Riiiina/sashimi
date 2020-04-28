.class public Lcom/andoop/android/engine/GameState;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/GameState$StateListener;
    }
.end annotation


# static fields
.field public static final GAME_STATE_LOSE:I = 0x10

.field public static final GAME_STATE_OVER:I = 0x18

.field public static final GAME_STATE_PAUSED:I = 0x4

.field public static final GAME_STATE_READY:I = 0x1

.field public static final GAME_STATE_RUNNING:I = 0x2

.field public static final GAME_STATE_WIN:I = 0x8


# instance fields
.field private mHasCalledLose:Z

.field private mHasCalledReady:Z

.field private mHasCalledWin:Z

.field private mState:I

.field private mStateBeforePause:I

.field private mStateListener:Lcom/andoop/android/engine/GameState$StateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andoop/android/engine/GameState;-><init>(Lcom/andoop/android/engine/GameState$StateListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/andoop/android/engine/GameState$StateListener;)V
    .locals 1
    .param p1, "pListener"    # Lcom/andoop/android/engine/GameState$StateListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 39
    iput-object p1, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    .line 40
    invoke-virtual {p0}, Lcom/andoop/android/engine/GameState;->reset()V

    .line 41
    return-void
.end method


# virtual methods
.method public isOver()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lose()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x10

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 71
    return-void
.end method

.method public onUpdate(F)V
    .locals 2
    .param p1, "pSeconds"    # F

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 97
    :sswitch_0
    iget-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledReady:Z

    if-nez v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lcom/andoop/android/engine/GameState;->mHasCalledReady:Z

    .line 99
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0}, Lcom/andoop/android/engine/GameState$StateListener;->onGameReady()V

    goto :goto_0

    .line 103
    :sswitch_1
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0, p1}, Lcom/andoop/android/engine/GameState$StateListener;->onGameRunning(F)V

    goto :goto_0

    .line 106
    :sswitch_2
    iget-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledLose:Z

    if-nez v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/andoop/android/engine/GameState;->mHasCalledLose:Z

    .line 108
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0}, Lcom/andoop/android/engine/GameState$StateListener;->onGameLose()V

    .line 109
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0}, Lcom/andoop/android/engine/GameState$StateListener;->onGameOver()V

    goto :goto_0

    .line 113
    :sswitch_3
    iget-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledWin:Z

    if-nez v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lcom/andoop/android/engine/GameState;->mHasCalledWin:Z

    .line 115
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0}, Lcom/andoop/android/engine/GameState$StateListener;->onGameWin()V

    .line 116
    iget-object v0, p0, Lcom/andoop/android/engine/GameState;->mStateListener:Lcom/andoop/android/engine/GameState$StateListener;

    invoke-interface {v0}, Lcom/andoop/android/engine/GameState$StateListener;->onGameOver()V

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 49
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    if-eq v1, v0, :cond_0

    .line 50
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mStateBeforePause:I

    .line 51
    iput v1, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 52
    invoke-static {}, Lcom/andoop/android/engine/Time;->pauseGame()V

    .line 54
    :cond_0
    return-void
.end method

.method public ready()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 46
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 125
    iput-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledReady:Z

    .line 126
    iput-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledWin:Z

    .line 127
    iput-boolean v0, p0, Lcom/andoop/android/engine/GameState;->mHasCalledLose:Z

    .line 128
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 58
    iget v0, p0, Lcom/andoop/android/engine/GameState;->mStateBeforePause:I

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 60
    :cond_0
    invoke-static {}, Lcom/andoop/android/engine/Time;->isGamePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/andoop/android/engine/Time;->resumeGame()V

    .line 63
    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 75
    return-void
.end method

.method public win()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x8

    iput v0, p0, Lcom/andoop/android/engine/GameState;->mState:I

    .line 67
    return-void
.end method
