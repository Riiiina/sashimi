.class Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "CascadesWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CascadesEngine"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CascadesEngine"


# instance fields
.field EGL_CONTEXT_CLIENT_VERSION:I

.field EGL_OPENGL_ES2_BIT:I

.field btime:J

.field frames:J

.field mAlphaSize:I

.field mBlueSize:I

.field mBpp:I

.field mDepthSize:I

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mGlVersion:I

.field mGreenSize:I

.field public final mHandler:Landroid/os/Handler;

.field mHasGL:Z

.field private mHasRenderEngine:Z

.field private mHasSurface:Z

.field private mHeight:I

.field private mNative:I

.field mRedSize:I

.field public final mRender:Ljava/lang/Runnable;

.field mStencilSize:I

.field mValue:[I

.field private mVisible:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

.field time:J


# direct methods
.method constructor <init>(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 247
    iput-object p1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine$1;

    invoke-direct {v0, p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine$1;-><init>(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;)V

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    .line 388
    iput-wide v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->time:J

    .line 389
    iput-wide v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->btime:J

    .line 390
    iput-wide v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->frames:J

    .line 511
    const/16 v0, 0x3098

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 512
    const/4 v0, 0x4

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->EGL_OPENGL_ES2_BIT:I

    .line 514
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mValue:[I

    .line 516
    iput v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    .line 517
    iput v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRedSize:I

    .line 518
    const/4 v0, 0x6

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGreenSize:I

    .line 519
    iput v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mBlueSize:I

    .line 520
    iput v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mAlphaSize:I

    .line 521
    iput v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mDepthSize:I

    .line 522
    iput v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mStencilSize:I

    .line 523
    iput v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mBpp:I

    .line 525
    iput-boolean v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasGL:Z

    return-void
.end method

.method private createRenderEngine()V
    .locals 3

    .prologue
    const-string v2, "CascadesEngine"

    .line 678
    const-string v0, "CascadesEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".createRenderEngine()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    if-lez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->createGL()V

    .line 683
    :cond_0
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasRenderEngine:Z

    if-nez v0, :cond_1

    .line 684
    const-string v0, "CascadesEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".createRenderEngine() - nCreateRenderEngine()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    iget v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    invoke-static {v0, v1, v2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$1000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;II)V

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasRenderEngine:Z

    .line 688
    :cond_1
    return-void
.end method

.method private destroyGL()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 657
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".destroyGL()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasGL:Z

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 661
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 662
    iput-object v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 666
    iput-object v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 671
    iput-object v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 673
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasGL:Z

    .line 675
    :cond_3
    return-void
.end method

.method private destroyRenderEngine()V
    .locals 3

    .prologue
    .line 691
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".destroyRenderEngine()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasRenderEngine:Z

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->renderFrame()V

    .line 694
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$1100(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasRenderEngine:Z

    .line 699
    :cond_0
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    if-lez v0, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->destroyGL()V

    .line 702
    :cond_1
    return-void
.end method

.method private getClosestEGLConfig([Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    .prologue
    .line 536
    const/16 v0, 0x3e8

    .line 537
    const/4 v1, 0x0

    .line 538
    array-length v2, p1

    const/4 v3, 0x0

    move v13, v3

    move v3, v0

    move v0, v13

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 539
    const/16 v5, 0x3025

    invoke-direct {p0, v4, v5}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    .line 540
    const/16 v6, 0x3026

    invoke-direct {p0, v4, v6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    .line 541
    iget v7, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mDepthSize:I

    if-lt v5, v7, :cond_0

    iget v7, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mStencilSize:I

    if-lt v6, v7, :cond_0

    .line 542
    const/16 v7, 0x3024

    invoke-direct {p0, v4, v7}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    .line 543
    const/16 v8, 0x3023

    invoke-direct {p0, v4, v8}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    .line 544
    const/16 v9, 0x3022

    invoke-direct {p0, v4, v9}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v9

    .line 545
    const/16 v10, 0x3021

    invoke-direct {p0, v4, v10}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v10

    .line 546
    iget v11, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRedSize:I

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGreenSize:I

    sub-int v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mBlueSize:I

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mAlphaSize:I

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    .line 548
    if-ge v11, v3, :cond_0

    .line 551
    const-string v1, "CascadesEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getClosestEGLConfig() - Using RGBA_"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " D"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " S"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    move v3, v11

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 555
    :cond_1
    return-object v1
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mValue:[I

    invoke-interface {v0, v1, p1, p2, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mValue:[I

    aget v0, v0, v3

    .line 531
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method createGL()V
    .locals 6

    .prologue
    .line 559
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".createGL()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasGL:Z

    if-nez v0, :cond_d

    .line 564
    const/4 v0, 0x7

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 571
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v0, 0x0

    const/16 v1, 0x3040

    aput v1, v2, v0

    .line 573
    const/4 v0, 0x1

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->EGL_OPENGL_ES2_BIT:I

    aput v1, v2, v0

    .line 574
    const/4 v0, 0x2

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 575
    const/4 v0, 0x3

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 576
    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 577
    const/4 v0, 0x5

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 580
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 583
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 588
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 589
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 591
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 593
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 595
    const/4 v0, 0x0

    aget v4, v5, v0

    .line 597
    const/4 v0, 0x1

    if-ge v4, v0, :cond_2

    .line 598
    const-string v0, "CascadesEngine"

    const-string v1, "No valid EGL-configurations returned by eglChooseConfig()."

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 602
    :cond_2
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 604
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 606
    invoke-direct {p0, v3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getClosestEGLConfig([Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 608
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_3

    .line 609
    const-string v0, "CascadesEngine"

    const-string v1, "No matching EGL-configuration returned by eglChooseConfig()."

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 613
    :cond_3
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_6

    .line 614
    :cond_4
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 615
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 616
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_5

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_6

    .line 622
    :cond_5
    const-string v1, "CascadesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglCreateContext() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_6
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_8

    .line 628
    :cond_7
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 630
    :cond_8
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 631
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_9

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_a

    .line 633
    :cond_9
    const-string v1, "CascadesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglCreateWindowSurface() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_a
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 639
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 640
    const-string v1, "CascadesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_b
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 645
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 646
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_c

    .line 647
    const-string v1, "CascadesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGL() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_c
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mWidth:I

    iget v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasGL:Z

    .line 654
    :cond_d
    return-void

    .line 618
    :cond_e
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto/16 :goto_0

    .line 564
    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3038
    .end array-data
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "WallpaperService"

    const-string v3, ", "

    .line 446
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onCommand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "android.wallpaper.tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "tap.x"

    invoke-virtual {p0, v0, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 449
    const-string v0, "tap.y"

    invoke-virtual {p0, v0, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 450
    const-string v0, "WallpaperService"

    const-string v0, "TAP"

    invoke-virtual {p0, v5, v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->postEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 458
    :goto_0
    return-object v0

    .line 452
    :cond_0
    const-string v0, "android.home.drop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    const-string v0, "drop.x"

    invoke-virtual {p0, v0, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 454
    const-string v0, "drop.y"

    invoke-virtual {p0, v0, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 455
    const-string v0, "WallpaperService"

    const-string v0, "DROP"

    invoke-virtual {p0, v5, v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->postEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 456
    goto :goto_0

    .line 458
    :cond_1
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const-string v2, "CascadesEngine"

    .line 271
    const-string v0, "CascadesEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setTouchEventsEnabled(Z)V

    .line 274
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 275
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->renderType:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    const-string v0, "CascadesEngine"

    const-string v0, "renderType is not valid. Must be set to 0 (SW) or 2 (GL2) in init()"

    invoke-static {v2, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "renderType is not initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->depthBuffer:Z

    if-eqz v0, :cond_0

    .line 285
    const/16 v0, 0x10

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mDepthSize:I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->renderType:I

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    .line 289
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->directory:Ljava/lang/String;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v3, v3, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->bActivateSeafire:I

    invoke-static {v0, v1, v2, v3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$100(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    .line 290
    return-void

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 294
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->destroyRenderEngine()V

    .line 297
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$200(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    .line 299
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 300
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 7

    .prologue
    const-string v3, " "

    .line 365
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onOffsetChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->offsetsChanged(FFFFII)V

    .line 368
    const-string v0, "offset.xOffset"

    invoke-virtual {p0, v0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;F)V

    .line 369
    const-string v0, "offset.yOffset"

    invoke-virtual {p0, v0, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;F)V

    .line 370
    const-string v0, "offset.xStep"

    invoke-virtual {p0, v0, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;F)V

    .line 371
    const-string v0, "offset.yStep"

    invoke-virtual {p0, v0, p4}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;F)V

    .line 372
    const-string v0, "offset.xPixels"

    invoke-virtual {p0, v0, p5}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 373
    const-string v0, "offset.yPixels"

    invoke-virtual {p0, v0, p6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    const-string v3, ", "

    .line 329
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onSurfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 331
    iput p3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mWidth:I

    .line 332
    iput p4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHeight:I

    .line 333
    const-string v0, "display.width"

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mWidth:I

    invoke-virtual {p0, v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 334
    const-string v0, "display.height"

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 335
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->createRenderEngine()V

    .line 336
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->renderFrame()V

    .line 340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasSurface:Z

    .line 341
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 345
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onSurfaceCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 349
    :goto_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 356
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onSurfaceDestroyed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    .line 359
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->destroyRenderEngine()V

    .line 361
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 378
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onTouchEvent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 380
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-virtual {v0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->touchEvent(Landroid/view/MotionEvent;)V

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$600(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;IIIIJ)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$600(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;IIIIJ)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 304
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onVisibilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iput-boolean p1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    .line 306
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0, p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$302(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    .line 308
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-virtual {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->start()V

    .line 309
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->freezeClock:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$400(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V

    .line 312
    :cond_0
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->createRenderEngine()V

    .line 314
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->renderFrame()V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->freezeClock:Z

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$500(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-virtual {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->stop()V

    .line 321
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$300(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$302(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    goto :goto_0
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 466
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    invoke-static {v0, v1, p1, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$800(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".postEvent() - mNative is null. Event discarded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method renderFrame()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 394
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->logFramerate:Z

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->time:J

    .line 396
    iget-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->time:J

    iget-wide v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->btime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 397
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->frames:J

    long-to-float v2, v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->time:J

    iget-wide v6, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->btime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->time:J

    iput-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->btime:J

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->frames:J

    .line 401
    :cond_0
    iget-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->frames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->frames:J

    .line 404
    :cond_1
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-virtual {v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->preRender()V

    .line 408
    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGlVersion:I

    if-nez v1, :cond_7

    .line 410
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 413
    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 414
    if-eqz v2, :cond_2

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    iget v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mWidth:I

    iget v5, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHeight:I

    invoke-static {v0, v3, v2, v4, v5}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$700(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILandroid/graphics/Canvas;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 418
    :cond_2
    if-eqz v2, :cond_3

    .line 419
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 431
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v1

    iget v1, v1, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->minDelay:I

    if-ge v0, v1, :cond_4

    .line 432
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    move-result-object v0

    iget v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->minDelay:I

    .line 435
    :cond_4
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    invoke-virtual {v1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->postRender()V

    .line 438
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-boolean v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v1, :cond_5

    .line 440
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :cond_5
    return-void

    .line 418
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_6

    .line 419
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_6
    throw v0

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 425
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    iget v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mWidth:I

    iget v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHeight:I

    invoke-static {v0, v1, v8, v2, v3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$700(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILandroid/graphics/Canvas;II)I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 427
    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mDepthSize:I

    if-lez v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x100

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_0

    .line 418
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 490
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    const/high16 v2, 0x47800000    # 65536.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v0, v1, p1, v2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$900(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;I)V

    .line 492
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setProperty() - mNative is null. Property ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 478
    iget v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->this$0:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;

    iget v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mNative:I

    shl-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->access$900(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;I)V

    .line 480
    iget-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->mRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v0, "CascadesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setProperty() - mNative is null. Property ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
