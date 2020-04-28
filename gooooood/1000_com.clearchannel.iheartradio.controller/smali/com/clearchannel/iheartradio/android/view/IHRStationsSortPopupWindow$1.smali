.class Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow$1;
.super Ljava/lang/Object;
.source "IHRStationsSortPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

.field private final synthetic val$popup:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow$1;->val$popup:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->sortByStations()V

    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow$1;->val$popup:Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRStationsSortPopupWindow;->dismiss()V

    .line 56
    return-void
.end method
