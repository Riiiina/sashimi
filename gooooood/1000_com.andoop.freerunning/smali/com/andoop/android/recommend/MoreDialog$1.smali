.class Lcom/andoop/android/recommend/MoreDialog$1;
.super Landroid/os/Handler;
.source "MoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/recommend/MoreDialog;->reloadGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/recommend/MoreDialog;


# direct methods
.method constructor <init>(Lcom/andoop/android/recommend/MoreDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/recommend/MoreDialog$1;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "response"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "ok"

    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/andoop/android/recommend/MoreDialog$1;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    invoke-static {v4}, Lcom/andoop/android/recommend/MoreDialog;->access$0(Lcom/andoop/android/recommend/MoreDialog;)Lcom/andoop/android/engine/BaseActivity;

    move-result-object v4

    const-string v5, "KEY_MORE_GAMES"

    invoke-virtual {v4, v5, v3}, Lcom/andoop/android/engine/BaseActivity;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v4, p0, Lcom/andoop/android/recommend/MoreDialog$1;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    invoke-static {v4}, Lcom/andoop/android/recommend/MoreDialog;->access$1(Lcom/andoop/android/recommend/MoreDialog;)V

    .line 103
    iget-object v4, p0, Lcom/andoop/android/recommend/MoreDialog$1;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    invoke-static {v4}, Lcom/andoop/android/recommend/MoreDialog;->access$2(Lcom/andoop/android/recommend/MoreDialog;)V

    .line 104
    iget-object v4, p0, Lcom/andoop/android/recommend/MoreDialog$1;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    invoke-static {v4}, Lcom/andoop/android/recommend/MoreDialog;->access$3(Lcom/andoop/android/recommend/MoreDialog;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    return-void

    .line 106
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 107
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
