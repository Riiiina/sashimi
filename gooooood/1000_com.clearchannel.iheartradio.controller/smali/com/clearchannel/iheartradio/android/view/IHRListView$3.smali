.class Lcom/clearchannel/iheartradio/android/view/IHRListView$3;
.super Ljava/lang/Object;
.source "IHRListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1550
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;-><init>(Landroid/view/View;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    .line 1551
    .local v0, "popup":Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dpToPix(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;->showLikePopDownMenu(II)V

    .line 1552
    return-void
.end method
