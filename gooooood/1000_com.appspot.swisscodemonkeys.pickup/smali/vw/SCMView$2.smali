.class Lvw/SCMView$2;
.super Ljava/lang/Object;
.source "SCMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMView;->setRefreshTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/SCMView;

.field private final synthetic val$active:Z


# direct methods
.method constructor <init>(Lvw/SCMView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    iput-boolean p2, p0, Lvw/SCMView$2;->val$active:Z

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lvw/SCMView$2;)Lvw/SCMView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 368
    iget-boolean v0, p0, Lvw/SCMView$2;->val$active:Z

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    invoke-static {v0}, Lvw/SCMView;->access$10(Lvw/SCMView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lvw/SCMView;->access$11(Lvw/SCMView;Ljava/util/Timer;)V

    .line 371
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    invoke-static {v0}, Lvw/SCMView;->access$10(Lvw/SCMView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lvw/SCMView$2$1;

    invoke-direct {v1, p0}, Lvw/SCMView$2$1;-><init>(Lvw/SCMView$2;)V

    .line 379
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    .line 371
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v0, p0, Lvw/SCMView$2;->val$active:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    invoke-static {v0}, Lvw/SCMView;->access$10(Lvw/SCMView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    invoke-static {v0}, Lvw/SCMView;->access$10(Lvw/SCMView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 385
    iget-object v0, p0, Lvw/SCMView$2;->this$0:Lvw/SCMView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvw/SCMView;->access$11(Lvw/SCMView;Ljava/util/Timer;)V

    goto :goto_0
.end method
