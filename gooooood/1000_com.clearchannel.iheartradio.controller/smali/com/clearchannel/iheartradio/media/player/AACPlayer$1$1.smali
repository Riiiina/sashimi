.class Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;
.super Ljava/lang/Object;
.source "AACPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;->this$1:Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "AACPlayer"

    const-string v1, "ERROR "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;->this$1:Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->access$0(Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;)Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$8(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1$1;->this$1:Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;->access$0(Lcom/clearchannel/iheartradio/media/player/AACPlayer$1;)Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$9(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 129
    return-void
.end method
