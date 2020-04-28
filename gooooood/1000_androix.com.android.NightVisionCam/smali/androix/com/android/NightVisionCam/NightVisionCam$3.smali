.class Landroix/com/android/NightVisionCam/NightVisionCam$3;
.super Ljava/lang/Object;
.source "NightVisionCam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroix/com/android/NightVisionCam/NightVisionCam;->getAboutDialog()Landroid/app/AlertDialog;
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
    iput-object p1, p0, Landroix/com/android/NightVisionCam/NightVisionCam$3;->this$0:Landroix/com/android/NightVisionCam/NightVisionCam;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=pname:androix.com.android.NightVisionCamPro"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1149
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroix/com/android/NightVisionCam/NightVisionCam$3;->this$0:Landroix/com/android/NightVisionCam/NightVisionCam;

    invoke-virtual {v1, v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->startActivity(Landroid/content/Intent;)V

    .line 1150
    return-void
.end method
