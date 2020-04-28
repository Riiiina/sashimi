.class Lcom/andoop/freerunning/Game$6;
.super Ljava/lang/Thread;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/Game;->pressToExit()V
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
    iput-object p1, p0, Lcom/andoop/freerunning/Game$6;->this$0:Lcom/andoop/freerunning/Game;

    .line 230
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 236
    const-wide/16 v1, 0x9c4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/andoop/freerunning/Game$6;->this$0:Lcom/andoop/freerunning/Game;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/andoop/freerunning/Game;->access$1(Lcom/andoop/freerunning/Game;Z)V

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
