.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_PLAYER:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 199
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->TAB_FAVORITES:Ljava/lang/String;

    if-ne p1, v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesStations()V

    .line 203
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Z)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->setTabColor(Landroid/widget/TabHost;)V

    .line 209
    return-void
.end method
