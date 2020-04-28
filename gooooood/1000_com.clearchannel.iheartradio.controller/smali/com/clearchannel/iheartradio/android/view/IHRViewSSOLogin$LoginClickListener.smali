.class public Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;
.super Ljava/lang/Object;
.source "IHRViewSSOLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginClickListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inParameters:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "inParameters"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->context:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->inParameters:Landroid/content/Intent;

    .line 25
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/high16 v4, 0x400000

    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 28
    if-nez p2, :cond_1

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->context:Landroid/content/Context;

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    .line 31
    .local v0, "act":Lcom/clearchannel/iheartradio/controller/iheartradio;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->inParameters:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 42
    .end local v0    # "act":Lcom/clearchannel/iheartradio/controller/iheartradio;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->context:Landroid/content/Context;

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    .line 38
    .restart local v0    # "act":Lcom/clearchannel/iheartradio/controller/iheartradio;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 39
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;->inParameters:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0
.end method
