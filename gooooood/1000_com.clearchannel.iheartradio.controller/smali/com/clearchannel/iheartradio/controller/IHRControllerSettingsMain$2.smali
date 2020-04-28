.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DataHelper;->removeAutoplayStation()V

    .line 114
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->showToast(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_0
.end method
