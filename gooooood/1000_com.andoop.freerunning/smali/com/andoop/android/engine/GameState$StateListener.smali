.class public interface abstract Lcom/andoop/android/engine/GameState$StateListener;
.super Ljava/lang/Object;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/GameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onGameLose()V
.end method

.method public abstract onGameOver()V
.end method

.method public abstract onGameReady()V
.end method

.method public abstract onGameRunning(F)V
.end method

.method public abstract onGameWin()V
.end method
