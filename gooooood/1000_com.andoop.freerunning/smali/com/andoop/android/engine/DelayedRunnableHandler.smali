.class public Lcom/andoop/android/engine/DelayedRunnableHandler;
.super Ljava/lang/Object;
.source "DelayedRunnableHandler.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# instance fields
.field private final mRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/engine/DelayedRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/DelayedRunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/andoop/android/engine/DelayedRunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method

.method public onUpdate(F)V
    .locals 5
    .param p1, "pSeconds"    # F

    .prologue
    .line 27
    iget-object v2, p0, Lcom/andoop/android/engine/DelayedRunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 28
    .local v2, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/DelayedRunnable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-gt v0, v3, :cond_0

    .line 36
    return-void

    .line 29
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andoop/android/engine/DelayedRunnable;

    .line 30
    .local v1, "r":Lcom/andoop/android/engine/DelayedRunnable;
    invoke-virtual {v1, p1}, Lcom/andoop/android/engine/DelayedRunnable;->onUpdate(F)V

    .line 31
    invoke-virtual {v1}, Lcom/andoop/android/engine/DelayedRunnable;->getRemaining()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/andoop/android/engine/DelayedRunnable;->run()V

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public postRunnable(Lcom/andoop/android/engine/DelayedRunnable;)V
    .locals 1
    .param p1, "pRunnable"    # Lcom/andoop/android/engine/DelayedRunnable;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/andoop/android/engine/DelayedRunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/andoop/android/engine/DelayedRunnableHandler;->clear()V

    .line 40
    return-void
.end method
