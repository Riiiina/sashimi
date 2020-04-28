.class public Lcom/andoop/android/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/Engine$GameThread;,
        Lcom/andoop/android/engine/Engine$GameViewCallback;
    }
.end annotation


# static fields
.field public static final GAME_ENGINE_THREAD_NAME:Ljava/lang/String; = "GameEngineThread"


# instance fields
.field private gameView:Lcom/andoop/android/engine/GameView;

.field protected mCamera:Lcom/andoop/android/engine/Camera;

.field protected mCurrentScene:Lcom/andoop/android/engine/Scene;

.field private final mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

.field private mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

.field private mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

.field protected mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

.field private mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

.field protected mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceHolderLock:[B

.field protected mSurfaceWidth:I

.field protected mUpdateHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/engine/IUpdateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/andoop/android/engine/EngineOptions;)V
    .locals 2
    .param p1, "engineOptions"    # Lcom/andoop/android/engine/EngineOptions;

    .prologue
    const/4 v0, 0x1

    const-string v1, ""

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/andoop/android/engine/Engine;->mSurfaceWidth:I

    iput v0, p0, Lcom/andoop/android/engine/Engine;->mSurfaceHeight:I

    .line 51
    new-instance v0, Lcom/andoop/android/engine/RunnableHandler;

    invoke-direct {v0}, Lcom/andoop/android/engine/RunnableHandler;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mUpdateHandler:Ljava/util/ArrayList;

    .line 228
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    .line 57
    iput-object p1, p0, Lcom/andoop/android/engine/Engine;->mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

    .line 58
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->getCamera()Lcom/andoop/android/engine/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    .line 60
    const-string v0, ""

    invoke-static {v1}, Lorg/anddev/andengine/audio/sound/SoundFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 61
    const-string v0, ""

    invoke-static {v1}, Lorg/anddev/andengine/audio/music/MusicFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

    invoke-virtual {v0}, Lcom/andoop/android/engine/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lorg/anddev/andengine/audio/sound/SoundManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

    invoke-virtual {v0}, Lcom/andoop/android/engine/EngineOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lorg/anddev/andengine/audio/music/MusicManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/music/MusicManager;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    .line 70
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Engine$GameThread;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/engine/Engine;)Lcom/andoop/android/engine/Engine$GameThread;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    return-object v0
.end method


# virtual methods
.method public getEngineOptions()Lcom/andoop/android/engine/EngineOptions;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

    return-object v0
.end method

.method public getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the MusicManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScene()Lcom/andoop/android/engine/Scene;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    return-object v0
.end method

.method public getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the SoundManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/andoop/android/engine/Engine;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/andoop/android/engine/Engine;->mSurfaceWidth:I

    return v0
.end method

.method public onLoadComplete(Lcom/andoop/android/engine/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/andoop/android/engine/Scene;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/andoop/android/engine/Engine;->setScene(Lcom/andoop/android/engine/Scene;)V

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "---> engine onPause"

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/andoop/android/engine/Time;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/andoop/android/engine/Time;->pause()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine$GameThread;->onPause()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Scene;->onActivityPause()V

    .line 165
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "---> engine onResume"

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/andoop/android/engine/Time;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/andoop/android/engine/Time;->isGamePaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/andoop/android/engine/Time;->resume()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Scene;->onActivityResume()V

    .line 177
    :cond_1
    new-instance v0, Lcom/andoop/android/engine/Engine$GameThread;

    iget-object v1, p0, Lcom/andoop/android/engine/Engine;->mEngineOptions:Lcom/andoop/android/engine/EngineOptions;

    invoke-direct {v0, p0, v1}, Lcom/andoop/android/engine/Engine$GameThread;-><init>(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/EngineOptions;)V

    iput-object v0, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    .line 178
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine$GameThread;->onResume()V

    .line 179
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->gameView:Lcom/andoop/android/engine/GameView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 197
    :goto_0
    return v3

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, "b":Z
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/andoop/android/engine/Camera;->realToCameraX(F)F

    move-result v1

    .line 188
    .local v1, "x":F
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/andoop/android/engine/Camera;->realToCameraY(F)F

    move-result v2

    .line 189
    .local v2, "y":F
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v3, v1, v2, p2}, Lcom/andoop/android/engine/Scene;->onTouch(FFLandroid/view/MotionEvent;)Z

    move-result v0

    .line 193
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v0

    .line 197
    goto :goto_0

    .line 194
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onUpdate(F)V
    .locals 5
    .param p1, "seconds"    # F

    .prologue
    .line 201
    iget-object v2, p0, Lcom/andoop/android/engine/Engine;->mUpdateHandler:Ljava/util/ArrayList;

    .line 202
    .local v2, "updateHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/andoop/android/engine/IUpdateHandler;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 203
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 207
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-static {}, Lcom/andoop/android/engine/Time;->getTicksFraction()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/andoop/android/engine/Scene;->onUpdate(F)V

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v3, p1}, Lcom/andoop/android/engine/Camera;->onUpdate(F)V

    .line 213
    return-void

    .line 204
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andoop/android/engine/IUpdateHandler;

    invoke-interface {v3, p1}, Lcom/andoop/android/engine/IUpdateHandler;->onUpdate(F)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public registerUpdateHandler(Lcom/andoop/android/engine/IUpdateHandler;)V
    .locals 1
    .param p1, "pHandler"    # Lcom/andoop/android/engine/IUpdateHandler;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public removeUpdateHandler(Lcom/andoop/android/engine/IUpdateHandler;)V
    .locals 1
    .param p1, "pHandler"    # Lcom/andoop/android/engine/IUpdateHandler;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/engine/Engine;->mGameThread:Lcom/andoop/android/engine/Engine$GameThread;

    if-ne v0, v1, :cond_0

    .line 137
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setGameView(Lcom/andoop/android/engine/GameView;)V
    .locals 3
    .param p1, "gv"    # Lcom/andoop/android/engine/GameView;

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v1, p0, Lcom/andoop/android/engine/Engine;->gameView:Lcom/andoop/android/engine/GameView;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GameView of the Engine has been set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/andoop/android/engine/Engine;->gameView:Lcom/andoop/android/engine/GameView;

    .line 106
    invoke-virtual {p1, v2}, Lcom/andoop/android/engine/GameView;->setFocusable(Z)V

    .line 107
    invoke-virtual {p1, v2}, Lcom/andoop/android/engine/GameView;->setKeepScreenOn(Z)V

    .line 109
    new-instance v0, Lcom/andoop/android/engine/Engine$GameViewCallback;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/Engine$GameViewCallback;-><init>(Lcom/andoop/android/engine/Engine;)V

    .line 110
    .local v0, "viewCallback":Lcom/andoop/android/engine/Engine$GameViewCallback;
    invoke-virtual {p1}, Lcom/andoop/android/engine/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/andoop/android/engine/GameView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void
.end method

.method public setScene(Lcom/andoop/android/engine/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/andoop/android/engine/Scene;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eq p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/andoop/android/engine/Engine;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    new-instance v1, Lcom/andoop/android/engine/Engine$1;

    invoke-direct {v1, p0, p1}, Lcom/andoop/android/engine/Engine$1;-><init>(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Scene;)V

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method
