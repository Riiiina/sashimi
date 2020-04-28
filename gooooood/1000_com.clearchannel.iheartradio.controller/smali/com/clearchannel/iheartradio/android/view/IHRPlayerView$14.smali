.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setLyricsButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;->val$url:Ljava/lang/String;

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 999
    .local v0, "browse":Landroid/content/Intent;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$20(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1000
    return-void
.end method
