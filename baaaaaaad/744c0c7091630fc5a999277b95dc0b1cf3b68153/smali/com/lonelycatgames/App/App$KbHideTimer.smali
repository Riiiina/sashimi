.class Lcom/lonelycatgames/App/App$KbHideTimer;
.super Ljava/util/Timer;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KbHideTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;)V
    .locals 3

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lonelycatgames/App/App$KbHideTimer;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 384
    new-instance v0, Lcom/lonelycatgames/App/App$KbHideTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/lonelycatgames/App/App$KbHideTimer$1;-><init>(Lcom/lonelycatgames/App/App$KbHideTimer;Lcom/lonelycatgames/App/App;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/lonelycatgames/App/App$KbHideTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 393
    return-void
.end method
