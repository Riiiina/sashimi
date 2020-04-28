.class Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;
.super Ljava/lang/Object;
.source "AdvertisingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->mViewPlayer:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->access$1(Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    const-string v3, "ad_url"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$1;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adClicked(ZLjava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
