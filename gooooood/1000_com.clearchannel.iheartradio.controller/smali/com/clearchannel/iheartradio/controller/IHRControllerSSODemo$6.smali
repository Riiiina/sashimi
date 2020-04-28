.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$6;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$6;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$6;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    const-string v1, "Session Result"

    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->sessionResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Close"

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    return-void
.end method
