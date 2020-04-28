.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;
.super Ljava/lang/Object;
.source "IHRControllerSSOSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;->val$handler:Landroid/os/Handler;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;)Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->clear(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method
