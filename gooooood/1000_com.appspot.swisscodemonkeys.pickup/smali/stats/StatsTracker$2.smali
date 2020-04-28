.class Lstats/StatsTracker$2;
.super Ljava/lang/Object;
.source "StatsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstats/StatsTracker;->track(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstats/StatsTracker;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$t:J

.field private final synthetic val$value:I


# direct methods
.method constructor <init>(Lstats/StatsTracker;JLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    iput-wide p2, p0, Lstats/StatsTracker$2;->val$t:J

    iput-object p4, p0, Lstats/StatsTracker$2;->val$event:Ljava/lang/String;

    iput p5, p0, Lstats/StatsTracker$2;->val$value:I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 123
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {v1}, Lstats/StatsTracker;->access$0(Lstats/StatsTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 124
    new-instance v0, Lstats/StatsTracker$Event;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lstats/StatsTracker$Event;-><init>(Lstats/StatsTracker$Event;)V

    .line 125
    .local v0, "ev":Lstats/StatsTracker$Event;
    iget-wide v1, p0, Lstats/StatsTracker$2;->val$t:J

    invoke-static {v0, v1, v2}, Lstats/StatsTracker$Event;->access$1(Lstats/StatsTracker$Event;J)V

    .line 126
    iget-object v1, p0, Lstats/StatsTracker$2;->val$event:Ljava/lang/String;

    invoke-static {v0, v1}, Lstats/StatsTracker$Event;->access$2(Lstats/StatsTracker$Event;Ljava/lang/String;)V

    .line 127
    iget v1, p0, Lstats/StatsTracker$2;->val$value:I

    invoke-static {v0, v1}, Lstats/StatsTracker$Event;->access$3(Lstats/StatsTracker$Event;I)V

    .line 128
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {v1}, Lstats/StatsTracker;->access$0(Lstats/StatsTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0    # "ev":Lstats/StatsTracker$Event;
    :cond_0
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lstats/StatsTracker;->changedSinceLastStore:Z

    .line 133
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lstats/StatsTracker;->access$1(Lstats/StatsTracker;J)V

    .line 134
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {v1}, Lstats/StatsTracker;->access$0(Lstats/StatsTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {v1}, Lstats/StatsTracker;->access$2(Lstats/StatsTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    iget-object v3, p0, Lstats/StatsTracker$2;->this$0:Lstats/StatsTracker;

    invoke-static {v3}, Lstats/StatsTracker;->access$3(Lstats/StatsTracker;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    :cond_1
    return-void
.end method
