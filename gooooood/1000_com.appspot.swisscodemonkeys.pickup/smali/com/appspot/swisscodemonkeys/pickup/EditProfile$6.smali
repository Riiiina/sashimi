.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;
.super Landroid/os/AsyncTask;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->loadUser()V
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
        "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    .line 222
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->loadProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$8(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->removeDialog(I)V

    .line 242
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$8(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->onPostExecute(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->showDialog(I)V

    .line 227
    return-void
.end method
