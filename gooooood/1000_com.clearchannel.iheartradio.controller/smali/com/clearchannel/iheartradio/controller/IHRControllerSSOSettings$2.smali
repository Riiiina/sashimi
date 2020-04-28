.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;
.super Landroid/os/Handler;
.source "IHRControllerSSOSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;->val$progress:Landroid/app/ProgressDialog;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 47
    return-void
.end method
