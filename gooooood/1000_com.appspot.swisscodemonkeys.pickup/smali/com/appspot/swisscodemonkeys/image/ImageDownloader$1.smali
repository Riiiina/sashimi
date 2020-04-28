.class Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->downloadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcmn/Callable1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$done:Lcmn/Callable1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcmn/Callable1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$done:Lcmn/Callable1;

    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
    .locals 10
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 92
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$url:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->access$0()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 96
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0x194

    if-ne v7, v8, :cond_0

    .line 97
    new-instance v7, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$url:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$1;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-static {v6}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v7

    .line 114
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :try_start_3
    new-instance v7, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v7}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 116
    .local v4, "inp":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 118
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_4
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 123
    :goto_1
    move-object v1, v0

    .line 124
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_5
    new-instance v7, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$url:Ljava/lang/String;

    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$done:Lcmn/Callable1;

    invoke-direct {v7, p0, v1, v8, v9}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$2;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Landroid/graphics/Bitmap;Ljava/lang/String;Lcmn/Callable1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    :try_start_6
    invoke-static {v6}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "inp":Ljava/io/InputStream;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 154
    .local v5, "ioException":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$done:Lcmn/Callable1;

    if-eqz v7, :cond_1

    .line 157
    new-instance v7, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->val$done:Lcmn/Callable1;

    invoke-direct {v7, p0, v8}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Lcmn/Callable1;)V

    goto :goto_0

    .line 119
    .end local v5    # "ioException":Ljava/lang/Exception;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v4    # "inp":Ljava/io/InputStream;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 121
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 150
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "inp":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 151
    :try_start_8
    invoke-static {v6}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V

    .line 152
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 164
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "ioException":Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->onPostExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Runnable;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_0
    return-void
.end method
