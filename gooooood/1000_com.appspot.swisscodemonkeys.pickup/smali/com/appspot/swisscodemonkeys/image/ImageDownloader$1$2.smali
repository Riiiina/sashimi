.class Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;
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

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$done:Lcmn/Callable1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Landroid/graphics/Bitmap;Ljava/lang/String;Lcmn/Callable1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$done:Lcmn/Callable1;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 127
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$1()Lcom/appspot/swisscodemonkeys/image/Cache;

    move-result-object v2

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/image/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 131
    :try_start_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 135
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    :cond_2
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$3()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v2

    .line 148
    return-void

    .line 136
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_4
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$done:Lcmn/Callable1;

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$done:Lcmn/Callable1;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v4, v5}, Lcmn/Callable1;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
