.class Landroix/com/android/NightVisionCam/NightVisionCam$1;
.super Ljava/lang/Object;
.source "NightVisionCam.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroix/com/android/NightVisionCam/NightVisionCam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroix/com/android/NightVisionCam/NightVisionCam;


# direct methods
.method constructor <init>(Landroix/com/android/NightVisionCam/NightVisionCam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroix/com/android/NightVisionCam/NightVisionCam$1;->this$0:Landroix/com/android/NightVisionCam/NightVisionCam;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 309
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 318
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 314
    :pswitch_0
    iget-object v0, p0, Landroix/com/android/NightVisionCam/NightVisionCam$1;->this$0:Landroix/com/android/NightVisionCam/NightVisionCam;

    invoke-static {v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->access$0(Landroix/com/android/NightVisionCam/NightVisionCam;)V

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x7f070000
        :pswitch_0
    .end packed-switch
.end method
