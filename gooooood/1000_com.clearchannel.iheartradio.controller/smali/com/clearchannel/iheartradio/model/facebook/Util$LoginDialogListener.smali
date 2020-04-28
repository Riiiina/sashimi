.class public final Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/facebook/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginDialogListener"
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private desc:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mFacebook"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->context:Landroid/content/Context;

    .line 457
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .line 458
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->caption:Ljava/lang/String;

    .line 459
    iput-object p4, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->desc:Ljava/lang/String;

    .line 460
    iput-object p5, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->identifier:Ljava/lang/String;

    .line 461
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->mFacebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->caption:Ljava/lang/String;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->desc:Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->identifier:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->show()V

    .line 467
    :cond_0
    return-void
.end method

.method public onError(Lcom/clearchannel/iheartradio/model/facebook/DialogError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/DialogError;

    .prologue
    .line 475
    const-string v0, "FB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook Login Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    return-void
.end method

.method public onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    .prologue
    .line 470
    const-string v0, "FB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook Login Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    return-void
.end method
