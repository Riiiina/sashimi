.class public Lcom/andoop/android/common/HTTPQueue;
.super Ljava/lang/Object;
.source "HTTPQueue.java"


# static fields
.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I

.field private static volatile sInstance:Lcom/andoop/android/common/HTTPQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andoop/android/common/HTTPThread;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuedHandler:Landroid/os/Handler;

.field private mThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/andoop/android/common/HTTPQueue;->sInstance:Lcom/andoop/android/common/HTTPQueue;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mThreads:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mQueuedHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/andoop/android/common/HTTPQueue$1;

    invoke-direct {v0, p0}, Lcom/andoop/android/common/HTTPQueue$1;-><init>(Lcom/andoop/android/common/HTTPQueue;)V

    iput-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/andoop/android/common/HTTPQueue;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/andoop/android/common/HTTPQueue;->sInstance:Lcom/andoop/android/common/HTTPQueue;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/andoop/android/common/HTTPQueue;

    invoke-direct {v0}, Lcom/andoop/android/common/HTTPQueue;-><init>()V

    sput-object v0, Lcom/andoop/android/common/HTTPQueue;->sInstance:Lcom/andoop/android/common/HTTPQueue;

    .line 26
    :cond_0
    sget-object v0, Lcom/andoop/android/common/HTTPQueue;->sInstance:Lcom/andoop/android/common/HTTPQueue;

    return-object v0
.end method

.method private declared-synchronized runFirst()V
    .locals 5

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/common/HTTPThread;

    .line 61
    .local v0, "task":Lcom/andoop/android/common/HTTPThread;
    invoke-virtual {v0}, Lcom/andoop/android/common/HTTPThread;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/andoop/android/common/HTTPThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mQueuedHandler:Landroid/os/Handler;

    .line 63
    iget-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/andoop/android/common/HTTPThread;->setHandler(Landroid/os/Handler;)V

    .line 64
    invoke-virtual {v0}, Lcom/andoop/android/common/HTTPThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v0    # "task":Lcom/andoop/android/common/HTTPThread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    .restart local v0    # "task":Lcom/andoop/android/common/HTTPThread;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/andoop/android/common/HTTPThread;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andoop/android/common/HTTPThread;

    .line 67
    .local v1, "thread":Lcom/andoop/android/common/HTTPThread;
    iget-object v2, p0, Lcom/andoop/android/common/HTTPQueue;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/andoop/android/common/HTTPThread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lcom/andoop/android/common/HTTPQueue;->runFirst()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "task":Lcom/andoop/android/common/HTTPThread;
    .end local v1    # "thread":Lcom/andoop/android/common/HTTPThread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized dequeue(Lcom/andoop/android/common/HTTPThread;)V
    .locals 3
    .param p1, "task"    # Lcom/andoop/android/common/HTTPThread;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/andoop/android/common/HTTPThread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueue(Lcom/andoop/android/common/HTTPThread;)V
    .locals 1
    .param p1, "task"    # Lcom/andoop/android/common/HTTPThread;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andoop/android/common/HTTPQueue;->enqueue(Lcom/andoop/android/common/HTTPThread;I)V

    .line 31
    return-void
.end method

.method public declared-synchronized enqueue(Lcom/andoop/android/common/HTTPThread;I)V
    .locals 4
    .param p1, "task"    # Lcom/andoop/android/common/HTTPThread;
    .param p2, "priority"    # I

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/common/HTTPQueue;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/andoop/android/common/HTTPThread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .local v0, "exists":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/andoop/android/common/HTTPQueue;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/andoop/android/common/HTTPThread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/andoop/android/common/HTTPQueue;->runFirst()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 39
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/andoop/android/common/HTTPQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "exists":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized finished(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mQueuedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/andoop/android/common/HTTPQueue;->mQueuedHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/andoop/android/common/HTTPQueue;->runFirst()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
