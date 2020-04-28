.class abstract Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;
.super Landroid/os/AsyncTask;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/highscore/HighScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final HTTP_CONNECTION_TIMEOUT:I = 0xbb8

.field static final HTTP_SO_TIMEOUT:I = 0x2710


# instance fields
.field requestResult:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/String;
.end method

.method getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 478
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 479
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 481
    return-object v0
.end method

.method abstract onExecuteFailed()V
.end method

.method abstract onExecuteSuccess()V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 453
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity;->access$0(Lcom/andoop/android/highscore/HighScoreActivity;Z)V

    .line 454
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v1, v1, Lcom/andoop/android/highscore/HighScoreActivity;->mRankView:Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->requestResult:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->json:Lorg/json/JSONObject;

    .line 458
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v1, v1, Lcom/andoop/android/highscore/HighScoreActivity;->mRankView:Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v1, v1, Lcom/andoop/android/highscore/HighScoreActivity;->mRankView:Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

    invoke-virtual {v1}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->invalidate()V

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->requestResult:Lorg/json/JSONObject;

    const-string v3, "rank"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    .line 463
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->requestResult:Lorg/json/JSONObject;

    const-string v3, "total"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/andoop/android/highscore/HighScoreActivity;->mTotalRank:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->onExecuteSuccess()V

    .line 474
    :goto_1
    return-void

    .line 464
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 465
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const-string v2, "Server busy, please try again later."

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 472
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;->onExecuteFailed()V

    goto :goto_1
.end method
