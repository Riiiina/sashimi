.class public Lcom/clov4r/android/nil/MainPlayer;
.super Landroid/app/Activity;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static e:Z


# instance fields
.field d:Lcom/clov4r/android/nil/NativeSurfaceView;

.field private f:Lcom/clov4r/android/nil/AudioThread;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "player"

    sput-object v0, Lcom/clov4r/android/nil/MainPlayer;->a:Ljava/lang/String;

    const-string v0, "SharepRegister2"

    sput-object v0, Lcom/clov4r/android/nil/MainPlayer;->b:Ljava/lang/String;

    const-string v0, "REDISTER_KEY"

    sput-object v0, Lcom/clov4r/android/nil/MainPlayer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/clov4r/android/nil/MainPlayer;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/clov4r/android/nil/cr;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/cr;-><init>(Lcom/clov4r/android/nil/MainPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/MainPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainPlayer;->a()V

    return-void
.end method

.method static synthetic b(Lcom/clov4r/android/nil/MainPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static native nativeGetFPS()I
.end method

.method public static native nativePlay(Ljava/lang/String;)V
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget-object v0, Lcom/clov4r/android/nil/MainPlayer;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->setContentView(I)V

    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->g:Landroid/widget/TextView;

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/NativeSurfaceView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-static {v1}, Lcom/clov4r/android/nil/MainPlayer;->nativePlay(Ljava/lang/String;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "MainPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->h:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/clov4r/android/nil/cq;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/cq;-><init>(Lcom/clov4r/android/nil/MainPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/16 v0, 0x50

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/clov4r/android/nil/NativeSurfaceView;->getVideoHeight()I

    move-result v0

    invoke-static {}, Lcom/clov4r/android/nil/NativeSurfaceView;->getVideoWidth()I

    move-result v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/NativeSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Lcom/clov4r/android/nil/AudioThread;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/AudioThread;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainPlayer;->f:Lcom/clov4r/android/nil/AudioThread;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/clov4r/android/nil/MainPlayer;->e:Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainPlayer;->onStop()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainPlayer;->onStop()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/clov4r/android/nil/MainPlayer;->e:Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainPlayer;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
