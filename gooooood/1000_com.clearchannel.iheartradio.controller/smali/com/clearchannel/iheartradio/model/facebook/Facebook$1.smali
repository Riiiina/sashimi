.class Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/facebook/Facebook;->authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

.field private final synthetic val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/Facebook;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "Facebook-authorize"

    const-string v1, "Login cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onCancel()V

    .line 226
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 192
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    const-string v2, "expires_in"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "Facebook-authorize"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login Success! access_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expires="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->getAccessExpires()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->save()V

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->loadMe()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    invoke-interface {v1, p1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 211
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v2, "failed to load user"

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    .line 209
    const-string v2, "failed to receive access_token"

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V

    goto :goto_0
.end method

.method public onError(Lcom/clearchannel/iheartradio/model/facebook/DialogError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/DialogError;

    .prologue
    .line 214
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onError(Lcom/clearchannel/iheartradio/model/facebook/DialogError;)V

    .line 216
    return-void
.end method

.method public onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    .prologue
    .line 219
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Facebook$1;->val$listener:Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;->onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V

    .line 221
    return-void
.end method
