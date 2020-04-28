.class public abstract Lcom/andoop/android/engine/entity/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/IEntity;


# instance fields
.field private ignoreUpdate:Z

.field private visible:Z

.field private zIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/andoop/android/engine/entity/Entity;->zIndex:I

    .line 24
    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "zIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/andoop/android/engine/entity/Entity;->zIndex:I

    .line 24
    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    .line 34
    iput p1, p0, Lcom/andoop/android/engine/entity/Entity;->zIndex:I

    .line 35
    return-void
.end method


# virtual methods
.method public getZIndex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/andoop/android/engine/entity/Entity;->zIndex:I

    return v0
.end method

.method public abstract inCamera(Lcom/andoop/android/engine/Camera;)Z
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/Entity;->onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected abstract onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
.end method

.method protected abstract onManagedUpdate(F)V
.end method

.method public final onUpdate(F)V
    .locals 1
    .param p1, "seconds"    # F

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/andoop/android/engine/entity/Entity;->onManagedUpdate(F)V

    .line 91
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    .line 77
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 0
    .param p1, "ignoreUpdate"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/Entity;->ignoreUpdate:Z

    .line 59
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/Entity;->visible:Z

    .line 51
    return-void
.end method

.method public setZIndex(I)V
    .locals 0
    .param p1, "zIndex"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/andoop/android/engine/entity/Entity;->zIndex:I

    .line 71
    return-void
.end method
