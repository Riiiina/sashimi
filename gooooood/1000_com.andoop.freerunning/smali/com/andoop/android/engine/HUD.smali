.class public Lcom/andoop/android/engine/HUD;
.super Lcom/andoop/android/engine/entity/Entity;
.source "HUD.java"


# instance fields
.field private mLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 22
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/Entity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/HUD;->mLayer:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public addEntity(Lcom/andoop/android/engine/entity/Entity;)V
    .locals 1
    .param p1, "entity"    # Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/andoop/android/engine/HUD;->mLayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public inCamera(Lcom/andoop/android/engine/Camera;)Z
    .locals 1
    .param p1, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/andoop/android/engine/HUD;->mLayer:Ljava/util/ArrayList;

    .line 38
    .local v2, "layer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/entity/Entity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 39
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/engine/entity/Entity;

    .line 41
    .local v0, "e":Lcom/andoop/android/engine/entity/Entity;
    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/entity/Entity;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 4
    .param p1, "seconds"    # F

    .prologue
    .line 47
    iget-object v2, p0, Lcom/andoop/android/engine/HUD;->mLayer:Ljava/util/ArrayList;

    .line 49
    .local v2, "layer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/entity/Entity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 50
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/engine/entity/Entity;

    .line 52
    .local v0, "e":Lcom/andoop/android/engine/entity/Entity;
    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/entity/Entity;->onUpdate(F)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
