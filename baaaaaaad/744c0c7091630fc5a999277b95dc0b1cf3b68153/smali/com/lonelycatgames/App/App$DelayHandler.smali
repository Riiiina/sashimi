.class Lcom/lonelycatgames/App/App$DelayHandler;
.super Landroid/os/Handler;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lonelycatgames/App/App$DelayHandler;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lonelycatgames/App/App$DelayHandler;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniRunDelayed(I)V

    .line 150
    return-void
.end method
