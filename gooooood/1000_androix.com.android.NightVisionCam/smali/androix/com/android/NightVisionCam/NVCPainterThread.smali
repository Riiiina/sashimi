.class public Landroix/com/android/NightVisionCam/NVCPainterThread;
.super Ljava/lang/Thread;
.source "NVCPainterThread.java"


# instance fields
.field private mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroix/com/android/NightVisionCam/NVCPainterThread;->mStopped:Z

    .line 6
    return-void
.end method


# virtual methods
.method public requestStopAndQuit()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroix/com/android/NightVisionCam/NVCPainterThread;->mStopped:Z

    .line 61
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 19
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroix/com/android/NightVisionCam/NVCPainterThread;->mStopped:Z

    if-eqz v1, :cond_3

    .line 54
    :cond_1
    return-void

    .line 27
    :cond_2
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_3
    :goto_1
    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsReadyToPaint:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroix/com/android/NightVisionCam/NVCPainterThread;->mStopped:Z

    if-eqz v1, :cond_2

    .line 33
    :cond_4
    iget-boolean v1, p0, Landroix/com/android/NightVisionCam/NVCPainterThread;->mStopped:Z

    if-nez v1, :cond_1

    .line 38
    sput-boolean v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsReadyToPaint:Z

    .line 42
    sget-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 44
    sput-boolean v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsPainting:Z

    .line 46
    sget-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->updateSurfaceView02()V

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
