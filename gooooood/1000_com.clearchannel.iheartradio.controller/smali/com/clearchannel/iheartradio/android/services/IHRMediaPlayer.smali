.class public Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "IHRMediaPlayer.java"


# instance fields
.field private aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

.field private ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

.field private isUsingNativePlayer:Z

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private streamURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 2
    .param p1, "ihrService"    # Lcom/clearchannel/iheartradio/android/services/IHRService;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 27
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->useNewPlayerRemoteHTTP:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)Lcom/clearchannel/iheartradio/android/services/IHRService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "duration":I
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 102
    :cond_1
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v0, "PLAYER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    goto :goto_0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 196
    :cond_1
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .param p1, "streamtype"    # I

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 178
    :cond_1
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    .line 140
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 205
    :cond_1
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 215
    :cond_1
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 188
    :cond_1
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 170
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v1, "PLAYER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 42
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$1;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$2;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    sget-object v2, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->LOW_32:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    invoke-static {p0, v1, v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->getAACPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;Lcom/clearchannel/iheartradio/android/services/IHRService;Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;)Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v1, v2}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 60
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 62
    .local v0, "i":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->ihrService:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v2, "failed"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "PLAYER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->isUsingNativePlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->streamURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    invoke-interface {v0}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer;->stop()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->aacPlayer:Lcom/clearchannel/iheartradio/media/player/IAACPlayer;

    goto :goto_0
.end method
