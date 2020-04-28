.class Lcom/ophone/MiniPlayer/MyPlayer$1;
.super Ljava/lang/Object;
.source "MyPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayer;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayer$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    invoke-static {p2}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->access$0(Lcom/ophone/MiniPlayer/MyPlayer;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 124
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$1(Lcom/ophone/MiniPlayer/MyPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    invoke-static {v1}, Lcom/ophone/MiniPlayer/MyPlayer;->access$1(Lcom/ophone/MiniPlayer/MyPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->access$0(Lcom/ophone/MiniPlayer/MyPlayer;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 128
    return-void
.end method
