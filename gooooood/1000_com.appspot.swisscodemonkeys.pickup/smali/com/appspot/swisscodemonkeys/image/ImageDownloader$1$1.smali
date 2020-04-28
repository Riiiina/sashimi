.class Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;->val$url:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$1()Lcom/appspot/swisscodemonkeys/image/Cache;

    move-result-object v2

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;->val$url:Ljava/lang/String;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$2()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/image/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 102
    :try_start_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 104
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v2

    .line 111
    return-void

    .line 104
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 106
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 101
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
