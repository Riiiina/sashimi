.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$displayTitle:Ljava/lang/String;

.field private final synthetic val$identifier:Ljava/lang/String;

.field private final synthetic val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->this$1:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$displayTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$desc:Ljava/lang/String;

    iput-object p5, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$identifier:Ljava/lang/String;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 378
    if-nez p2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$displayTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$desc:Ljava/lang/String;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$displayTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;->val$desc:Ljava/lang/String;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->STATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaEmail(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;)V

    goto :goto_0
.end method
