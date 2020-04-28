.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;
.super Ljava/lang/Object;
.source "IHRControllerSettingsMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 154
    return-void
.end method
