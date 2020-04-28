.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->createTabContent(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;

.field private final synthetic val$menuButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;->val$menuButton:Landroid/widget/ImageButton;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;->val$menuButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;-><init>(Landroid/view/View;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    .line 365
    .local v0, "popup":Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4$1;->this$1:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$4;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->dpToPix(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->showLikePopDownMenu(II)V

    .line 366
    return-void
.end method
