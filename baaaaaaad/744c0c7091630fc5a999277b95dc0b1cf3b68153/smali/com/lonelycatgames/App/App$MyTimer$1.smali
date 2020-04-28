.class Lcom/lonelycatgames/App/App$MyTimer$1;
.super Ljava/util/TimerTask;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lonelycatgames/App/App$MyTimer;-><init>(Lcom/lonelycatgames/App/App;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lonelycatgames/App/App$MyTimer;

.field final synthetic val$this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App$MyTimer;Lcom/lonelycatgames/App/App;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lonelycatgames/App/App$MyTimer$1;->this$1:Lcom/lonelycatgames/App/App$MyTimer;

    iput-object p2, p0, Lcom/lonelycatgames/App/App$MyTimer$1;->val$this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyTimer$1;->this$1:Lcom/lonelycatgames/App/App$MyTimer;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$MyTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyTimer$1;->this$1:Lcom/lonelycatgames/App/App$MyTimer;

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
