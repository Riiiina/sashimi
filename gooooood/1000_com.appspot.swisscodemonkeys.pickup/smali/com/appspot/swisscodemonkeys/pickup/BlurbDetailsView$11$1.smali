.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;
.super Landroid/os/AsyncTask;
.source "BlurbDetailsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

.field private final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    iput-boolean p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->val$isChecked:Z

    .line 344
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$3(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->val$isChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->setAllowCommenting(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)Z

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

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    .line 361
    iget-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->val$isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_0
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    :goto_1
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 348
    return-void
.end method
