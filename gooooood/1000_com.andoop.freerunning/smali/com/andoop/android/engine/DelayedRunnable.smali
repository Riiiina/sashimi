.class public abstract Lcom/andoop/android/engine/DelayedRunnable;
.super Ljava/lang/Object;
.source "DelayedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/andoop/android/engine/IUpdateHandler;


# instance fields
.field private mDelayed:F

.field private mLeft:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pDelayedSeconds"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/andoop/android/engine/DelayedRunnable;->mDelayed:F

    .line 23
    invoke-virtual {p0}, Lcom/andoop/android/engine/DelayedRunnable;->reset()V

    .line 24
    return-void
.end method


# virtual methods
.method public getRemaining()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/andoop/android/engine/DelayedRunnable;->mLeft:F

    return v0
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSeconds"    # F

    .prologue
    .line 32
    iget v0, p0, Lcom/andoop/android/engine/DelayedRunnable;->mLeft:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/DelayedRunnable;->mLeft:F

    .line 33
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/andoop/android/engine/DelayedRunnable;->mDelayed:F

    iput v0, p0, Lcom/andoop/android/engine/DelayedRunnable;->mLeft:F

    .line 37
    return-void
.end method
