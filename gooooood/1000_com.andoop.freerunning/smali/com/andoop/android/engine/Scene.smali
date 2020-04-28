.class public Lcom/andoop/android/engine/Scene;
.super Lcom/andoop/android/engine/entity/Entity;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/Scene$IOnAreaTouchListener;,
        Lcom/andoop/android/engine/Scene$IOnSceneTouchListener;,
        Lcom/andoop/android/engine/Scene$ITouchArea;
    }
.end annotation


# instance fields
.field private mBackground:Lcom/andoop/android/engine/IBackground;

.field private mClearDelayedRunnableHandler:Z

.field private mClearRunnableHandler:Z

.field private final mDelayedRunnableHandler:Lcom/andoop/android/engine/DelayedRunnableHandler;

.field private mHUD:Lcom/andoop/android/engine/HUD;

.field private final mLayers:[Lcom/andoop/android/engine/Layer;

.field private final mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

.field protected mSecondsElapsedTotal:F

.field private final mUpdateHandlers:Lcom/andoop/android/engine/UpdateHandlerList;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "layerNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/andoop/android/engine/entity/Entity;-><init>()V

    .line 29
    new-instance v1, Lcom/andoop/android/engine/UpdateHandlerList;

    invoke-direct {v1}, Lcom/andoop/android/engine/UpdateHandlerList;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/engine/Scene;->mUpdateHandlers:Lcom/andoop/android/engine/UpdateHandlerList;

    .line 31
    new-instance v1, Lcom/andoop/android/engine/RunnableHandler;

    invoke-direct {v1}, Lcom/andoop/android/engine/RunnableHandler;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/engine/Scene;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    .line 32
    new-instance v1, Lcom/andoop/android/engine/DelayedRunnableHandler;

    invoke-direct {v1}, Lcom/andoop/android/engine/DelayedRunnableHandler;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/engine/Scene;->mDelayedRunnableHandler:Lcom/andoop/android/engine/DelayedRunnableHandler;

    .line 34
    iput-boolean v2, p0, Lcom/andoop/android/engine/Scene;->mClearRunnableHandler:Z

    .line 35
    iput-boolean v2, p0, Lcom/andoop/android/engine/Scene;->mClearDelayedRunnableHandler:Z

    .line 41
    new-array v1, p1, [Lcom/andoop/android/engine/Layer;

    iput-object v1, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 45
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    new-instance v2, Lcom/andoop/android/engine/Layer;

    invoke-direct {v2}, Lcom/andoop/android/engine/Layer;-><init>()V

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addEntity(ILcom/andoop/android/engine/entity/Entity;)V
    .locals 1
    .param p1, "layer"    # I
    .param p2, "entity"    # Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/andoop/android/engine/Layer;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 122
    :cond_0
    return-void
.end method

.method public varargs addEntity(I[Lcom/andoop/android/engine/entity/Entity;)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "entities"    # [Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 127
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    aget-object v1, v1, p1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/Layer;->addEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearDelayedRunnables()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/Scene;->mClearDelayedRunnableHandler:Z

    .line 116
    return-void
.end method

.method public clearRunnables()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/Scene;->mClearRunnableHandler:Z

    .line 112
    return-void
.end method

.method public getLayer(I)Lcom/andoop/android/engine/Layer;
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layer index out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/andoop/android/engine/Scene;->mSecondsElapsedTotal:F

    return v0
.end method

.method public inCamera(Lcom/andoop/android/engine/Camera;)Z
    .locals 1
    .param p1, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onGameLoop(F)V
    .locals 0
    .param p1, "seconds"    # F

    .prologue
    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 5
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    invoke-virtual {p2, p1}, Lcom/andoop/android/engine/Camera;->prepare(Landroid/graphics/Canvas;)V

    .line 194
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mBackground:Lcom/andoop/android/engine/IBackground;

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mBackground:Lcom/andoop/android/engine/IBackground;

    invoke-interface {v4, p1, p2}, Lcom/andoop/android/engine/IBackground;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/Scene;->onPreDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 200
    iget-object v2, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    .line 201
    .local v2, "layers":[Lcom/andoop/android/engine/Layer;
    array-length v3, v2

    .line 202
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/Scene;->onPostDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 211
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mHUD:Lcom/andoop/android/engine/HUD;

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    invoke-virtual {p2, p1}, Lcom/andoop/android/engine/Camera;->prepareHUD(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mHUD:Lcom/andoop/android/engine/HUD;

    invoke-virtual {v4, p1, p2}, Lcom/andoop/android/engine/HUD;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    .end local v0    # "i":I
    .end local v2    # "layers":[Lcom/andoop/android/engine/Layer;
    .end local v3    # "len":I
    :cond_1
    return-void

    .line 203
    .restart local v0    # "i":I
    .restart local v2    # "layers":[Lcom/andoop/android/engine/Layer;
    .restart local v3    # "len":I
    :cond_2
    aget-object v1, v2, v0

    .line 204
    .local v1, "layer":Lcom/andoop/android/engine/Layer;
    invoke-virtual {v1, p1, p2}, Lcom/andoop/android/engine/Layer;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 6
    .param p1, "pSeconds"    # F

    .prologue
    const/4 v5, 0x0

    .line 158
    iget v4, p0, Lcom/andoop/android/engine/Scene;->mSecondsElapsedTotal:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/andoop/android/engine/Scene;->mSecondsElapsedTotal:F

    .line 160
    iget-boolean v4, p0, Lcom/andoop/android/engine/Scene;->mClearRunnableHandler:Z

    if-eqz v4, :cond_0

    .line 161
    iput-boolean v5, p0, Lcom/andoop/android/engine/Scene;->mClearRunnableHandler:Z

    .line 162
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    invoke-virtual {v4}, Lcom/andoop/android/engine/RunnableHandler;->clear()V

    .line 165
    :cond_0
    iget-boolean v4, p0, Lcom/andoop/android/engine/Scene;->mClearDelayedRunnableHandler:Z

    if-eqz v4, :cond_1

    .line 166
    iput-boolean v5, p0, Lcom/andoop/android/engine/Scene;->mClearDelayedRunnableHandler:Z

    .line 167
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mDelayedRunnableHandler:Lcom/andoop/android/engine/DelayedRunnableHandler;

    invoke-virtual {v4}, Lcom/andoop/android/engine/DelayedRunnableHandler;->clear()V

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mUpdateHandlers:Lcom/andoop/android/engine/UpdateHandlerList;

    invoke-virtual {v4, p1}, Lcom/andoop/android/engine/UpdateHandlerList;->onUpdate(F)V

    .line 171
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    invoke-virtual {v4, p1}, Lcom/andoop/android/engine/RunnableHandler;->onUpdate(F)V

    .line 172
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mDelayedRunnableHandler:Lcom/andoop/android/engine/DelayedRunnableHandler;

    invoke-virtual {v4, p1}, Lcom/andoop/android/engine/DelayedRunnableHandler;->onUpdate(F)V

    .line 174
    iget-object v2, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    .line 175
    .local v2, "layers":[Lcom/andoop/android/engine/Layer;
    array-length v3, v2

    .line 176
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_3

    .line 181
    invoke-virtual {p0, p1}, Lcom/andoop/android/engine/Scene;->onGameLoop(F)V

    .line 183
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mHUD:Lcom/andoop/android/engine/HUD;

    if-eqz v4, :cond_2

    .line 184
    iget-object v4, p0, Lcom/andoop/android/engine/Scene;->mHUD:Lcom/andoop/android/engine/HUD;

    invoke-virtual {v4, p1}, Lcom/andoop/android/engine/HUD;->onUpdate(F)V

    .line 186
    :cond_2
    return-void

    .line 177
    :cond_3
    aget-object v1, v2, v0

    .line 178
    .local v1, "layer":Lcom/andoop/android/engine/Layer;
    invoke-virtual {v1, p1}, Lcom/andoop/android/engine/Layer;->onUpdate(F)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPostDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 62
    return-void
.end method

.method public onPreDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "camera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 55
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onTouch(FFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public postDelayedRunnable(Lcom/andoop/android/engine/DelayedRunnable;)V
    .locals 1
    .param p1, "pRunnable"    # Lcom/andoop/android/engine/DelayedRunnable;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mDelayedRunnableHandler:Lcom/andoop/android/engine/DelayedRunnableHandler;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/DelayedRunnableHandler;->postRunnable(Lcom/andoop/android/engine/DelayedRunnable;)V

    .line 108
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public registerUpdateHandler(Lcom/andoop/android/engine/IUpdateHandler;)V
    .locals 1
    .param p1, "pUpdateHandler"    # Lcom/andoop/android/engine/IUpdateHandler;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mUpdateHandlers:Lcom/andoop/android/engine/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public removeEntity(ILcom/andoop/android/engine/entity/Entity;)V
    .locals 1
    .param p1, "layer"    # I
    .param p2, "entity"    # Lcom/andoop/android/engine/entity/Entity;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/andoop/android/engine/Scene;->mLayers:[Lcom/andoop/android/engine/Layer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/andoop/android/engine/Layer;->removeEntity(Lcom/andoop/android/engine/entity/Entity;)V

    .line 136
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/andoop/android/engine/entity/Entity;->reset()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/Scene;->mSecondsElapsedTotal:F

    .line 235
    invoke-virtual {p0}, Lcom/andoop/android/engine/Scene;->clearDelayedRunnables()V

    .line 236
    invoke-virtual {p0}, Lcom/andoop/android/engine/Scene;->clearRunnables()V

    .line 237
    return-void
.end method

.method public setBackground(Lcom/andoop/android/engine/IBackground;)V
    .locals 0
    .param p1, "background"    # Lcom/andoop/android/engine/IBackground;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/andoop/android/engine/Scene;->mBackground:Lcom/andoop/android/engine/IBackground;

    .line 148
    return-void
.end method

.method public setHUD(Lcom/andoop/android/engine/HUD;)V
    .locals 0
    .param p1, "hud"    # Lcom/andoop/android/engine/HUD;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/andoop/android/engine/Scene;->mHUD:Lcom/andoop/android/engine/HUD;

    .line 229
    return-void
.end method
