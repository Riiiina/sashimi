.class public Lvw/Admob;
.super Ljava/lang/Object;
.source "Admob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initAdmob(Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 17
    const-string v2, "pub"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admob/android/ads/AdManager;->setPublisherId(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/admob/android/ads/AdView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    .local v0, "adView":Lcom/admob/android/ads/AdView;
    const-string v2, "bg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const-string v2, "bg"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 22
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void
.end method
