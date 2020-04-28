.class Lcmn/ExCatch$2;
.super Ljava/lang/Object;
.source "ExCatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/ExCatch;->init(Landroid/content/Context;Lcmn/AppProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$sendFiles:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/ExCatch$2;->val$sendFiles:[Ljava/io/File;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 105
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    .line 106
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x2710

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 105
    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    .line 108
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x2710

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 107
    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 109
    iget-object v6, p0, Lcmn/ExCatch$2;->val$sendFiles:[Ljava/io/File;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v7, :cond_0

    .line 127
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_1
    return-void

    .line 109
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_0
    aget-object v2, v6, v8

    .line 110
    .local v2, "f":Ljava/io/File;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://swisscodemonkeys.appspot.com/trace.xml"

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v9, Lorg/apache/http/entity/FileEntity;

    const-string v10, "binary/octet-stream"

    invoke-direct {v9, v2, v10}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 112
    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 113
    .local v5, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v3, "outWriter":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 115
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ok"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "outWriter":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 125
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
