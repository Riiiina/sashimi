.class Lcom/clearchannel/iheartradio/controller/IHRController$1;
.super Landroid/os/Handler;
.source "IHRController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRController;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->progressDialog:Landroid/app/ProgressDialog;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "favorites"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
