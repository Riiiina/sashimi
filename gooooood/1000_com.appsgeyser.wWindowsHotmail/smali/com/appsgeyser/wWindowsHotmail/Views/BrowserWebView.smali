.class public Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# instance fields
.field _browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 13
    iput-object p0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;->_browser:Lcom/appsgeyser/wWindowsHotmail/Views/BrowserWebView;

    .line 14
    return-void
.end method
