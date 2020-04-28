.class Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;
.super Ljava/lang/Object;
.source "IHRViewPodcasts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "videos"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 167
    return-void
.end method
