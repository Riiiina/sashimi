.class public Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/clearchannel/iheartradio/model/facebook/Facebook;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/Facebook;)V
    .locals 0
    .param p1, "fb"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->fb:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .line 51
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 72
    new-instance v0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;-><init>(Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$1;->start()V

    .line 92
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 120
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V

    .line 121
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 169
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V

    .line 170
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 200
    new-instance v0, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$2;-><init>(Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V

    .line 214
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$2;->start()V

    .line 215
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;)V

    .line 142
    return-void
.end method
