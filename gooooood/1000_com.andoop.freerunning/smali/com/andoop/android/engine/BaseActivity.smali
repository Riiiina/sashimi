.class public abstract Lcom/andoop/android/engine/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/BaseActivity$AdmobListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$andoop$android$engine$EngineOptions$ScreenOrientation:[I


# instance fields
.field protected mAdmobListener:Lcom/andoop/android/engine/BaseActivity$AdmobListener;

.field private mCamera:Lcom/andoop/android/engine/Camera;

.field protected mContainer:Landroid/widget/RelativeLayout;

.field private mData:Lcom/andoop/android/common/AndoopData;

.field private mEngine:Lcom/andoop/android/engine/Engine;

.field protected mHandler:Landroid/os/Handler;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic $SWITCH_TABLE$com$andoop$android$engine$EngineOptions$ScreenOrientation()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/andoop/android/engine/BaseActivity;->$SWITCH_TABLE$com$andoop$android$engine$EngineOptions$ScreenOrientation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->values()[Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->LANDSCAPE:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    invoke-virtual {v1}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->PORTRAIT:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    invoke-virtual {v1}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/andoop/android/engine/BaseActivity;->$SWITCH_TABLE$com$andoop$android$engine$EngineOptions$ScreenOrientation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 313
    new-instance v0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/BaseActivity$AdmobListener;-><init>(Lcom/andoop/android/engine/BaseActivity;)V

    iput-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mAdmobListener:Lcom/andoop/android/engine/BaseActivity$AdmobListener;

    .line 39
    return-void
.end method

.method private applyEngineOptions(Lcom/andoop/android/engine/EngineOptions;)V
    .locals 3
    .param p1, "engineOptions"    # Lcom/andoop/android/engine/EngineOptions;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/andoop/android/engine/BaseActivity;->applyFullscreen()V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->needsMusic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->needsSound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->setVolumeControlStream(I)V

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->needVibration()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->needsErrorHandler()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    new-instance v1, Lcom/andoop/android/common/ErrorHandler;

    invoke-direct {v1}, Lcom/andoop/android/common/ErrorHandler;-><init>()V

    invoke-virtual {v1, p0}, Lcom/andoop/android/common/ErrorHandler;->register(Landroid/content/Context;)V

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/andoop/android/engine/EngineOptions;->getScreenOrientation()Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    move-result-object v0

    .line 102
    .local v0, "orientation":Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    if-eqz v0, :cond_5

    .line 103
    invoke-static {}, Lcom/andoop/android/engine/BaseActivity;->$SWITCH_TABLE$com$andoop$android$engine$EngineOptions$ScreenOrientation()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_5
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private applyFullscreen()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 116
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 117
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    return-void
.end method

.method private final onSetContentView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 63
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Lcom/andoop/android/engine/GameView;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/GameView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "gv":Lcom/andoop/android/engine/GameView;
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v1, v0}, Lcom/andoop/android/engine/Engine;->setGameView(Lcom/andoop/android/engine/GameView;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addAdView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "adview"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 359
    new-instance v0, Lcom/andoop/android/engine/BaseActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/andoop/android/engine/BaseActivity$1;-><init>(Lcom/andoop/android/engine/BaseActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method protected admobLoadFailed(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 403
    return-void
.end method

.method protected admobReceived(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 405
    return-void
.end method

.method protected admobRefreshFailed(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 404
    return-void
.end method

.method protected admobRefreshReceived(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 406
    return-void
.end method

.method protected createFullScreenCamera()Lcom/andoop/android/engine/Camera;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    new-instance v1, Lcom/andoop/android/engine/Camera;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/andoop/android/engine/Camera;-><init>(FFFF)V

    return-object v1
.end method

.method protected createFullScreenCameraByHeight(F)Lcom/andoop/android/engine/Camera;
    .locals 5
    .param p1, "pHeight"    # F

    .prologue
    const/4 v4, 0x0

    .line 129
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 132
    .local v1, "width":F
    new-instance v2, Lcom/andoop/android/engine/Camera;

    invoke-direct {v2, v4, v4, v1, p1}, Lcom/andoop/android/engine/Camera;-><init>(FFFF)V

    return-object v2
.end method

.method protected createFullScreenCameraByWidth(F)Lcom/andoop/android/engine/Camera;
    .locals 5
    .param p1, "pWidth"    # F

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 125
    .local v0, "height":F
    new-instance v2, Lcom/andoop/android/engine/Camera;

    invoke-direct {v2, v4, v4, p1, v0}, Lcom/andoop/android/engine/Camera;-><init>(FFFF)V

    return-object v2
.end method

.method protected createFullScreenZoomCameraByHeight(F)Lcom/andoop/android/engine/Camera;
    .locals 5
    .param p1, "pHeight"    # F

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 146
    .local v1, "width":F
    new-instance v2, Lcom/andoop/android/engine/ZoomCamera;

    invoke-direct {v2, v4, v4, v1, p1}, Lcom/andoop/android/engine/ZoomCamera;-><init>(FFFF)V

    return-object v2
.end method

.method protected createFullScreenZoomCameraByWidth(F)Lcom/andoop/android/engine/Camera;
    .locals 5
    .param p1, "pWidth"    # F

    .prologue
    const/4 v4, 0x0

    .line 136
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 139
    .local v0, "height":F
    new-instance v2, Lcom/andoop/android/engine/ZoomCamera;

    invoke-direct {v2, v4, v4, p1, v0}, Lcom/andoop/android/engine/ZoomCamera;-><init>(FFFF)V

    return-object v2
.end method

.method public dipToGameSizeX(F)F
    .locals 4
    .param p1, "dip"    # F

    .prologue
    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 381
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    iget v2, v2, Lcom/andoop/android/engine/Camera;->mScaleX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    iget v1, v2, Lcom/andoop/android/engine/Camera;->mScaleX:F

    .line 387
    .local v1, "scale":F
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    .line 385
    .end local v1    # "scale":F
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v3}, Lcom/andoop/android/engine/Camera;->getWidth()F

    move-result v3

    div-float v1, v2, v3

    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method public dipToGameSizeY(F)F
    .locals 4
    .param p1, "dip"    # F

    .prologue
    .line 391
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 392
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 394
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    iget v2, v2, Lcom/andoop/android/engine/Camera;->mScaleY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    iget v1, v2, Lcom/andoop/android/engine/Camera;->mScaleY:F

    .line 400
    .local v1, "scale":F
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    .line 398
    .end local v1    # "scale":F
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v3}, Lcom/andoop/android/engine/Camera;->getHeight()F

    move-result v3

    div-float v1, v2, v3

    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method protected getAdmobAdView(Z)Lcom/admob/android/ads/AdView;
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    new-instance v0, Lcom/admob/android/ads/AdView;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/app/Activity;)V

    .line 316
    .local v0, "v":Lcom/admob/android/ads/AdView;
    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 317
    invoke-virtual {v0, v4}, Lcom/admob/android/ads/AdView;->setEnabled(Z)V

    .line 320
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mAdmobListener:Lcom/andoop/android/engine/BaseActivity$AdmobListener;

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 321
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 322
    const-string v2, "emulator"

    aput-object v2, v1, v3

    .line 323
    const-string v2, "34B287660109463630096944B7544D14"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 324
    const-string v3, "987658283A8FBA2E1FB0A1D6EABEF72E"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 325
    const-string v3, "CE40B30A1164D44EF3B17D7B1572686A"

    aput-object v3, v1, v2

    .line 326
    const-string v2, "85CAD476C7338131BD602FE347F09C78"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    .line 327
    const-string v3, "7B6B8DF64B59DBDC4FC10230302AB16A"

    aput-object v3, v1, v2

    .line 321
    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->setTestDevices([Ljava/lang/String;)V

    .line 331
    return-object v0

    :cond_0
    move v1, v5

    .line 316
    goto :goto_0
.end method

.method public final getData(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;I)I

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public final getData(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 287
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;J)J

    move-result-wide v0

    .line 290
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public getData()Lcom/andoop/android/common/AndoopData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    return-object v0
.end method

.method public final getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final getData(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public moveAdView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "adview"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 368
    new-instance v0, Lcom/andoop/android/engine/BaseActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/andoop/android/engine/BaseActivity$2;-><init>(Lcom/andoop/android/engine/BaseActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const-string v1, "---> BaseActivity onCreate"

    invoke-static {v1}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/andoop/android/common/AndoopData;

    invoke-direct {v1, p0}, Lcom/andoop/android/common/AndoopData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    .line 171
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->onLoadEngine()Lcom/andoop/android/engine/Engine;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    .line 172
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    iget-object v1, v1, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    iput-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mCamera:Lcom/andoop/android/engine/Camera;

    .line 174
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v1}, Lcom/andoop/android/engine/Engine;->getEngineOptions()Lcom/andoop/android/engine/EngineOptions;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/andoop/android/engine/BaseActivity;->applyEngineOptions(Lcom/andoop/android/engine/EngineOptions;)V

    .line 176
    invoke-direct {p0}, Lcom/andoop/android/engine/BaseActivity;->onSetContentView()V

    .line 178
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->onLoadResources()V

    .line 180
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->onLoadScene()Lcom/andoop/android/engine/Scene;

    move-result-object v0

    .line 182
    .local v0, "scene":Lcom/andoop/android/engine/Scene;
    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v1, v0}, Lcom/andoop/android/engine/Engine;->onLoadComplete(Lcom/andoop/android/engine/Scene;)V

    .line 184
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->onLoadComplete()V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->onUnloadResources()V

    .line 207
    return-void
.end method

.method public abstract onInitResources()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 211
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v2}, Lcom/andoop/android/engine/Engine;->getScene()Lcom/andoop/android/engine/Scene;

    move-result-object v1

    .line 212
    .local v1, "s":Lcom/andoop/android/engine/Scene;
    const/4 v0, 0x0

    .line 213
    .local v0, "b":Z
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1, p1, p2}, Lcom/andoop/android/engine/Scene;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 217
    :cond_0
    if-eqz v0, :cond_1

    .line 218
    const/4 v2, 0x1

    .line 221
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v2}, Lcom/andoop/android/engine/Engine;->getScene()Lcom/andoop/android/engine/Scene;

    move-result-object v1

    .line 228
    .local v1, "s":Lcom/andoop/android/engine/Scene;
    const/4 v0, 0x0

    .line 229
    .local v0, "b":Z
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1, p1, p2}, Lcom/andoop/android/engine/Scene;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 233
    :cond_0
    if-eqz v0, :cond_1

    .line 234
    const/4 v2, 0x1

    .line 237
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public abstract onLoadComplete()V
.end method

.method public abstract onLoadEngine()Lcom/andoop/android/engine/Engine;
.end method

.method public abstract onLoadResources()V
.end method

.method public abstract onLoadScene()Lcom/andoop/android/engine/Scene;
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0}, Lcom/andoop/android/common/AndoopData;->save()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->onResume()V

    .line 191
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v2}, Lcom/andoop/android/engine/Engine;->getScene()Lcom/andoop/android/engine/Scene;

    move-result-object v1

    .line 244
    .local v1, "s":Lcom/andoop/android/engine/Scene;
    const/4 v0, 0x0

    .line 245
    .local v0, "b":Z
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1, p1}, Lcom/andoop/android/engine/Scene;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 249
    :cond_0
    if-eqz v0, :cond_1

    .line 250
    const/4 v2, 0x1

    .line 253
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onUnloadResources()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->getEngineOptions()Lcom/andoop/android/engine/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andoop/android/engine/EngineOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/MusicManager;->releaseAll()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Engine;->getEngineOptions()Lcom/andoop/android/engine/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andoop/android/engine/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/andoop/android/engine/BaseActivity;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->releaseAll()V

    .line 272
    :cond_1
    return-void
.end method

.method public final putData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mData:Lcom/andoop/android/common/AndoopData;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/common/AndoopData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_0
    return-void
.end method

.method public setScene(Lcom/andoop/android/engine/Scene;)V
    .locals 1
    .param p1, "pScene"    # Lcom/andoop/android/engine/Scene;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mEngine:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/Engine;->setScene(Lcom/andoop/android/engine/Scene;)V

    .line 60
    return-void
.end method

.method public vibrate(J)V
    .locals 2
    .param p1, "pMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 161
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
