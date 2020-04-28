.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;
.super Landroid/os/AsyncTask;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

.field private final synthetic val$uriStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->val$uriStr:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->val$uriStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$9(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    .line 329
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->removeDialog(I)V

    .line 330
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    invoke-interface {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;->setPictureChanged(Z)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$10(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    .line 334
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const-string v1, "Saved image."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->showDialog(I)V

    .line 319
    return-void
.end method
