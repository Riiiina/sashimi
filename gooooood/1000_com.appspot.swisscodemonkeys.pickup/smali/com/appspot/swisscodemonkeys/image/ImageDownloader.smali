.class public Lcom/appspot/swisscodemonkeys/image/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field private static final CACHE_SIZE:I = 0x64

.field private static bitmapNotFound:Landroid/graphics/Bitmap;

.field private static cache:Lcom/appspot/swisscodemonkeys/image/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appspot/swisscodemonkeys/image/Cache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static inProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->inProgress:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/Cache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/image/Cache;-><init>(I)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    .line 41
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->bitmapNotFound:Landroid/graphics/Bitmap;

    .line 43
    invoke-static {}, Lcmn/JsonRpc;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    sput-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$1()Lcom/appspot/swisscodemonkeys/image/Cache;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    return-object v0
.end method

.method static synthetic access$2()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->bitmapNotFound:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->inProgress:Ljava/util/Map;

    return-object v0
.end method

.method public static downloadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "image"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->downloadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcmn/Callable1;)V

    .line 51
    return-void
.end method

.method public static downloadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcmn/Callable1;)V
    .locals 5
    .param p0, "image"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lcmn/Callable1",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "done":Lcmn/Callable1;, "Lcmn/Callable1<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    .line 56
    sget-object v2, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v2, p1}, Lcom/appspot/swisscodemonkeys/image/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 58
    sget-object v2, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->bitmapNotFound:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_2

    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2, v0}, Lcmn/Callable1;->call(Ljava/lang/Object;)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_3
    sget-object v2, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->inProgress:Ljava/util/Map;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v3, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->inProgress:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    if-eqz v1, :cond_4

    .line 79
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v2

    goto :goto_0

    .line 76
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 82
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v3, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->inProgress:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    new-instance v2, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

    invoke-direct {v2, p1, p2}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;-><init>(Ljava/lang/String;Lcmn/Callable1;)V

    new-array v3, v4, [Ljava/lang/Void;

    .line 173
    invoke-virtual {v2, v3}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static peekImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->cache:Lcom/appspot/swisscodemonkeys/image/Cache;

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/image/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "url":Ljava/lang/String;
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
