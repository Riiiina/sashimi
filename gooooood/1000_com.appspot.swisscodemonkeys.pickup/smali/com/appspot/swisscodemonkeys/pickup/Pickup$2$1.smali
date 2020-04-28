.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;
.super Landroid/os/AsyncTask;
.source "Pickup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

.field private final synthetic val$newLine:Ljava/lang/String;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->val$newLine:Ljava/lang/String;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->val$text:Landroid/widget/EditText;

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->val$newLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v2

    iget-object v2, v2, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->parentBlurb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->addMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->dismissDialog(I)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getMessageAfterBlurbWasAdded()Ljava/lang/String;

    move-result-object v1

    .line 101
    :goto_0
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    .line 105
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->val$text:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    return-void

    :cond_0
    move-object v1, p1

    .line 102
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->showDialog(I)V

    .line 115
    return-void
.end method
