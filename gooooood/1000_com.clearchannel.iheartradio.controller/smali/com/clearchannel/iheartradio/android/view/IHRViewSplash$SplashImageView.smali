.class Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;
.super Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;
.source "IHRViewSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplashImageView"
.end annotation


# static fields
.field public static final kFrames:I = 0x34


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    invoke-direct {p0, p2}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public advanceID(I)I
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 115
    const v0, 0x7f0200be

    add-int/2addr v0, p1

    return v0
.end method

.method public animateFPS(I)V
    .locals 1
    .param p1, "inFPS"    # I

    .prologue
    .line 110
    const/16 v0, 0x34

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->animateFPS(II)V

    return-void
.end method

.method public leaveAnimation()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mAnimating:Z

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IHRViewSplash"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while attempting to leave animation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
