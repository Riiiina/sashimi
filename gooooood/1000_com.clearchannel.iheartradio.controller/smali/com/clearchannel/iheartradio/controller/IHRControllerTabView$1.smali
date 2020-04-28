.class Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$1;
.super Ljava/lang/Object;
.source "IHRControllerTabView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
