.class public abstract Lcom/appspot/swisscodemonkeys/image/CachedDownloader;
.super Lcom/appspot/swisscodemonkeys/image/Downloader;
.source "CachedDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appspot/swisscodemonkeys/image/Downloader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/appspot/swisscodemonkeys/image/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appspot/swisscodemonkeys/image/Cache",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/CachedDownloader;, "Lcom/appspot/swisscodemonkeys/image/CachedDownloader<TT;>;"
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/image/Downloader;-><init>()V

    .line 15
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-direct {v0, p1}, Lcom/appspot/swisscodemonkeys/image/Cache;-><init>(I)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/CachedDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    .line 16
    return-void
.end method


# virtual methods
.method protected dataLoaded(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/CachedDownloader;, "Lcom/appspot/swisscodemonkeys/image/CachedDownloader<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/CachedDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/Downloader;->dataLoaded(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public downloadObject(Ljava/lang/String;Lcom/appspot/swisscodemonkeys/image/Downloader$Request;)V
    .locals 2
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
    .line 19
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/CachedDownloader;, "Lcom/appspot/swisscodemonkeys/image/CachedDownloader<TT;>;"
    .local p2, "request":Lcom/appspot/swisscodemonkeys/image/Downloader$Request;, "Lcom/appspot/swisscodemonkeys/image/Downloader$Request<TT;>;"
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/CachedDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/image/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "b":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p2, p1, v0}, Lcom/appspot/swisscodemonkeys/image/Downloader$Request;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/Downloader;->downloadObject(Ljava/lang/String;Lcom/appspot/swisscodemonkeys/image/Downloader$Request;)V

    goto :goto_0
.end method

.method public purgeObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/CachedDownloader;, "Lcom/appspot/swisscodemonkeys/image/CachedDownloader<TT;>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/CachedDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/image/Cache;->purge(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/appspot/swisscodemonkeys/image/CachedDownloader;, "Lcom/appspot/swisscodemonkeys/image/CachedDownloader<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/CachedDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
