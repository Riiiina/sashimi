.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;
.super Ljava/lang/Object;
.source "IHRControllerSettingsIHRAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsIHRAccount;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 58
    return-void
.end method
