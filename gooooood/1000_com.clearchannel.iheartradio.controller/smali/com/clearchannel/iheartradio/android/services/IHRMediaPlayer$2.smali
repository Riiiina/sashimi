.class Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$2;
.super Ljava/lang/Object;
.source "IHRMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;->access$0(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-result-object v0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateState(I)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method
