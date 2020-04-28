.class public Lcom/andoop/android/engine/EngineOptions;
.super Ljava/lang/Object;
.source "EngineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/EngineOptions$IResolutionPolicy;,
        Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    }
.end annotation


# instance fields
.field private final mCamera:Lcom/andoop/android/engine/Camera;

.field private final mFullscreen:Z

.field private mMinFrameLength:J

.field private mNeedVibration:Z

.field private mNeedsErrorHandler:Z

.field private mNeedsMusic:Z

.field private mNeedsSound:Z

.field private final mScreenOrientation:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;


# direct methods
.method public constructor <init>(ZLcom/andoop/android/engine/EngineOptions$ScreenOrientation;Lcom/andoop/android/engine/Camera;)V
    .locals 2
    .param p1, "pFullscreen"    # Z
    .param p2, "pScreenOrientation"    # Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    .param p3, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/andoop/android/engine/EngineOptions;->mMinFrameLength:J

    .line 36
    iput-boolean p1, p0, Lcom/andoop/android/engine/EngineOptions;->mFullscreen:Z

    .line 37
    iput-object p2, p0, Lcom/andoop/android/engine/EngineOptions;->mScreenOrientation:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    .line 39
    iput-object p3, p0, Lcom/andoop/android/engine/EngineOptions;->mCamera:Lcom/andoop/android/engine/Camera;

    .line 40
    return-void
.end method


# virtual methods
.method public getCamera()Lcom/andoop/android/engine/Camera;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/andoop/android/engine/EngineOptions;->mCamera:Lcom/andoop/android/engine/Camera;

    return-object v0
.end method

.method public getMinFrameLength()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/andoop/android/engine/EngineOptions;->mMinFrameLength:J

    return-wide v0
.end method

.method public getScreenOrientation()Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/andoop/android/engine/EngineOptions;->mScreenOrientation:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/andoop/android/engine/EngineOptions;->mFullscreen:Z

    return v0
.end method

.method public needVibration()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedVibration:Z

    return v0
.end method

.method public needsErrorHandler()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsErrorHandler:Z

    return v0
.end method

.method public needsMusic()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsMusic:Z

    return v0
.end method

.method public needsSound()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsSound:Z

    return v0
.end method

.method public setMinFrameLength(J)Lcom/andoop/android/engine/EngineOptions;
    .locals 0
    .param p1, "mfl"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/andoop/android/engine/EngineOptions;->mMinFrameLength:J

    .line 100
    return-object p0
.end method

.method public setNeedVibration(Z)Lcom/andoop/android/engine/EngineOptions;
    .locals 0
    .param p1, "pNeedVibration"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedVibration:Z

    .line 86
    return-object p0
.end method

.method public setNeedsErrorHandler(Z)Lcom/andoop/android/engine/EngineOptions;
    .locals 0
    .param p1, "pNeedsErrorHandler"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsErrorHandler:Z

    .line 95
    return-object p0
.end method

.method public setNeedsMusic(Z)Lcom/andoop/android/engine/EngineOptions;
    .locals 0
    .param p1, "pNeedsMusic"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsMusic:Z

    .line 77
    return-object p0
.end method

.method public setNeedsSound(Z)Lcom/andoop/android/engine/EngineOptions;
    .locals 0
    .param p1, "pNeedsSound"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/andoop/android/engine/EngineOptions;->mNeedsSound:Z

    .line 68
    return-object p0
.end method
