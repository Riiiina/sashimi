.class Lvw/SCMView$2$1;
.super Ljava/util/TimerTask;
.source "SCMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvw/SCMView$2;


# direct methods
.method constructor <init>(Lvw/SCMView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMView$2$1;->this$1:Lvw/SCMView$2;

    .line 371
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lvw/SCMView$2$1;)Lvw/SCMView$2;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lvw/SCMView$2$1;->this$1:Lvw/SCMView$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lvw/SCMView$2$1;->this$1:Lvw/SCMView$2;

    invoke-static {v0}, Lvw/SCMView$2;->access$0(Lvw/SCMView$2;)Lvw/SCMView;

    move-result-object v0

    invoke-static {v0}, Lvw/SCMView;->access$5(Lvw/SCMView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lvw/SCMView$2$1$1;

    invoke-direct {v1, p0}, Lvw/SCMView$2$1$1;-><init>(Lvw/SCMView$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method
