.class Lcom/andoop/freerunning/Game$MusicHandler;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lcom/andoop/android/engine/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/freerunning/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicHandler"
.end annotation


# instance fields
.field private mFadeOutMusic:Z

.field private mFadeOutSpeed:F

.field private mInitialVolumn:F

.field private final mMusic:Lorg/anddev/andengine/audio/music/Music;

.field final synthetic this$0:Lcom/andoop/freerunning/Game;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/Game;Lorg/anddev/andengine/audio/music/Music;)V
    .locals 1
    .param p2, "music"    # Lorg/anddev/andengine/audio/music/Music;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->this$0:Lcom/andoop/freerunning/Game;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    .line 300
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutSpeed:F

    .line 304
    iput-object p2, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    .line 305
    if-eqz p2, :cond_0

    .line 306
    invoke-virtual {p2}, Lorg/anddev/andengine/audio/music/Music;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mInitialVolumn:F

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/andoop/freerunning/Game;Lorg/anddev/andengine/audio/music/Music;F)V
    .locals 0
    .param p2, "music"    # Lorg/anddev/andengine/audio/music/Music;
    .param p3, "fadeOutSpeed"    # F

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lcom/andoop/freerunning/Game$MusicHandler;-><init>(Lcom/andoop/freerunning/Game;Lorg/anddev/andengine/audio/music/Music;)V

    .line 312
    iput p3, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutSpeed:F

    .line 313
    return-void
.end method


# virtual methods
.method public fadeOutMusic()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    .line 331
    return-void
.end method

.method public onUpdate(F)V
    .locals 2
    .param p1, "seconds"    # F

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->getVolume()F

    move-result v0

    .line 319
    .local v0, "volumn":F
    iget v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutSpeed:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 320
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    .line 323
    iget-object v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1}, Lorg/anddev/andengine/audio/music/Music;->pause()V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/audio/music/Music;->setVolume(F)V

    .line 327
    .end local v0    # "volumn":F
    :cond_1
    return-void
.end method

.method public pauseMusic()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->pause()V

    .line 350
    :cond_0
    return-void
.end method

.method public playMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->pause()V

    .line 338
    :cond_0
    iput-boolean v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    .line 340
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/audio/music/Music;->seekTo(I)V

    .line 341
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->play()V

    .line 342
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    iget v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mInitialVolumn:F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/audio/music/Music;->setVolume(F)V

    .line 344
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mFadeOutMusic:Z

    .line 361
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    iget v1, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mInitialVolumn:F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/audio/music/Music;->setVolume(F)V

    .line 364
    :cond_0
    return-void
.end method

.method public resumeMusic()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/andoop/freerunning/Game$MusicHandler;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->play()V

    .line 356
    :cond_0
    return-void
.end method
