.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createFavoriteContent()Landroid/widget/TabHost$TabSpec;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 332
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 333
    .local v0, "context":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 356
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 358
    .local v3, "rootView":Landroid/widget/LinearLayout;
    const v5, 0x7f0900a9

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 359
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    new-instance v6, Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-direct {v6, v7, v8, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Landroid/view/View;)V

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$5(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Lcom/clearchannel/iheartradio/android/view/IHRListView;)V

    .line 361
    const v5, 0x7f090036

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 362
    .local v2, "menuButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;

    invoke-direct {v5, p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$6(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesStations()V

    .line 375
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 377
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v5

    invoke-virtual {v3, v5, v9, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 379
    return-object v3

    .line 373
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesSongs()V

    goto :goto_0
.end method
