.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "plain/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    .line 142
    .local v0, "recipients":[Ljava/lang/String;
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07004e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07004f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
