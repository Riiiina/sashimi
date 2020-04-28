.class Lcom/andoop/freerunning/GameScene$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/freerunning/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/GameScene;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/GameScene$1;->this$0:Lcom/andoop/freerunning/GameScene;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene$1;->this$0:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->onEnd()V

    .line 93
    iget-object v0, p0, Lcom/andoop/freerunning/GameScene$1;->this$0:Lcom/andoop/freerunning/GameScene;

    invoke-virtual {v0}, Lcom/andoop/freerunning/GameScene;->onReady()V

    .line 94
    return-void
.end method
