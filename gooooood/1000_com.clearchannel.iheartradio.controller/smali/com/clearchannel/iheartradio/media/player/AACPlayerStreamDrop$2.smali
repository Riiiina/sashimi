.class Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;
.super Ljava/lang/Object;
.source "AACPlayerStreamDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->play(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$8()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$9(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$11(Ljava/lang/Integer;)V

    .line 141
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AACPlayer"

    const-string v2, "Connection exception. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$2;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$10(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
