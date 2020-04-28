.class Lcom/appsgeyser/wWindowsHotmail/MessageViewer$1;
.super Landroid/webkit/WebViewClient;
.source "MessageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/MessageViewer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MessageViewer;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/MessageViewer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    return-void
.end method
