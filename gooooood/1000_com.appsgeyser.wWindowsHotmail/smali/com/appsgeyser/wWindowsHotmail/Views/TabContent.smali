.class public Lcom/appsgeyser/wWindowsHotmail/Views/TabContent;
.super Landroid/widget/FrameLayout;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected init(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;)V
    .locals 0
    .param p1, "tabContentController"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .prologue
    .line 22
    return-void
.end method
