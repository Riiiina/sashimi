.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$1;
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


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 38
    return-void
.end method
