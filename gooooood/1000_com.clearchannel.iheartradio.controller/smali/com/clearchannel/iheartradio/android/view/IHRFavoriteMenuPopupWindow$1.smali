.class Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;
.super Ljava/lang/Object;
.source "IHRFavoriteMenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

.field private final synthetic val$popup:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;->val$popup:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

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
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showSongs()V

    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;->val$popup:Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->dismiss()V

    .line 56
    return-void
.end method
