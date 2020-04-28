.class final Lcom/adobe/reader/AdobeReader$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$000()Lcom/adobe/reader/AlertDlg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$000()Lcom/adobe/reader/AlertDlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
