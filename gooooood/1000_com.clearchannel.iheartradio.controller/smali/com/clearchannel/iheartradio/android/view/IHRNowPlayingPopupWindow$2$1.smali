.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;
.super Ljava/lang/Object;
.source "IHRNowPlayingPopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;

.field private final synthetic val$callletters:Ljava/lang/String;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$station:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->this$1:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$station:Ljava/lang/String;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$callletters:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    if-nez p2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->this$1:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;)Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$station:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$description:Ljava/lang/String;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$callletters:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->this$1:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;)Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$station:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->shareViaEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
