.class public Lvw/GoogleAds;
.super Ljava/lang/Object;
.source "GoogleAds.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initGoogle(Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)V
    .locals 13
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v10, 0x4

    .line 56
    new-instance v1, Lcom/google/ads/GoogleAdView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/google/ads/GoogleAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    .local v1, "adView":Lcom/google/ads/GoogleAdView;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v8, Lcom/google/ads/AdSenseSpec;

    const-string v9, "clientid"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v9, "company"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v8

    .line 66
    const-string v9, "appname"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v8

    .line 68
    const-string v9, "channel"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 70
    .local v0, "adSenseSpec":Lcom/google/ads/AdSenseSpec;
    const-string v8, "url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 71
    const-string v8, "url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 73
    :cond_0
    const-string v8, "type"

    const-string v9, "TEXT_IMAGE"

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/ads/AdSenseSpec$AdType;->valueOf(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec$AdType;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    .line 74
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    .line 75
    const-string v8, "alt"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 76
    const-string v8, "alt"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/ads/AdSenseSpec;->setAlternateAdUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 78
    :cond_1
    const-string v8, "rot"

    const-string v9, "0"

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 79
    .local v7, "rotation":I
    const-string v8, "kw"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "keyWords":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    if-lt v7, v10, :cond_4

    .line 82
    :cond_2
    if-lt v7, v12, :cond_7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_7

    .line 83
    move v5, v7

    .line 85
    .local v5, "n":I
    const-string v8, "kw"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lvw/SCMView;->selectRandomN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .end local v5    # "n":I
    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 107
    :cond_4
    const-string v8, "expand"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "expandDir":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 109
    const-string v8, "top"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Lcom/google/ads/AdSenseSpec$ExpandDirection;->TOP:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    :goto_1
    invoke-virtual {v0, v8}, Lcom/google/ads/AdSenseSpec;->setExpandDirection(Lcom/google/ads/AdSenseSpec$ExpandDirection;)Lcom/google/ads/AdSenseSpec;

    .line 113
    :cond_5
    const-string v8, "refresh"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 114
    const-string v8, "refresh"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/ads/GoogleAdView;->setAutoRefreshSeconds(I)V

    .line 120
    :cond_6
    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 121
    return-void

    .line 86
    .end local v2    # "expandDir":Ljava/lang/String;
    :cond_7
    if-ne v7, v10, :cond_9

    .line 87
    sget-object v3, Lvw/SCMView;->EXTRA_KW:Ljava/lang/String;

    .line 88
    .local v3, "extra":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, "+"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "kw"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 91
    :cond_8
    const-string v3, ""

    goto :goto_2

    .line 94
    .end local v3    # "extra":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x5

    if-lt v7, v8, :cond_3

    const/4 v8, 0x7

    if-gt v7, v8, :cond_3

    .line 95
    sub-int v5, v7, v10

    .line 96
    .restart local v5    # "n":I
    sget-object v3, Lvw/SCMView;->EXTRA_KW:Ljava/lang/String;

    .line 97
    .restart local v3    # "extra":Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, "+"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "kw"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lvw/SCMView;->selectRandomN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 100
    :cond_a
    const-string v3, ""

    goto :goto_3

    .line 110
    .end local v3    # "extra":Ljava/lang/String;
    .end local v5    # "n":I
    .restart local v2    # "expandDir":Ljava/lang/String;
    :cond_b
    sget-object v8, Lcom/google/ads/AdSenseSpec$ExpandDirection;->BOTTOM:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    goto/16 :goto_1
.end method

.method static pauseGoogle(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    .line 46
    .local v0, "adView":Lcom/google/ads/GoogleAdView;
    invoke-static {v0}, Lvw/GoogleAds;->pauseWebView(Landroid/view/ViewGroup;)V

    .line 47
    return-void
.end method

.method public static pauseWebView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 31
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 25
    check-cast v0, Landroid/webkit/WebView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 26
    const-string v2, "JS"

    const-string v3, "Found webview, pausing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lvw/GoogleAds;->pauseWebView(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method static resumeGoogle(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    .line 51
    .local v0, "adView":Lcom/google/ads/GoogleAdView;
    invoke-static {v0}, Lvw/GoogleAds;->resumeWebView(Landroid/view/ViewGroup;)V

    .line 52
    return-void
.end method

.method public static resumeWebView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 42
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 36
    check-cast v0, Landroid/webkit/WebView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 37
    const-string v2, "JS"

    const-string v3, "Found webview, resuming"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lvw/GoogleAds;->resumeWebView(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method
