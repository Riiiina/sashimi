.class Lcom/adobe/reader/AdobeReader$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->activateFind()V
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

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$6;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$6;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$6;->this$0:Lcom/adobe/reader/AdobeReader;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader$6;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v1}, Lcom/adobe/reader/AdobeReader;->access$600(Lcom/adobe/reader/AdobeReader;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$6;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
