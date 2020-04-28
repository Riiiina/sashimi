.class Lcom/lonelycatgames/App/App$MyTimer;
.super Ljava/util/Timer;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;I)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p2}, Lcom/lonelycatgames/App/App$MyTimer;-><init>(Lcom/lonelycatgames/App/App;II)V

    .line 259
    return-void
.end method

.method constructor <init>(Lcom/lonelycatgames/App/App;II)V
    .locals 6

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 253
    new-instance v1, Lcom/lonelycatgames/App/App$MyTimer$1;

    invoke-direct {v1, p0, p1}, Lcom/lonelycatgames/App/App$MyTimer$1;-><init>(Lcom/lonelycatgames/App/App$MyTimer;Lcom/lonelycatgames/App/App;)V

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lonelycatgames/App/App$MyTimer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    iget-boolean v0, v0, Lcom/lonelycatgames/App/App$MyView;->dirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    iget-boolean v0, v0, Lcom/lonelycatgames/App/App$MyView;->has_focus:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget v0, v0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, v1, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniTimer(I)V

    .line 250
    :cond_1
    return-void
.end method
