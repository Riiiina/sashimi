.class public abstract Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "CascadesWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;,
        Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;
    }
.end annotation


# static fields
.field public static GL1:I = 0x0

.field public static GL2:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CascadesWallpaperService"

.field public static SW:I


# instance fields
.field protected bActivateSeafire:I

.field private mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

.field private mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->SW:I

    .line 112
    const/4 v0, 0x1

    sput v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->GL1:I

    .line 113
    const/4 v0, 0x2

    sput v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->GL2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->bActivateSeafire:I

    .line 36
    const-string v0, "mnglw-0.8.2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;I)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nCreate(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nCreateRenderEngine(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nDestroyRenderEngine(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nDestroy(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;)Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nUnfreeze(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nFreeze(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;IIIIJ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nPostPointerEvent(IIIIJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILandroid/graphics/Canvas;II)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nRender(ILandroid/graphics/Canvas;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nPostEvent(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->nSetProperty(ILjava/lang/String;I)V

    return-void
.end method

.method private native nCreate(ILjava/lang/String;I)I
.end method

.method private native nCreateRenderEngine(II)V
.end method

.method private native nDestroy(I)V
.end method

.method private native nDestroyRenderEngine(I)V
.end method

.method private native nFreeze(I)V
.end method

.method private native nPostEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nPostPointerEvent(IIIIJ)V
.end method

.method private native nRender(ILandroid/graphics/Canvas;II)I
.end method

.method private native nSetProperty(ILjava/lang/String;I)V
.end method

.method private native nUnfreeze(I)V
.end method


# virtual methods
.method public abstract init(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;)V
.end method

.method public offsetsChanged(FFFFII)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "CascadesWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onConfigurationChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const-string v4, "CascadesWallpaperService"

    .line 55
    const-string v0, "CascadesWallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 58
    new-instance v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    invoke-direct {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;-><init>()V

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    .line 60
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    invoke-virtual {p0, v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->init(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;)V

    .line 62
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    iget-boolean v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->logFramerate:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    iget v1, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->verbosity:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->verbosity:I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    iget v0, v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->verbosity:I

    invoke-static {v0}, Lcom/tat/cascadeswallpaper/android/Log;->setVerbosity(I)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk://assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    iget-object v1, v1, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mConfig:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->directory:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v0, "CascadesWallpaperService"

    const-string v0, "PackageManager.NameNotFoundException, can\'t set the resource dir"

    invoke-static {v4, v0}, Lcom/tat/cascadeswallpaper/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t set resource directory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 3

    .prologue
    .line 41
    const-string v0, "CascadesWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onCreateEngine()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-direct {v0, p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;-><init>(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "CascadesWallpaperService"

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

    .line 48
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 49
    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-virtual {v0, p1, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->postEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "CascadesWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".postEvent() - mEngine is not available. Event discarded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postRender()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public preRender()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-virtual {v0, p1, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;F)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "CascadesWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setProperty() - mEngine is not available. Property ignored."

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
    .line 203
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;->mEngine:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-virtual {v0, p1, p2}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->setProperty(Ljava/lang/String;I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "CascadesWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setProperty() - mEngine is not available. Property ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tat/cascadeswallpaper/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
