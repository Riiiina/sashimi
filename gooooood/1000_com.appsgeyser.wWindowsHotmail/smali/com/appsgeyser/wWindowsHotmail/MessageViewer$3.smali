.class Lcom/appsgeyser/wWindowsHotmail/MessageViewer$3;
.super Ljava/lang/Object;
.source "MessageViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/MessageViewer;->showMessage(Ljava/lang/String;)V
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
    .line 114
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/MessageViewer$3;->this$0:Lcom/appsgeyser/wWindowsHotmail/MessageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    return-void
.end method
