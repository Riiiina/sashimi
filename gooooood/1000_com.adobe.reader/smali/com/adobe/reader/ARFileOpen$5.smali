.class Lcom/adobe/reader/ARFileOpen$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/ARFileOpen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/ARFileOpen;


# direct methods
.method constructor <init>(Lcom/adobe/reader/ARFileOpen;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v0}, Lcom/adobe/reader/ARFileOpen;->access$700(Lcom/adobe/reader/ARFileOpen;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$700(Lcom/adobe/reader/ARFileOpen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$300(Lcom/adobe/reader/ARFileOpen;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$800(Lcom/adobe/reader/ARFileOpen;)Lcom/adobe/reader/ARFileEntryAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v2}, Lcom/adobe/reader/ARFileOpen;->access$700(Lcom/adobe/reader/ARFileOpen;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/reader/ARFileEntryAdapter;->addAll(Ljava/util/List;)V

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$800(Lcom/adobe/reader/ARFileOpen;)Lcom/adobe/reader/ARFileEntryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/reader/ARFileEntryAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$5;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$700(Lcom/adobe/reader/ARFileOpen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
