.class Lcom/adobe/reader/AdobeReader$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->setUIControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/AdobeReader;


# direct methods
.method constructor <init>(Lcom/adobe/reader/AdobeReader;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$4;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x42

    if-ne v0, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$000()Lcom/adobe/reader/AlertDlg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$100()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$100()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/reader/AdobeReader;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/reader/AdobeReader;->access$302(Z)Z

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->access$000()Lcom/adobe/reader/AlertDlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->dismiss()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->setIsPasswdDialogNotShown(Z)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader$4;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v1}, Lcom/adobe/reader/AdobeReader;->access$400(Lcom/adobe/reader/AdobeReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->openDocument(Ljava/lang/String;)V

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$4;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v0}, Lcom/adobe/reader/AdobeReader;->access$500(Lcom/adobe/reader/AdobeReader;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
