.class public abstract Lcom/appspot/swisscodemonkeys/image/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/image/Downloader$Request;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private inProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/image/Downloader$Request",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private thread:Landroid/os/HandlerThread;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/Downloader;, "Lcom/appspot/swisscodemonkeys/image/Downloader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->inProgress:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->uiHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/image/Downloader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->inProgress:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected dataLoaded(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/Downloader;, "Lcom/appspot/swisscodemonkeys/image/Downloader<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appspot/swisscodemonkeys/image/Downloader$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/appspot/swisscodemonkeys/image/Downloader$2;-><init>(Lcom/appspot/swisscodemonkeys/image/Downloader;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method protected abstract download(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public downloadObject(Ljava/lang/String;Lcom/appspot/swisscodemonkeys/image/Downloader$Request;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appspot/swisscodemonkeys/image/Downloader$Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/Downloader;, "Lcom/appspot/swisscodemonkeys/image/Downloader<TT;>;"
    .local p2, "request":Lcom/appspot/swisscodemonkeys/image/Downloader$Request;, "Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;"
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->inProgress:Ljava/util/Map;

    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->inProgress:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v2

    .line 68
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->inProgress:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->thread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    .line 51
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CachedDownloader"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->thread:Landroid/os/HandlerThread;

    .line 52
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 56
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/appspot/swisscodemonkeys/image/Downloader$1;

    invoke-direct {v2, p0, p1}, Lcom/appspot/swisscodemonkeys/image/Downloader$1;-><init>(Lcom/appspot/swisscodemonkeys/image/Downloader;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 37
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
