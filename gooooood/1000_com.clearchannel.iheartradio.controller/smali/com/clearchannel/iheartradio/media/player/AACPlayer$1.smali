.class Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;
.super Ljava/lang/Object;
.source "AACPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayer;->play(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;)Lcom/clearchannel/iheartradio/media/player/AACPlayer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$5()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$7(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
