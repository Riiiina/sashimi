.class Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;
.super Ljava/lang/Thread;
.source "BlurbLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

.field private final synthetic val$next:Ljava/lang/String;

.field private final synthetic val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;Ljava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->val$next:Ljava/lang/String;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 62
    const/4 v3, 0x1

    .line 61
    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 63
    .local v2, "storage":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Ljava/util/List<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;>;"
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$1;

    invoke-direct {v4, p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;Ljava/util/concurrent/ArrayBlockingQueue;)V

    .line 70
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->val$next:Ljava/lang/String;

    .line 63
    invoke-interface {v3, v4, v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;->loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 73
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->access$1(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    invoke-direct {v4, p0, v5, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, "interruptException":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->access$1(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    invoke-direct {v4, p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
