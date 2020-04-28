.class Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine$1;
.super Ljava/lang/Object;
.source "CascadesWallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;


# direct methods
.method constructor <init>(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine$1;->this$1:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine$1;->this$1:Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;

    invoke-virtual {v0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$CascadesEngine;->renderFrame()V

    .line 265
    return-void
.end method
