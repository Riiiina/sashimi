.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->createTabContent(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v1

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$8(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayMagicMenu()V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayStationTab()V

    goto :goto_0
.end method
