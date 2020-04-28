.class public Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;
.super Ljava/lang/Object;
.source "CascadesWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public depthBuffer:Z

.field public directory:Ljava/lang/String;

.field public freezeClock:Z

.field public logFramerate:Z

.field public minDelay:I

.field public renderType:I

.field public verbosity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->renderType:I

    .line 120
    iput-boolean v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->depthBuffer:Z

    .line 121
    const/16 v0, 0x19

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->minDelay:I

    .line 122
    iput-boolean v1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->logFramerate:Z

    .line 123
    const/4 v0, 0x7

    iput v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->verbosity:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->directory:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->freezeClock:Z

    return-void
.end method
