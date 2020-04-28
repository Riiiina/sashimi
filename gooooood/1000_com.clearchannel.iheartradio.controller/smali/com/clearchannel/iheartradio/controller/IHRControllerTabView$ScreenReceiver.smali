.class public Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IHRControllerTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateVolume()V

    .line 94
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$ScreenReceiver;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 99
    :cond_0
    return-void
.end method
