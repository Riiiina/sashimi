.class public Lcom/andoop/android/engine/RunnableHandler;
.super Ljava/lang/Object;
.source "RunnableHandler.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# instance fields
.field private final mRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
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

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/andoop/android/engine/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method public onUpdate(F)V
    .locals 5
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 39
    iget-object v2, p0, Lcom/andoop/android/engine/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 40
    .local v2, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-gt v0, v3, :cond_0

    .line 46
    return-void

    .line 41
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 42
    .local v1, "r":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 40
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/andoop/android/engine/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/andoop/android/engine/RunnableHandler;->clear()V

    .line 51
    return-void
.end method
