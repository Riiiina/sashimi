.class Lcom/andoop/freerunning/Runner$3;
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
    iput-object p1, p0, Lcom/andoop/freerunning/Runner$3;->this$0:Lcom/andoop/freerunning/Runner;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/andoop/android/engine/entity/shape/AnimatedSprite;)V
    .locals 2
    .param p1, "pAnimatedSprite"    # Lcom/andoop/android/engine/entity/shape/AnimatedSprite;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$3;->this$0:Lcom/andoop/freerunning/Runner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/andoop/freerunning/Runner;->access$6(Lcom/andoop/freerunning/Runner;I)V

    .line 107
    iget-object v0, p0, Lcom/andoop/freerunning/Runner$3;->this$0:Lcom/andoop/freerunning/Runner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andoop/freerunning/Runner;->toState(I)V

    .line 108
    return-void
.end method
