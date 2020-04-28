.class Lcom/andoop/freerunning/GameScene$2;
.super Lcom/andoop/android/engine/DelayedRunnable;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/GameScene;-><init>(Lcom/andoop/freerunning/Game;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/GameScene;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/GameScene;F)V
    .locals 0
    .param p2, "$anonymous0"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/GameScene$2;->this$0:Lcom/andoop/freerunning/GameScene;

    .line 175
    invoke-direct {p0, p2}, Lcom/andoop/android/engine/DelayedRunnable;-><init>(F)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene$2;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v0, v0, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, p0, Lcom/andoop/freerunning/GameScene$2;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v1, v1, Lcom/andoop/freerunning/GameScene;->mGame:Lcom/andoop/freerunning/Game;

    iget-object v1, v1, Lcom/andoop/freerunning/Game;->mEndScene:Lcom/andoop/freerunning/EndScene;

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Game;->setScene(Lcom/andoop/android/engine/Scene;)V

    .line 179
    return-void
.end method
