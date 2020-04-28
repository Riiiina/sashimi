.class public Lcom/andoop/android/engine/UpdateHandlerList;
.super Ljava/util/ArrayList;
.source "UpdateHandlerList.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/andoop/android/engine/IUpdateHandler;",
        ">;",
        "Lcom/andoop/android/engine/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7ab717f11bdc2b5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 3
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/andoop/android/engine/UpdateHandlerList;->size()I

    move-result v0

    .line 40
    .local v0, "handlerCount":I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/engine/IUpdateHandler;

    invoke-interface {v2, p1}, Lcom/andoop/android/engine/IUpdateHandler;->onUpdate(F)V

    .line 40
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/andoop/android/engine/UpdateHandlerList;->size()I

    move-result v0

    .line 48
    .local v0, "handlerCount":I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 51
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/engine/IUpdateHandler;

    invoke-interface {v2}, Lcom/andoop/android/engine/IUpdateHandler;->reset()V

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
