.class Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;
.super Ljava/lang/Object;
.source "IHRControllerDashboard.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/high16 v4, 0x20000

    .line 197
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 199
    .local v0, "content":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->isStream()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-class v3, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "callLetter"

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0
.end method
