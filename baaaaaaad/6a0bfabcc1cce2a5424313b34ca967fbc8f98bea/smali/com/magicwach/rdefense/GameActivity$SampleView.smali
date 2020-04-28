.class Lcom/magicwach/rdefense/GameActivity$SampleView;
.super Landroid/view/View;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;
    }
.end annotation


# static fields
.field private static final STATE_REQUEST_MAX_DELTA:I = 0x1e


# instance fields
.field private game_display:Lcom/magicwach/rdefense/Display;

.field private game_input:Lcom/magicwach/rdefense/GameInput;

.field private game_state:Lcom/magicwach/rdefense/GameState;

.field private monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

.field private monitor_thread:Ljava/lang/Thread;

.field private need_reinit:Z

.field private settings:Landroid/content/SharedPreferences;

.field private sound_enabled:Z

.field private state_request_delta:I

.field private state_request_delta_lock:Ljava/util/concurrent/Semaphore;

.field private state_request_sync:Ljava/util/concurrent/Semaphore;

.field private wake_lock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 133
    iput-object p2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->settings:Landroid/content/SharedPreferences;

    .line 134
    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameActivity$SampleView;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameActivity$SampleView;->setFocusableInTouchMode(Z)V

    .line 136
    const-string v4, "ADDifficultyLevel"

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "difficulty_level":I
    const-string v4, "ADMapSelection"

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, "map_id":I
    const-string v4, "AndroidDefenseMixerValue"

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, "mixer_value":I
    invoke-static {p2}, Lcom/magicwach/rdefense/AchievementData;->init(Landroid/content/SharedPreferences;)V

    .line 140
    invoke-static {p2}, Lcom/magicwach/rdefense/RewardData;->init(Landroid/content/SharedPreferences;)V

    .line 141
    invoke-static {p2}, Lcom/magicwach/rdefense/OptionsData;->init(Landroid/content/SharedPreferences;)V

    .line 142
    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->init(Landroid/app/Activity;)V

    .line 143
    invoke-static {p1}, Lcom/magicwach/rdefense/BulletData;->init(Landroid/app/Activity;)V

    .line 144
    invoke-static {p1, v0}, Lcom/magicwach/rdefense/EnemyData;->init(Landroid/app/Activity;I)V

    .line 145
    invoke-static {p1}, Lcom/magicwach/rdefense/ExplosionData;->init(Landroid/app/Activity;)V

    .line 146
    invoke-static {p1, v0}, Lcom/magicwach/rdefense/GameHud;->init(Landroid/app/Activity;I)V

    .line 147
    invoke-static {}, Lcom/magicwach/rdefense/VectorLookup;->init()V

    .line 148
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_sync:Ljava/util/concurrent/Semaphore;

    .line 149
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta_lock:Ljava/util/concurrent/Semaphore;

    .line 150
    iput v6, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    .line 151
    new-instance v4, Lcom/magicwach/rdefense/GameState;

    invoke-direct {v4, v0, v2}, Lcom/magicwach/rdefense/GameState;-><init>(II)V

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    .line 152
    new-instance v4, Lcom/magicwach/rdefense/Display;

    invoke-direct {v4, p1}, Lcom/magicwach/rdefense/Display;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    .line 153
    new-instance v4, Lcom/magicwach/rdefense/GameInput;

    invoke-direct {v4}, Lcom/magicwach/rdefense/GameInput;-><init>()V

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    .line 154
    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v4, v1}, Lcom/magicwach/rdefense/GameState;->initGame(I)V

    .line 155
    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v5, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v4, v5}, Lcom/magicwach/rdefense/Display;->init(Lcom/magicwach/rdefense/GameState;)V

    .line 156
    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    invoke-virtual {v4}, Lcom/magicwach/rdefense/GameInput;->init()V

    .line 157
    invoke-static {p1, p2}, Lcom/magicwach/rdefense/QuickSave;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 158
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->showStartupMessage()V

    .line 159
    invoke-static {v6}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->sound_enabled:Z

    .line 160
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_0

    .line 161
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 162
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x6

    const-string v5, "RoboDefense"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    .line 163
    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 165
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_0
    iput-object v8, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    .line 166
    iput-object v8, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor_thread:Ljava/lang/Thread;

    .line 167
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->resumeUpdating()V

    .line 168
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->need_reinit:Z

    .line 169
    invoke-virtual {p0, p1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->reInit(Landroid/app/Activity;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/magicwach/rdefense/GameActivity$SampleView;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/magicwach/rdefense/GameActivity$SampleView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta_lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/magicwach/rdefense/GameActivity$SampleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/magicwach/rdefense/GameActivity$SampleView;

    .prologue
    .line 116
    iget v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    return v0
.end method

.method static synthetic access$104(Lcom/magicwach/rdefense/GameActivity$SampleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/magicwach/rdefense/GameActivity$SampleView;

    .prologue
    .line 116
    iget v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    return v0
.end method

.method static synthetic access$200(Lcom/magicwach/rdefense/GameActivity$SampleView;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/magicwach/rdefense/GameActivity$SampleView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_sync:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/magicwach/rdefense/Profiler;->cleanup()V

    .line 180
    invoke-static {}, Lcom/magicwach/rdefense/SoundManager;->release()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->need_reinit:Z

    .line 182
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->wake_lock:Landroid/os/PowerManager$WakeLock;

    .line 186
    :cond_0
    return-void
.end method

.method public endGame()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Display;->upgradeDialogCancel()V

    .line 195
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/GameState;->endGame(I)V

    .line 196
    return-void
.end method

.method public gameIsRunning()Z
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v0

    .line 189
    .local v0, "run_state":I
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameState()Lcom/magicwach/rdefense/GameState;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_sync:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/magicwach/rdefense/Profiler;->enable(Z)V

    .line 219
    invoke-static {}, Lcom/magicwach/rdefense/Profiler;->newFrame()V

    .line 220
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->nextState()V

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta_lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 223
    iget v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    if-lez v1, :cond_0

    .line 224
    iget v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta:I

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->state_request_delta_lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 232
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->nextState()V

    .line 233
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameState;->nextState()V

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v1, p1, v2}, Lcom/magicwach/rdefense/Display;->draw(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;)V

    .line 236
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->sound_enabled:Z

    if-eqz v1, :cond_4

    .line 237
    const-string v1, "SM.play_sounds"

    invoke-static {v1}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/magicwach/rdefense/SoundManager;->play()V

    .line 240
    :cond_4
    invoke-static {}, Lcom/magicwach/rdefense/Profiler;->endFrame()V

    .line 241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 267
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0, v1, v2}, Lcom/magicwach/rdefense/GameInput;->backPressed(Lcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/magicwach/rdefense/GameInput;->fingerDown(IILcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/magicwach/rdefense/GameInput;->fingerDrag(IILcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_input:Lcom/magicwach/rdefense/GameInput;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_display:Lcom/magicwach/rdefense/Display;

    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0, v1, v2}, Lcom/magicwach/rdefense/GameInput;->fingerUp(Lcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInit(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->need_reinit:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/magicwach/rdefense/Profiler;->init()V

    .line 174
    invoke-static {p1}, Lcom/magicwach/rdefense/SoundManager;->init(Landroid/app/Activity;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->need_reinit:Z

    .line 177
    :cond_0
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameState;->resumeGame()V

    .line 199
    return-void
.end method

.method public resumeUpdating()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    invoke-direct {v0, p0}, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;-><init>(Lcom/magicwach/rdefense/GameActivity$SampleView;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    .line 284
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor_thread:Ljava/lang/Thread;

    .line 285
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 287
    :cond_0
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->game_state:Lcom/magicwach/rdefense/GameState;

    invoke-virtual {v0, p1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public showStartupMessage()V
    .locals 6

    .prologue
    const-string v5, "AndroidDefenseStartupMsg"

    const-string v4, ""

    .line 201
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->settings:Landroid/content/SharedPreferences;

    const-string v3, "AndroidDefenseStartupMsg"

    const-string v3, ""

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 203
    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->showError(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AndroidDefenseStartupMsg"

    const-string v2, ""

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public stopUpdating()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->stopUpdating()V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor:Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;

    .line 278
    iput-object v4, p0, Lcom/magicwach/rdefense/GameActivity$SampleView;->monitor_thread:Ljava/lang/Thread;

    .line 280
    :cond_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
