.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;
.super Ljava/lang/Thread;
.source "IHRNowPlayingPopupWindow.java"


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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    .line 275
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$5(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$6(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$8(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    return-void
.end method
