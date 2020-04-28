.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;
.super Ljava/lang/Object;
.source "IHRControllerSSODemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->clear(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$7;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    const-string v1, "Your Session was cleared."

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->showToast(Ljava/lang/String;)V

    .line 85
    return-void
.end method
