.class Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;
.super Landroid/os/Handler;
.source "AACPlayerStreamDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$1(I)V

    .line 71
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$0()I

    move-result v0

    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$2()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {v2}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$1(I)V

    .line 75
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v0, v3, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStateCease(IZ)V

    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v1, "connectionfailed"

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
