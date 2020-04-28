.class Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;
.super Ljava/lang/Object;
.source "PublishDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;

.field private final synthetic val$data:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;->this$1:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;->val$data:Ljava/util/Hashtable;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;->this$1:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;)Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$7(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v2

    const-string v3, "me/feed"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;->val$data:Ljava/util/Hashtable;

    const-string v5, "POST"

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->simpleRequest(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "response":Ljava/lang/String;
    const-string v2, "FB"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "FB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
