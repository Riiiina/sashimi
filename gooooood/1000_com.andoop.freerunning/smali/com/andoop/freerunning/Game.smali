.class public Lcom/andoop/freerunning/Game;
.super Lcom/andoop/android/engine/BaseActivity;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/freerunning/Game$MusicHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHAT_LOAD_AD:I = 0x1


# instance fields
.field final DIALOG_MORE:I

.field private final KEY_BEST:Ljava/lang/String;

.field private final KEY_SOUND:Ljava/lang/String;

.field adview:Lcom/admob/android/ads/AdView;

.field lastAdShown:J

.field protected mBestScore:I

.field mBitmapCity:Landroid/graphics/Bitmap;

.field mCamera:Lcom/andoop/android/engine/Camera;

.field mEndScene:Lcom/andoop/freerunning/EndScene;

.field private mEngine:Lcom/andoop/android/engine/Engine;

.field mGameScene:Lcom/andoop/freerunning/GameScene;

.field mHandler:Landroid/os/Handler;

.field mHideAdRunnable:Ljava/lang/Runnable;

.field mMenuScene:Lcom/andoop/freerunning/MenuScene;

.field private mMoreDialog:Landroid/app/Dialog;

.field private mMusic:Lorg/anddev/andengine/audio/music/Music;

.field private mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

.field mShowAdRunnable:Ljava/lang/Runnable;

.field private mSoundPress:Lorg/anddev/andengine/audio/sound/Sound;

.field private final mToastTextExit:Ljava/lang/String;

.field private mToexit:Z

.field mTypeface:Landroid/graphics/Typeface;

.field private soundEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/andoop/freerunning/Game;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Lcom/andoop/android/engine/BaseActivity;-><init>()V

    .line 37
    const-string v0, "need_sound"

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->KEY_SOUND:Ljava/lang/String;

    .line 38
    const-string v0, "best_score_key_runner"

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->KEY_BEST:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    .line 58
    iput v1, p0, Lcom/andoop/freerunning/Game;->DIALOG_MORE:I

    .line 61
    const-string v0, "press again to exit"

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mToastTextExit:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/andoop/freerunning/Game$1;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$1;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/andoop/freerunning/Game$2;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$2;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mShowAdRunnable:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/andoop/freerunning/Game$3;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$3;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mHideAdRunnable:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/freerunning/Game;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/andoop/freerunning/Game;->loadAd()V

    return-void
.end method

.method static synthetic access$1(Lcom/andoop/freerunning/Game;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/andoop/freerunning/Game;->mToexit:Z

    return-void
.end method

.method public static isAndroid1()Z
    .locals 2

    .prologue
    .line 255
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadAd()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andoop/freerunning/Game;->getAdmobAdView(Z)Lcom/admob/android/ads/AdView;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    .line 261
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v0, "paramsUp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 265
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    invoke-virtual {p0, v1, v0}, Lcom/andoop/freerunning/Game;->addAdView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method exitGame()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->finish()V

    .line 224
    return-void
.end method

.method getSoundEnable()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    return v0
.end method

.method public hideAd()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mHideAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/Game;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMoreDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onInitResources()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v1}, Lcom/andoop/android/engine/Engine;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v1

    const-string v2, "mfx/music.ogg"

    invoke-static {v1, p0, v2}, Lorg/anddev/andengine/audio/music/MusicFactory;->createMusicFromAsset(Lorg/anddev/andengine/audio/music/MusicManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/music/Music;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    .line 121
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/audio/music/Music;->setLooping(Z)V

    .line 122
    new-instance v1, Lcom/andoop/freerunning/Game$MusicHandler;

    iget-object v2, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, p0, v2, v3}, Lcom/andoop/freerunning/Game$MusicHandler;-><init>(Lcom/andoop/freerunning/Game;Lorg/anddev/andengine/audio/music/Music;F)V

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    .line 123
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    iget-object v2, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    invoke-virtual {v1, v2}, Lcom/andoop/android/engine/Engine;->registerUpdateHandler(Lcom/andoop/android/engine/IUpdateHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v1}, Lcom/andoop/android/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v1

    const-string v2, "mfx/click.ogg"

    invoke-static {v1, p0, v2}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mSoundPress:Lorg/anddev/andengine/audio/sound/Sound;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :goto_1
    const-string v1, "need_sound"

    invoke-virtual {p0, v1, v4}, Lcom/andoop/freerunning/Game;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    .line 136
    const-string v1, "best_score_key_runner"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/andoop/freerunning/Game;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/andoop/freerunning/Game;->mBestScore:I

    .line 138
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/bgfront.png"

    invoke-static {v1, v2}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mBitmapCity:Landroid/graphics/Bitmap;

    .line 140
    new-instance v1, Lcom/andoop/freerunning/GameScene;

    invoke-direct {v1, p0}, Lcom/andoop/freerunning/GameScene;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mGameScene:Lcom/andoop/freerunning/GameScene;

    .line 141
    new-instance v1, Lcom/andoop/freerunning/EndScene;

    invoke-direct {v1, p0}, Lcom/andoop/freerunning/EndScene;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mEndScene:Lcom/andoop/freerunning/EndScene;

    .line 142
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mMenuScene:Lcom/andoop/freerunning/MenuScene;

    invoke-virtual {v1}, Lcom/andoop/freerunning/MenuScene;->onLoadComplete()V

    .line 143
    return-void

    .line 124
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/andoop/freerunning/Game;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 131
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/andoop/freerunning/Game;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onLoadComplete()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/andoop/freerunning/Game$4;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$4;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 90
    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$4;->start()V

    .line 92
    invoke-static {}, Lcom/andoop/android/engine/Time;->isGamePaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/andoop/android/engine/Time;->resumeGame()V

    .line 95
    :cond_0
    return-void
