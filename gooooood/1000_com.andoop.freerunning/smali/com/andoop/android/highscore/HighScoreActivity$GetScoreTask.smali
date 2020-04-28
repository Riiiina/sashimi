.class Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;
.super Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/highscore/HighScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetScoreTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 489
    const/4 v9, 0x0

    aget-object v9, p1, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 490
    .local v5, "rank":I
    const/4 v9, 0x1

    if-ge v5, v9, :cond_0

    .line 491
    const/4 v5, 0x1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 495
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 496
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v10, v10, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "request?rank="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&limit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "error"

    .line 502
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 503
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 504
    .local v8, "status":I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 505
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "json":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->requestResult:Lorg/json/JSONObject;

    .line 507
    const-string v7, "ok"

    .line 520
    .end local v4    # "json":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "status":I
    :goto_0
    return-object v7

    .line 510
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :cond_1
    iget-object v9, p0, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "server status code "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 512
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "status":I
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 513
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 515
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 517
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method onExecuteFailed()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method onExecuteSuccess()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method
