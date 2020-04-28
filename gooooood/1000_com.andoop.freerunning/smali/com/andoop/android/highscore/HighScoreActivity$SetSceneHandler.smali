.class Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;
.super Landroid/os/Handler;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/highscore/HighScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetSceneHandler"
.end annotation


# instance fields
.field private mGame:Lcom/andoop/android/engine/BaseActivity;

.field private mScene:Lcom/andoop/android/engine/Scene;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 610
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->mGame:Lcom/andoop/android/engine/BaseActivity;

    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->mScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/BaseActivity;->setScene(Lcom/andoop/android/engine/Scene;)V

    .line 611
    return-void
.end method

.method public setScene(Lcom/andoop/android/engine/BaseActivity;Lcom/andoop/android/engine/Scene;)V
    .locals 3
    .param p1, "game"    # Lcom/andoop/android/engine/BaseActivity;
    .param p2, "scene"    # Lcom/andoop/android/engine/Scene;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->mGame:Lcom/andoop/android/engine/BaseActivity;

    .line 604
    iput-object p2, p0, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->mScene:Lcom/andoop/android/engine/Scene;

    .line 605
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 606
    return-void
.end method
