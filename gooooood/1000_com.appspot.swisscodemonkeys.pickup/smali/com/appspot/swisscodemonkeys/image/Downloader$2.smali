.class Lcom/appspot/swisscodemonkeys/image/Downloader$2;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/Downloader;->dataLoaded(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/Downloader;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 83
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$data:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v2

    .line 101
    :goto_1
    return-void

    .line 87
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/image/Downloader$Request;

    .line 88
    .local v1, "request":Lcom/appspot/swisscodemonkeys/image/Downloader$Request;, "Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;"
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$data:Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/appspot/swisscodemonkeys/image/Downloader$Request;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    .end local v1    # "request":Lcom/appspot/swisscodemonkeys/image/Downloader$Request;, "Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/image/Downloader;->access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v2

    goto :goto_1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 95
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/image/Downloader$Request;

    .line 96
    .restart local v1    # "request":Lcom/appspot/swisscodemonkeys/image/Downloader$Request;, "Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;"
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$2;->val$url:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/appspot/swisscodemonkeys/image/Downloader$Request;->onFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2
.end method
