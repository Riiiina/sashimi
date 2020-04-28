.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;
.super Landroid/os/AsyncTask;
.source "BlurbDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput-object p5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 300
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 315
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    .line 321
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->val$context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 305
    return-void
.end method
