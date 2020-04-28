.class Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;
.super Ljava/util/TimerTask;
.source "IHRAdControllerPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->displayAd(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    .line 189
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->kMessageCloseLargeAd:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method
