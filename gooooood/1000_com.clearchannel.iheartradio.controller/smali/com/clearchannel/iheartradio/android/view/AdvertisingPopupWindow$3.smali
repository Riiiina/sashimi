.class Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;
.super Ljava/lang/Object;
.source "AdvertisingPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0, v2, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(ZLandroid/widget/PopupWindow;Z)V

    .line 94
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$3;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->anchor:Landroid/view/View;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    return-void
.end method
