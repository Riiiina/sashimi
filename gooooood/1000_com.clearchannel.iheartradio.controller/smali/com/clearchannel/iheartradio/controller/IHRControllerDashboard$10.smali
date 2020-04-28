.class Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;
.super Ljava/lang/Object;
.source "IHRControllerDashboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    .line 151
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    .line 153
    .local v1, "pos1":I
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 154
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 155
    .local v2, "totalitems":I
    add-int/lit8 v1, v1, -0x1

    .line 156
    if-gez v1, :cond_0

    .line 157
    sub-int v1, v2, v4

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 163
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 164
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 167
    return-void
.end method
