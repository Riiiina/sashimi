.class Lcom/adobe/reader/AdobeReader$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$7;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/16 v0, 0x42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$7;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v0, v2}, Lcom/adobe/reader/AdobeReader;->access$700(Lcom/adobe/reader/AdobeReader;Z)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$7;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v0}, Lcom/adobe/reader/AdobeReader;->access$600(Lcom/adobe/reader/AdobeReader;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$7;->this$0:Lcom/adobe/reader/AdobeReader;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader$7;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-static {v1}, Lcom/adobe/reader/AdobeReader;->access$600(Lcom/adobe/reader/AdobeReader;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