.end method

.method public onLoadEngine()Lcom/andoop/android/engine/Engine;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->createFullScreenCamera()Lcom/andoop/android/engine/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mCamera:Lcom/andoop/android/engine/Camera;

    .line 100
    new-instance v0, Lcom/andoop/android/engine/EngineOptions;

    sget-object v1, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->LANDSCAPE:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    iget-object v2, p0, Lcom/andoop/freerunning/Game;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-direct {v0, v3, v1, v2}, Lcom/andoop/android/engine/EngineOptions;-><init>(ZLcom/andoop/android/engine/EngineOptions$ScreenOrientation;Lcom/andoop/android/engine/Camera;)V

    .line 101
    .local v0, "engineOptions":Lcom/andoop/android/engine/EngineOptions;
    invoke-virtual {v0, v3}, Lcom/andoop/android/engine/EngineOptions;->setNeedsMusic(Z)Lcom/andoop/android/engine/EngineOptions;

    .line 102
    invoke-virtual {v0, v3}, Lcom/andoop/android/engine/EngineOptions;->setNeedsSound(Z)Lcom/andoop/android/engine/EngineOptions;

    .line 103
    invoke-virtual {v0, v3}, Lcom/andoop/android/engine/EngineOptions;->setNeedVibration(Z)Lcom/andoop/android/engine/EngineOptions;

    .line 104
    invoke-virtual {v0, v3}, Lcom/andoop/android/engine/EngineOptions;->setNeedsErrorHandler(Z)Lcom/andoop/android/engine/EngineOptions;

    .line 105
    new-instance v1, Lcom/andoop/android/engine/Engine;

    invoke-direct {v1, v0}, Lcom/andoop/android/engine/Engine;-><init>(Lcom/andoop/android/engine/EngineOptions;)V

    iput-object v1, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    .line 109
    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    return-object v1
.end method

.method public onLoadResources()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/NipCens.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mTypeface:Landroid/graphics/Typeface;

    .line 115
    return-void
.end method

.method public onLoadScene()Lcom/andoop/android/engine/Scene;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/andoop/freerunning/MenuScene;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/MenuScene;-><init>(Lcom/andoop/freerunning/Game;)V

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mMenuScene:Lcom/andoop/freerunning/MenuScene;

    .line 190
    new-instance v0, Lcom/andoop/android/recommend/MoreDialog;

    invoke-direct {v0, p0}, Lcom/andoop/android/recommend/MoreDialog;-><init>(Lcom/andoop/android/engine/BaseActivity;)V

    iput-object v0, p0, Lcom/andoop/freerunning/Game;->mMoreDialog:Landroid/app/Dialog;

    .line 191
    new-instance v0, Lcom/andoop/freerunning/Game$5;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$5;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 196
    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$5;->start()V

    .line 197
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMenuScene:Lcom/andoop/freerunning/MenuScene;

    return-object v0
.end method

.method pauseGame()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/andoop/android/engine/Time;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/andoop/android/engine/Time;->pauseGame()V

    .line 214
    :cond_0
    return-void
.end method

.method pauseMusic()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$MusicHandler;->pauseMusic()V

    .line 172
    :cond_0
    return-void
.end method

.method playMusic()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$MusicHandler;->playMusic()V

    .line 166
    :cond_0
    return-void
.end method

.method protected playPress()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mSoundPress:Lorg/anddev/andengine/audio/sound/Sound;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mSoundPress:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/Sound;->play()V

    .line 252
    :cond_0
    return-void
.end method

.method pressToExit()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/andoop/freerunning/Game;->mToexit:Z

    if-nez v0, :cond_0

    .line 228
    const-string v0, "press again to exit"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/freerunning/Game;->mToexit:Z

    .line 230
    new-instance v0, Lcom/andoop/freerunning/Game$6;

    invoke-direct {v0, p0}, Lcom/andoop/freerunning/Game$6;-><init>(Lcom/andoop/freerunning/Game;)V

    .line 242
    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$6;->start()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->exitGame()V

    goto :goto_0
.end method

.method resumeGame()V
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/andoop/android/engine/Time;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/andoop/android/engine/Time;->resumeGame()V

    .line 220
    :cond_0
    return-void
.end method

.method resumeMusic()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$MusicHandler;->resumeMusic()V

    .line 184
    :cond_0
    return-void
.end method

.method public final saveBestScore(I)V
    .locals 2
    .param p1, "bestNow"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/andoop/freerunning/Game;->mBestScore:I

    .line 207
    const-string v0, "best_score_key_runner"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/freerunning/Game;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected setSoundEnable(Z)V
    .locals 2
    .param p1, "pSoundEnable"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    .line 147
    const-string v0, "need_sound"

    iget-boolean v1, p0, Lcom/andoop/freerunning/Game;->soundEnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/andoop/freerunning/Game;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->getScene()Lcom/andoop/android/engine/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/freerunning/Game;->mGameScene:Lcom/andoop/freerunning/GameScene;

    if-ne v0, v1, :cond_0

    .line 150
    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->playMusic()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/andoop/freerunning/Game;->stopMusic()V

    goto :goto_0
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mShowAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andoop/freerunning/Game;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method stopMusic()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusic:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/andoop/freerunning/Game;->mMusicHandler:Lcom/andoop/freerunning/Game$MusicHandler;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game$MusicHandler;->fadeOutMusic()V

    .line 178
    :cond_0
    return-void
.end method
