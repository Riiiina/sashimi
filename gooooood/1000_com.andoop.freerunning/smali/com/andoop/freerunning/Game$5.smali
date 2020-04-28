.class Lcom/andoop/freerunning/Game$5;
.super Ljava/lang/Thread;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/Game;->onLoadScene()Lcom/andoop/android/engine/Scene;
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
    iput-object p1, p0, Lcom/andoop/freerunning/Game$5;->this$0:Lcom/andoop/freerunning/Game;

    .line 191
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/andoop/freerunning/Game$5;->this$0:Lcom/andoop/freerunning/Game;

    invoke-virtual {v0}, Lcom/andoop/freerunning/Game;->onInitResources()V

    .line 195
    return-void
.end method
