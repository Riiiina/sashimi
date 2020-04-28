.class Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;
.super Landroid/webkit/WebViewClient;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const v7, 0x7f0b000d

    invoke-virtual {v6, v7}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;

    .line 164
    .local v3, "panel":Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f070000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 167
    .local v5, "width":I
    iget-object v6, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v6, v6, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 168
    .local v2, "height":I
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v7, v5, 0x6

    if-ge v6, v7, :cond_1

    .line 169
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    add-float v4, v6, v7

    .line 171
    .local v4, "relation":F
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    float-to-int v7, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    .end local v4    # "relation":F
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->setVisibility(I)V

    .line 178
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;)V

    .line 186
    .local v0, "closeBannerThread":Ljava/lang/Thread;
    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v0, v6, v7}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 173
    .end local v0    # "closeBannerThread":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int/lit8 v7, v5, 0x6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int/lit8 v7, v2, 0x6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v2, v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    iget-object v2, v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v2, v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;

    .line 197
    .local v1, "panel":Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;->setVisibility(I)V

    .line 200
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 202
    const-string v2, "&nostat=1"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1$1;->this$1:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;

    iget-object v2, v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2, v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "panel":Lcom/appsgeyser/wWindowsHotmail/Views/TransparentPanel;
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method
