.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;
.super Landroid/os/Handler;
.source "IHRNowPlayingPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    return-void
.end method
