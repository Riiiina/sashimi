.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$7;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$7;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getPosition()[I

    move-result-object v0

    .line 293
    .local v0, "position":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    aget v1, v0, v3

    if-lez v1, :cond_0

    .line 294
    aget v1, v0, v2

    sub-int/2addr v1, v4

    if-lez v1, :cond_0

    .line 295
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    aget v2, v0, v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setPosition(I)V

    .line 298
    :cond_0
    return-void
.end method
