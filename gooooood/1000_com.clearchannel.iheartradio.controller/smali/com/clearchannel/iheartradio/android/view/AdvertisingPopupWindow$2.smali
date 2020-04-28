.class Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$2;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dismiss()V

    .line 88
    return-void
.end method
