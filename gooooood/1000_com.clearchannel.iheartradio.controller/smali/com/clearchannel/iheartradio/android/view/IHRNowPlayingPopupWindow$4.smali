.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x20000

    .line 303
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "playerSubscription"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->dismiss()V

    .line 324
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "player"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 319
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getmMainView()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->getIHRControllerTabView()Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->displayPlayer(Z)V

    goto :goto_0
.end method
