.class Lcmn/AboutActivity$1;
.super Landroid/webkit/WebView;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/AboutActivity;


# direct methods
.method constructor <init>(Lcmn/AboutActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/AboutActivity$1;->this$0:Lcmn/AboutActivity;

    .line 46
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 50
    const/16 v2, 0xf

    .line 51
    .local v2, "paddingX":I
    const/16 v3, 0x23

    .line 52
    .local v3, "paddingY":I
    invoke-virtual {p0}, Lcmn/AboutActivity$1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 54
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 55
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v5, v6}, Lcmn/AboutActivity$1;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method
