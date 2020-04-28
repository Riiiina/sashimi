.class Lcom/andoop/freerunning/Runner$1;
.super Ljava/lang/Object;
.source "Runner.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/Runner;-><init>(FLcom/andoop/freerunning/Game;Lcom/andoop/freerunning/GameScene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/Runner;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/Runner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/andoop/android/engine/entity/shape/AnimatedSprite;)V
    .locals 6
    .param p1, "pAnimatedSprite"    # Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v0}, Lcom/andoop/freerunning/Runner;->access$0(Lcom/andoop/freerunning/Runner;)Lcom/andoop/freerunning/GameScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->resetWallSpeed()V

    .line 87
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v0}, Lcom/andoop/freerunning/Runner;->access$1(Lcom/andoop/freerunning/Runner;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v0}, Lcom/andoop/freerunning/Runner;->access$0(Lcom/andoop/freerunning/Runner;)Lcom/andoop/freerunning/GameScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->delayWallPosition()V

    .line 89
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v0}, Lcom/andoop/freerunning/Runner;->access$2(Lcom/andoop/freerunning/Runner;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v3}, Lcom/andoop/freerunning/Runner;->access$3(Lcom/andoop/freerunning/Runner;)[J

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    invoke-static {v5}, Lcom/andoop/freerunning/Runner;->access$4(Lcom/andoop/freerunning/Runner;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/AnimatedSprite;->animate(II[JILcom/andoop/android/engine/entity/shape/AnimatedSprite$IAnimationListener;)Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$1;->this$0:Lcom/andoop/freerunning/Runner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Runner;->toState(I)V

    goto :goto_0
.end method
