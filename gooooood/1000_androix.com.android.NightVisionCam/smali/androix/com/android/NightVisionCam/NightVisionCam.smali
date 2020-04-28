.class public Landroix/com/android/NightVisionCam/NightVisionCam;
.super Landroid/app/Activity;
.source "NightVisionCam.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_ABOUT:I = 0x6

.field private static final MENU_COLOR:I = 0x2

.field private static final MENU_EXIT:I = 0x1

.field private static final MENU_OPTIONS:I = 0x5

.field private static final MENU_THREAD:I = 0x3

.field private static final MENU_TIMER:I = 0x4

.field public static final NVC_DIRECTORY:Ljava/lang/String;

.field public static final PREFS_NAME:Ljava/lang/String; = "NightVisionCamPrefs"

.field public static SOUND_CLICK:I

.field public static mAdView:Lcom/google/ads/AdView;

.field static mBitsize:I

.field static mBlueIntBuffer:[I

.field public static mBrightness:I

.field static mBrush01:Landroid/graphics/Paint;

.field public static mBufferBitmap:Landroid/graphics/Bitmap;

.field static mBufferCounter:I

.field static mCamera:Landroid/hardware/Camera;

.field static mChoosenColorIndex:I

.field private static mConfig:Landroid/content/SharedPreferences;

.field public static mGain:I

.field static mGreenIntBuffer:[I

.field public static mHandler:Landroid/os/Handler;

.field static mHeight:I

.field public static mHorizontalQuality:I

.field static mIntBuffer:[I

.field static mIsPainting:Z

.field static mIsReadyToPaint:Z

.field public static mMaxBrightness:I

.field public static mMaxGain:I

.field public static mMaxShutterTime:I

.field public static mMaxZoom:I

.field static mMultiThreading:Z

.field static mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

.field static mRecordFileNamePath:Ljava/lang/String;

.field static mRedIntBuffer:[I

.field static mShowNightVisionText:Z

.field public static mShutterTime:I

.field static mSurface01Holder:Landroid/view/SurfaceHolder;

.field static mSurface02Holder:Landroid/view/SurfaceHolder;

.field static mSurfaceView02DestRect:Landroid/graphics/Rect;

.field static mTakePictureSound:Z

.field static mThumbImageUri:Landroid/net/Uri;

.field static mThumbImageView:Landroid/widget/ImageView;

.field static mTimerIntervalSeconds:I

.field static mTimerRunning:Z

.field static mWidth:I

.field public static mZoom:I

.field private static soundPool:Landroid/media/SoundPool;


# instance fields
.field mButtonBrightness:Landroid/widget/Button;

.field mButtonGain:Landroid/widget/Button;

.field mButtonShutterTime:Landroid/widget/Button;

.field mButtonSnapShot:Landroid/widget/Button;

.field mButtonZoom:Landroid/widget/Button;

.field mNVText:Landroid/widget/TextView;

.field mSeekBar:Landroid/widget/SeekBar;

.field mSeekBarLayout:Landroid/widget/LinearLayout;

.field mSelectedSeekBar:I

.field mSurface01:Landroid/view/SurfaceView;

.field mSurface02:Landroid/view/SurfaceView;

.field mTextSeekBar:Landroid/widget/TextView;

.field mTimer1:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/NightVisionCam/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->NVC_DIRECTORY:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    .line 138
    sput v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    .line 139
    const/16 v0, 0x14

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxShutterTime:I

    .line 140
    sput v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    .line 141
    const/16 v0, 0x32

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxGain:I

    .line 142
    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    .line 143
    const/16 v0, 0x64

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxBrightness:I

    .line 145
    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    .line 146
    const/16 v0, 0xa

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxZoom:I

    .line 149
    sput v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    .line 174
    sput-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsPainting:Z

    .line 175
    sput-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsReadyToPaint:Z

    .line 177
    sput-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    .line 178
    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    .line 179
    sput-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerRunning:Z

    .line 180
    sput v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    .line 181
    sput-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    .line 182
    sput-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    .line 92
    return-void
.end method

.method private UpdateThumbImageView()V
    .locals 2

    .prologue
    .line 367
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mThumbImageView:Landroid/widget/ImageView;

    sget-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mThumbImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 368
    return-void
.end method

.method static synthetic access$0(Landroix/com/android/NightVisionCam/NightVisionCam;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->UpdateThumbImageView()V

    return-void
.end method

.method public static calcColor(I)I
    .locals 2
    .param p0, "aColor"    # I

    .prologue
    const/high16 v1, -0x1000000

    .line 868
    sget v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    packed-switch v0, :pswitch_data_0

    .line 877
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 871
    :pswitch_0
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 873
    :pswitch_1
    or-int v0, v1, p0

    goto :goto_0

    .line 875
    :pswitch_2
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, v1

    goto :goto_0

    .line 868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static calcOppositeColor(I)I
    .locals 2
    .param p0, "aColor"    # I

    .prologue
    const/high16 v1, -0x1000000

    .line 885
    sget v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    packed-switch v0, :pswitch_data_0

    .line 894
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 888
    :pswitch_0
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, v1

    goto :goto_0

    .line 890
    :pswitch_1
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 892
    :pswitch_2
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeZoom(I)V
    .locals 3
    .param p1, "aZoom"    # I

    .prologue
    .line 842
    sget-object v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 845
    .local v1, "oParams":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 848
    sget-object v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    sget-object v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 858
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private doExit()V
    .locals 0

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->finish()V

    .line 1058
    return-void
.end method

.method static doPainting()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 375
    sget-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    if-eqz v0, :cond_0

    .line 377
    sput-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsPainting:Z

    .line 378
    sput-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsReadyToPaint:Z

    .line 404
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 388
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 390
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->updateSurfaceView02()V

    .line 393
    :cond_1
    sput-boolean v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsPainting:Z

    .line 394
    sput-boolean v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsReadyToPaint:Z

    goto :goto_0
.end method

.method private initCam()V
    .locals 5

    .prologue
    .line 414
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    sput-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    .line 418
    new-instance v1, Landroix/com/android/NightVisionCam/NVCPreviewGetter;

    invoke-direct {v1}, Landroix/com/android/NightVisionCam/NVCPreviewGetter;-><init>()V

    .line 427
    .local v1, "getter":Landroix/com/android/NightVisionCam/NVCPreviewGetter;
    :try_start_0
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01Holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 428
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 429
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    :goto_0
    :try_start_1
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    div-int/2addr v3, v4

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    .line 446
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 457
    :goto_1
    :try_start_2
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxZoom:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 464
    :goto_2
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    mul-int/2addr v3, v4

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    .line 468
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    new-array v3, v3, [I

    sput-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    .line 470
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    new-array v3, v3, [I

    sput-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mRedIntBuffer:[I

    .line 471
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    new-array v3, v3, [I

    sput-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mGreenIntBuffer:[I

    .line 472
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    new-array v3, v3, [I

    sput-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBlueIntBuffer:[I

    .line 475
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->setConfig()V

    .line 479
    return-void

    .line 431
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 433
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 437
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 439
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroix/com/android/NightVisionCam/NightVisionCam;->showDialog(I)V

    goto :goto_0

    .line 447
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 449
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 450
    const/16 v3, 0x140

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    .line 451
    const/16 v3, 0xf0

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    goto :goto_1

    .line 458
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 460
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 461
    const/4 v3, 0x0

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxZoom:I

    goto :goto_2
.end method

.method private readConfig()V
    .locals 3

    .prologue
    .line 332
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mShutterTime"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    .line 333
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mGain"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    .line 334
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mBrightness"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    .line 335
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mZoom"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    .line 336
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mChoosenColorIndex"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    .line 337
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mTimerIntervalSeconds"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    .line 339
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mTakePictureSound"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    .line 340
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mShowNightVisionText"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    .line 341
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "mMultiThreading"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    .line 342
    return-void
.end method

.method private saveConfig()V
    .locals 3

    .prologue
    .line 346
    sget-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    .local v0, "configEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "mShutterTime"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v1, "mGain"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string v1, "mBrightness"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string v1, "mZoom"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    const-string v1, "mChoosenColorIndex"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 353
    const-string v1, "mTimerIntervalSeconds"

    sget v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string v1, "mTakePictureSound"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string v1, "mShowNightVisionText"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    const-string v1, "mMultiThreading"

    sget-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    return-void
.end method

.method private setAndActivateMultiThreadingSetting()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    invoke-virtual {v0}, Landroix/com/android/NightVisionCam/NVCPainterThread;->requestStopAndQuit()V

    .line 488
    const/4 v0, 0x0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    .line 490
    :cond_0
    sget-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Landroix/com/android/NightVisionCam/NVCPainterThread;

    invoke-direct {v0}, Landroix/com/android/NightVisionCam/NVCPainterThread;-><init>()V

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    .line 493
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    invoke-virtual {v0}, Landroix/com/android/NightVisionCam/NVCPainterThread;->start()V

    .line 499
    :cond_1
    return-void
.end method

.method private setAndActivateNightVisionTextSetting()V
    .locals 2

    .prologue
    .line 1071
    sget-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setConfig()V
    .locals 1

    .prologue
    .line 1063
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->setAndActivateMultiThreadingSetting()V

    .line 1064
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->setAndActivateNightVisionTextSetting()V

    .line 1065
    sget v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    invoke-direct {p0, v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->changeZoom(I)V

    .line 1066
    return-void
.end method

.method private showGallery()V
    .locals 5

    .prologue
    .line 821
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 826
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 828
    .local v1, "data":Landroid/net/Uri;
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    :try_start_0
    invoke-virtual {p0, v2}, Landroix/com/android/NightVisionCam/NightVisionCam;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 834
    .restart local v1    # "data":Landroid/net/Uri;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "afne":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 1083
    sget v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    if-lez v0, :cond_0

    .line 1086
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    .line 1087
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    new-instance v1, Landroix/com/android/NightVisionCam/NVCTimerTask;

    invoke-direct {v1}, Landroix/com/android/NightVisionCam/NVCTimerTask;-><init>()V

    const-wide/16 v2, 0x0

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1089
    :cond_0
    return-void
.end method

.method private stopCam()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 555
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mPainterThread:Landroix/com/android/NightVisionCam/NVCPainterThread;

    invoke-virtual {v0}, Landroix/com/android/NightVisionCam/NVCPainterThread;->requestStopAndQuit()V

    .line 560
    :cond_0
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 563
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 564
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 565
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 566
    sput-object v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mCamera:Landroid/hardware/Camera;

    .line 569
    :cond_1
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->saveConfig()V

    .line 570
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1097
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimer1:Ljava/util/Timer;

    .line 1100
    :cond_0
    return-void
.end method

.method public static takePicture()V
    .locals 12

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 770
    sget-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->soundPool:Landroid/media/SoundPool;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->SOUND_CLICK:I

    const/4 v4, 0x5

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 775
    :cond_0
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 776
    .local v11, "time":Landroid/text/format/Time;
    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 777
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->NVC_DIRECTORY:Ljava/lang/String;

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    .line 778
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%Y%m%d_%H%M%S"

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    .line 779
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    .line 781
    new-instance v10, Ljava/io/File;

    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->NVC_DIRECTORY:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v10, "standardDirectory":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 788
    :cond_1
    new-instance v8, Ljava/io/File;

    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mRecordFileNamePath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v8, "outFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 793
    .local v9, "outfilestream":Ljava/io/FileOutputStream;
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 794
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 797
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mThumbImageUri:Landroid/net/Uri;

    .line 800
    sget-object v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 816
    .end local v9    # "outfilestream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 805
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 806
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 808
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 810
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 812
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSurfaceView02()V
    .locals 8

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 513
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 520
    .local v2, "cgetWidth":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 523
    .local v1, "cgetHeight":I
    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurfaceView02DestRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 524
    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    sget-object v6, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurfaceView02DestRect:Landroid/graphics/Rect;

    sget-object v7, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrush01:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v1    # "cgetHeight":I
    .end local v2    # "cgetWidth":I
    :cond_0
    if-eqz v0, :cond_1

    .line 536
    :try_start_1
    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 532
    :catchall_0
    move-exception v4

    .line 533
    if-eqz v0, :cond_2

    .line 536
    :try_start_2
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    :cond_2
    :goto_1
    throw v4

    .line 537
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 538
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 537
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 538
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAboutDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 1132
    new-instance v2, Landroix/com/android/NightVisionCam/NightVisionCam$2;

    invoke-direct {v2, p0}, Landroix/com/android/NightVisionCam/NightVisionCam$2;-><init>(Landroix/com/android/NightVisionCam/NightVisionCam;)V

    .line 1142
    .local v2, "okButtonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroix/com/android/NightVisionCam/NightVisionCam$3;

    invoke-direct {v0, p0}, Landroix/com/android/NightVisionCam/NightVisionCam$3;-><init>(Landroix/com/android/NightVisionCam/NightVisionCam;)V

    .line 1155
    .local v0, "buyButtonListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-static {v5}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v3

    .line 1156
    .local v3, "resultsText":Ljava/lang/CharSequence;
    check-cast v3, Ljava/lang/String;

    .end local v3    # "resultsText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 1160
    .local v4, "styledResults":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1164
    .local v1, "infoDialog":Landroid/app/AlertDialog;
    const-string v5, "About"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1165
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1175
    const/4 v5, -0x2

    const-string v6, "Buy adfree"

    invoke-virtual {v1, v5, v6, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1179
    const/4 v5, -0x1

    const-string v6, "Close"

    invoke-virtual {v1, v5, v6, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1182
    return-object v1
.end method

.method public getErrorDialog01()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1225
    new-instance v1, Landroix/com/android/NightVisionCam/NightVisionCam$4;

    invoke-direct {v1, p0}, Landroix/com/android/NightVisionCam/NightVisionCam$4;-><init>(Landroix/com/android/NightVisionCam/NightVisionCam;)V

    .line 1239
    .local v1, "okButtonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1242
    .local v0, "infoDialog":Landroid/app/AlertDialog;
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1243
    const-string v2, "Camera device failed.\nPerhaps your phone does not support it, is crashed or an app is using it already.\nPlease exit and try again."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1245
    const/4 v2, -0x1

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1246
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1192
    packed-switch p1, :pswitch_data_0

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1197
    :pswitch_0
    if-eqz p2, :cond_0

    .line 1203
    const-string v0, "mShowNightVisionText"

    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    .line 1204
    const-string v0, "mTakePictureSound"

    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    .line 1206
    const-string v0, "mTimerIntervalSeconds"

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    .line 1209
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->setAndActivateNightVisionTextSetting()V

    .line 1211
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->saveConfig()V

    goto :goto_0

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000b

    if-ne v0, v1, :cond_3

    .line 683
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    :cond_0
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxShutterTime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 688
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const-string v1, "SHUTTERTIME"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 690
    iput v3, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    .line 691
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 765
    :cond_1
    :goto_0
    return-void

    .line 696
    :cond_2
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 701
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000c

    if-ne v0, v1, :cond_6

    .line 704
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 707
    :cond_4
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxGain:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 709
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const-string v1, "GAIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 711
    iput v4, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    .line 712
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_5
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 720
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000e

    if-ne v0, v1, :cond_9

    .line 723
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 727
    :cond_7
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 729
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const-string v1, "BRIGHTNESS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 731
    iput v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    .line 732
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 737
    :cond_8
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 740
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000f

    if-ne v0, v1, :cond_c

    .line 743
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_b

    .line 746
    :cond_a
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mMaxZoom:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 748
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const-string v1, "ZOOM"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 750
    iput v6, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    .line 751
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 756
    :cond_b
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 759
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050011

    if-ne v0, v1, :cond_1

    .line 761
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->showGallery()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const-string v5, "NightVisionCamPrefs"

    invoke-virtual {p0, v5, v11}, Landroix/com/android/NightVisionCam/NightVisionCam;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mConfig:Landroid/content/SharedPreferences;

    .line 204
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->requestWindowFeature(I)Z

    .line 207
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    const/16 v7, 0x400

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 209
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->setContentView(I)V

    .line 211
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->readConfig()V

    .line 213
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 214
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 221
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f030000

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "adxml":Landroid/view/View;
    const v5, 0x7f050005

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/ads/AdView;

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mAdView:Lcom/google/ads/AdView;

    .line 225
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mAdView:Lcom/google/ads/AdView;

    new-instance v6, Lcom/google/ads/AdRequest;

    invoke-direct {v6}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v5, v6}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 227
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    .line 233
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    const-string v6, "NIGHTVISION"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    invoke-static {v12}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v3, "rela":Landroid/widget/RelativeLayout;
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 238
    const/16 v5, 0x53

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 239
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const v5, 0x7f030003

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 245
    .local v4, "seekview":Landroid/view/View;
    const v5, 0x7f050012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    .line 246
    const v5, 0x7f050021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    .line 247
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 248
    const v5, 0x7f05001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    .line 250
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    invoke-static {v12}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcOppositeColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    sget v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    if-ne v5, v8, :cond_0

    .line 254
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 261
    :goto_0
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const-string v6, "SEEK"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    const v5, 0x7f050009

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonSnapShot:Landroid/widget/Button;

    .line 270
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonSnapShot:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    const v5, 0x7f05000b

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonShutterTime:Landroid/widget/Button;

    .line 272
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonShutterTime:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v5, 0x7f05000c

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonGain:Landroid/widget/Button;

    .line 274
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonGain:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v5, 0x7f05000e

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonBrightness:Landroid/widget/Button;

    .line 276
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonBrightness:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v5, 0x7f05000f

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonZoom:Landroid/widget/Button;

    .line 278
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonZoom:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v5, 0x7f050013

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01:Landroid/view/SurfaceView;

    .line 283
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01Holder:Landroid/view/SurfaceHolder;

    .line 284
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v8}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 285
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface01Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 288
    const v5, 0x7f050007

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02:Landroid/view/SurfaceView;

    .line 290
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02Holder:Landroid/view/SurfaceHolder;

    .line 291
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurface02Holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v11}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 294
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrush01:Landroid/graphics/Paint;

    .line 295
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mSurfaceView02DestRect:Landroid/graphics/Rect;

    .line 297
    const v5, 0x7f050011

    invoke-virtual {p0, v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mThumbImageView:Landroid/widget/ImageView;

    .line 298
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mThumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v5, Landroid/media/SoundPool;

    const/4 v6, 0x4

    const/16 v7, 0x64

    invoke-direct {v5, v6, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->soundPool:Landroid/media/SoundPool;

    .line 303
    sget-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->soundPool:Landroid/media/SoundPool;

    const/high16 v6, 0x7f040000

    const/4 v7, 0x5

    invoke-virtual {v5, p0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    sput v5, Landroix/com/android/NightVisionCam/NightVisionCam;->SOUND_CLICK:I

    .line 305
    new-instance v5, Landroid/os/Handler;

    new-instance v6, Landroix/com/android/NightVisionCam/NightVisionCam$1;

    invoke-direct {v6, p0}, Landroix/com/android/NightVisionCam/NightVisionCam$1;-><init>(Landroix/com/android/NightVisionCam/NightVisionCam;)V

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mHandler:Landroid/os/Handler;

    .line 328
    return-void

    .line 258
    :cond_0
    iget-object v5, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1105
    packed-switch p1, :pswitch_data_0

    .line 1113
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1109
    :pswitch_0
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getAboutDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1111
    :pswitch_1
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->getErrorDialog01()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 917
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 921
    sget-boolean v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    if-eqz v4, :cond_0

    .line 923
    const-string v4, "Disable Multi-Threading"

    invoke-interface {p1, v6, v5, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 924
    .local v0, "miabout":Landroid/view/MenuItem;
    const v4, 0x7f02000a

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 933
    :goto_0
    sget-boolean v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerRunning:Z

    if-eqz v4, :cond_1

    .line 935
    const-string v4, "Stop Timer"

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 936
    const v4, 0x7f020007

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 944
    :goto_1
    const/4 v4, 0x2

    const-string v5, "Change Color"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 945
    .local v1, "micolor":Landroid/view/MenuItem;
    const v4, 0x7f02000c

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 948
    const/4 v4, 0x5

    const-string v5, "Options"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 949
    .local v3, "mioptions":Landroid/view/MenuItem;
    const v4, 0x7f02000e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 952
    const/4 v4, 0x6

    const-string v5, "About"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 953
    const v4, 0x7f02000b

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 956
    const-string v4, "Exit"

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 957
    .local v2, "miexit":Landroid/view/MenuItem;
    const v4, 0x7f02000d

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 959
    return v7

    .line 928
    .end local v0    # "miabout":Landroid/view/MenuItem;
    .end local v1    # "micolor":Landroid/view/MenuItem;
    .end local v2    # "miexit":Landroid/view/MenuItem;
    .end local v3    # "mioptions":Landroid/view/MenuItem;
    :cond_0
    const-string v4, "Enable Multi-Threading"

    invoke-interface {p1, v6, v5, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 929
    .restart local v0    # "miabout":Landroid/view/MenuItem;
    const v4, 0x7f020009

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 940
    :cond_1
    const-string v4, "Start Timer"

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 941
    const v4, 0x7f020008

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 971
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 1051
    :goto_0
    return v1

    .line 975
    :pswitch_0
    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerRunning:Z

    if-eqz v1, :cond_0

    .line 977
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->stopTimer()V

    .line 978
    sput-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerRunning:Z

    :goto_1
    move v1, v3

    .line 987
    goto :goto_0

    .line 982
    :cond_0
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->startTimer()V

    .line 983
    sput-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerRunning:Z

    goto :goto_1

    .line 991
    :pswitch_1
    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    if-eqz v1, :cond_1

    .line 993
    sput-boolean v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    .line 1000
    :goto_2
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->setAndActivateMultiThreadingSetting()V

    move v1, v3

    .line 1003
    goto :goto_0

    .line 997
    :cond_1
    sput-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mMultiThreading:Z

    goto :goto_2

    .line 1008
    :pswitch_2
    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    .line 1009
    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    if-le v1, v4, :cond_2

    .line 1011
    sput v2, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    .line 1013
    :cond_2
    iget-object v1, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mNVText:Landroid/widget/TextView;

    invoke-static {v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1014
    iget-object v1, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    invoke-static {v5}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcOppositeColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    if-ne v1, v4, :cond_3

    .line 1018
    iget-object v1, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_3
    move v1, v3

    .line 1025
    goto :goto_0

    .line 1022
    :cond_3
    iget-object v1, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mTextSeekBar:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1030
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1031
    .local v0, "intento":Landroid/content/Intent;
    const-string v1, "androix.com.android.NightVisionCam"

    const-string v2, "androix.com.android.NightVisionCam.NVCOptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0, v3}, Landroix/com/android/NightVisionCam/NightVisionCam;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v3

    .line 1034
    goto :goto_0

    .line 1039
    .end local v0    # "intento":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0, v2}, Landroix/com/android/NightVisionCam/NightVisionCam;->showDialog(I)V

    move v1, v3

    .line 1042
    goto :goto_0

    .line 1045
    :pswitch_5
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->doExit()V

    move v1, v3

    .line 1046
    goto :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 606
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 904
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 905
    invoke-virtual {p0, p1}, Landroix/com/android/NightVisionCam/NightVisionCam;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 643
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    add-int/lit8 v0, p2, 0x1

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    add-int/lit8 v0, p2, 0x1

    sput v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    goto :goto_0

    .line 651
    :cond_2
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    sput p2, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    goto :goto_0

    .line 655
    :cond_3
    iget v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSelectedSeekBar:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sput p2, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    .line 658
    sget v0, Landroix/com/android/NightVisionCam/NightVisionCam;->mZoom:I

    invoke-direct {p0, v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->changeZoom(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 600
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 667
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 673
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050009

    if-ne v0, v1, :cond_2

    .line 613
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonSnapShot:Landroid/widget/Button;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 618
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->takePicture()V

    :cond_0
    :goto_0
    move v0, v2

    .line 632
    :goto_1
    return v0

    .line 623
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 625
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam;->mButtonSnapShot:Landroid/widget/Button;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 632
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 580
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 584
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->initCam()V

    .line 585
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 589
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NightVisionCam;->stopCam()V

    .line 592
    return-void
.end method
