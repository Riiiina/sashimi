.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createStationListContent()Landroid/widget/TabHost$TabSpec;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 393
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 395
    .local v1, "context":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 396
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 398
    .local v3, "rootView":Landroid/widget/LinearLayout;
    const v5, 0x7f0900a9

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 399
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    new-instance v6, Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-direct {v6, v7, v8, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Landroid/view/View;)V

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$7(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Lcom/clearchannel/iheartradio/android/view/IHRListView;)V

    .line 411
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$8(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v5

    invoke-virtual {v3, v5, v9, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 414
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;

    invoke-direct {v6, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "category"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "category":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v5, v0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->loadCategory(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    .line 429
    return-object v3
.end method
