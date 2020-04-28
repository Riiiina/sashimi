.class public Lcom/andoop/android/engine/Layer;
.super Lcom/andoop/android/engine/entity/Entity;
.source "Layer.java"


# instance fields
.field private mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/engine/entity/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/Entity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Layer;->mEntities:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public addEntity(Lcom/andoop/android/engine/entity/Entity;)V
    .locals 1
    .param p1, "entity"    # Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/andoop/android/engine/Layer;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public inCamera(Lcom/andoop/android/engine/Camera;)Z
    .locals 1
    .param p1, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 5
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/andoop/android/engine/Layer;->mEntities:Ljava/util/List;

    .line 52
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/andoop/android/engine/entity/Entity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 53
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 59
    return-void

    .line 54
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/engine/entity/Entity;

    .line 55
    .local v0, "e":Lcom/andoop/android/engine/entity/Entity;
    invoke-virtual {v0, p2}, Lcom/andoop/android/engine/entity/Entity;->inCamera(Lcom/andoop/android/engine/Camera;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/Entity;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 4
    .param p1, "seconds"    # F

    .prologue
    .line 63
    iget-object v1, p0, Lcom/andoop/android/engine/Layer;->mEntities:Ljava/util/List;

    .line 64
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/andoop/android/engine/entity/Entity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 65
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/engine/entity/Entity;

    .line 67
    .local v0, "e":Lcom/andoop/android/engine/entity/Entity;
    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/entity/Entity;->onUpdate(F)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeEntity(Lcom/andoop/android/engine/entity/Entity;)V
    .locals 1
    .param p1, "entity"    # Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/andoop/android/engine/Layer;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    return-void
.end method
