.class Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;
.super Ljava/lang/Thread;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->fb:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    new-instance v3, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    .line 79
    const-string v4, "auth.expireSession failed"

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-interface {v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;->onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V

    .line 90
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    .restart local v1    # "response":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v1}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 83
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 86
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 88
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
