.class Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;
.super Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/highscore/HighScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostScoreTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 23
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 534
    const/16 v17, 0x0

    aget-object v9, p1, v17

    check-cast v9, Ljava/lang/String;

    .line 535
    .local v9, "name":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object p1, p1, v17

    .end local p1    # "params":[Ljava/lang/Object;
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 536
    .local v14, "score":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomString:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 538
    .local v16, "t":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 540
    .local v6, "httpParameters":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 541
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "post"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 543
    .local v10, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v4, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "score"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "t"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "code"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/andoop/android/highscore/HighScoreActivity;->access$2(Lcom/andoop/android/highscore/HighScoreActivity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    const-string v13, "error"

    .line 551
    .local v13, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 553
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->requestResult:Lorg/json/JSONObject;

    .line 554
    invoke-interface {v3, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 555
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 556
    .local v15, "status":I
    const/16 v17, 0xc8

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 557
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "json":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 560
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "result"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 561
    .local v12, "result":Ljava/lang/String;
    const-string v17, "ok"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    const-string v18, "post ok"

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    .line 563
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->requestResult:Lorg/json/JSONObject;

    .line 564
    const-string v13, "ok"

    .line 583
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "result":Ljava/lang/String;
    .end local v15    # "status":I
    :goto_0
    return-object v13

    .line 567
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "result":Ljava/lang/String;
    .restart local v15    # "status":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    const-string v18, "post failed"

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 573
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "result":Ljava/lang/String;
    .end local v15    # "status":I
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 574
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "status":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "server status code "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 575
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "status":I
    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .line 576
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v17

    move-object/from16 v5, v17

    .line 578
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    move-object/from16 v5, v17

    .line 580
    .local v5, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/andoop/android/highscore/HighScoreActivity;->access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onExecuteFailed()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->setResult(I)V

    .line 594
    return-void
.end method

.method onExecuteSuccess()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->setResult(I)V

    .line 589
    return-void
.end method
