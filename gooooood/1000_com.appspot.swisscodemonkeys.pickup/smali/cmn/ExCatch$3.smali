.class Lcmn/ExCatch$3;
.super Ljava/lang/Object;
.source "ExCatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/ExCatch;->logException(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$extra:Ljava/lang/String;

.field private final synthetic val$props:Lcmn/AppProperties;

.field private final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/ExCatch$3;->val$props:Lcmn/AppProperties;

    iput-object p2, p0, Lcmn/ExCatch$3;->val$throwable:Ljava/lang/Throwable;

    iput-object p3, p0, Lcmn/ExCatch$3;->val$extra:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 146
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x2710

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 147
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x2710

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    iget-object v6, p0, Lcmn/ExCatch$3;->val$props:Lcmn/AppProperties;

    iget-object v7, p0, Lcmn/ExCatch$3;->val$throwable:Ljava/lang/Throwable;

    iget-object v8, p0, Lcmn/ExCatch$3;->val$extra:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcmn/ExCatch;->access$0(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "exStr":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "http://swisscodemonkeys.appspot.com/trace.xml"

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 150
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v4, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 155
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 157
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 158
    invoke-virtual {v1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 161
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "exStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    return-void

    .line 153
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "exStr":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "exStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
