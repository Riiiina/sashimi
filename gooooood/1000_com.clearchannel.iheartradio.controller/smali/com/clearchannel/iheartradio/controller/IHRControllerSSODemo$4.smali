.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    const-string v1, "Forgot Password"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method
