.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;
.super Ljava/lang/Object;
.source "IHRControllerSettingsMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

.field private final synthetic val$isLoggedIn:Z


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

    iput-boolean p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->val$isLoggedIn:Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->val$isLoggedIn:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;)Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->clear(Landroid/content/Context;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;)Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;)Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->login(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    goto :goto_0
.end method
