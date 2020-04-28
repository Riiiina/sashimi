.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;
.super Landroid/os/AsyncTask;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

.field private final synthetic val$nicknameValue:Ljava/lang/String;

.field private final synthetic val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->val$nicknameValue:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->saveProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Z

    move-result v0

    .line 153
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->val$nicknameValue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;->setNickname(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 164
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->removeDialog(I)V

    .line 166
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setResult(I)V

    .line 167
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->finish()V

    .line 168
    return-void

    .line 163
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
