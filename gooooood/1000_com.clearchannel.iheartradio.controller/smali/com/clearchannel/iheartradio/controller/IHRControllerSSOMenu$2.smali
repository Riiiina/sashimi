.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;
.super Ljava/lang/Object;
.source "IHRControllerSSOMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->onNewIntent(Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    .line 55
    .local v0, "act":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "action"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 57
    const-string v2, "object"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "object"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 59
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 60
    return-void
.end method
