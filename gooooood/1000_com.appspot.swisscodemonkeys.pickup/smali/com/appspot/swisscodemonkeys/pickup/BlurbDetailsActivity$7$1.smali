.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;
.super Landroid/os/AsyncTask;
.source "BlurbDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->postComment(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;

.field private final synthetic val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$newLine:Ljava/lang/String;

.field private final synthetic val$parentBlurb:Ljava/lang/String;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Ljava/lang/String;Ljava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$newLine:Ljava/lang/String;

    iput-object p5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$parentBlurb:Ljava/lang/String;

    iput-object p6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iput-object p7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$text:Landroid/widget/EditText;

    .line 360
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$newLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$parentBlurb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->addMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 374
    if-eqz p1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_0
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 380
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$text:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_1
    return-void

    :cond_0
    move-object v1, p1

    .line 378
    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    .line 383
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->val$context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 364
    return-void
.end method
