.class Lcom/lonelycatgames/App/App$Alarm$1;
.super Ljava/util/TimerTask;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lonelycatgames/App/App$Alarm;-><init>(Lcom/lonelycatgames/App/App;IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lonelycatgames/App/App$Alarm;

.field final synthetic val$this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App$Alarm;Lcom/lonelycatgames/App/App;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/lonelycatgames/App/App$Alarm$1;->this$1:Lcom/lonelycatgames/App/App$Alarm;

    iput-object p2, p0, Lcom/lonelycatgames/App/App$Alarm$1;->val$this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lonelycatgames/App/App$Alarm$1;->this$1:Lcom/lonelycatgames/App/App$Alarm;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$Alarm;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$Alarm$1;->this$1:Lcom/lonelycatgames/App/App$Alarm;

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
