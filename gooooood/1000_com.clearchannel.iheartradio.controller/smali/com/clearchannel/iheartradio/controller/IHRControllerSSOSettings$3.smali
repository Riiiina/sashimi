.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;
.super Ljava/lang/Object;
.source "IHRControllerSSOSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$progress:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$handler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;)Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 54
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$progress:Landroid/app/ProgressDialog;

    const-string v2, "Logging Out ..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;->val$handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$3;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v0, "tDisconnection":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method
