.class Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;
.super Ljava/lang/Object;
.source "IHRAdControllerPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->displayAd(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->mAdClickURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adClicked(ZLjava/lang/String;)V

    .line 170
    return-void
.end method
