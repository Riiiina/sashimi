.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$5;
.super Ljava/lang/Object;
.source "IHRNowPlayingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$5;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->togglePlaying()V

    .line 331
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$5;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->dismiss()V

    .line 332
    return-void
.end method
