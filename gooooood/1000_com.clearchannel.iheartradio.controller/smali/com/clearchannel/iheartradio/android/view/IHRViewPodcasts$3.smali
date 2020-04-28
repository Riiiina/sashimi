.class Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$3;
.super Ljava/lang/Object;
.source "IHRViewPodcasts.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
