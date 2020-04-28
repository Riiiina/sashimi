.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$6;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$6;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 280
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getPosition()[I

    move-result-object v0

    .line 281
    .local v0, "position":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget v1, v0, v2

    if-lez v1, :cond_0

    .line 282
    aget v1, v0, v3

    add-int/lit16 v1, v1, 0x2710

    aget v2, v0, v2

    if-ge v1, v2, :cond_0

    .line 283
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    aget v2, v0, v3

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setPosition(I)V

    .line 286
    :cond_0
    return-void
.end method
