.class Lcom/andoop/freerunning/Game$4;
.super Ljava/lang/Thread;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/Game;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/Game;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/Game$4;->this$0:Lcom/andoop/freerunning/Game;

    .line 85
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/andoop/freerunning/Game$4;->this$0:Lcom/andoop/freerunning/Game;

    iget-object v0, v0, Lcom/andoop/freerunning/Game;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    return-void
.end method
