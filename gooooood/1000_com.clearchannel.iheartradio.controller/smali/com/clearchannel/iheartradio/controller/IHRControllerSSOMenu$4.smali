.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$4;
.super Ljava/lang/Object;
.source "IHRControllerSSOMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 121
    return-void
.end method
