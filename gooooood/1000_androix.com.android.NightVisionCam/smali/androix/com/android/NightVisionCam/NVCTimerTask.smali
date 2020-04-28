.class public Landroix/com/android/NightVisionCam/NVCTimerTask;
.super Ljava/util/TimerTask;
.source "NVCTimerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->takePicture()V

    .line 11
    return-void
.end method
