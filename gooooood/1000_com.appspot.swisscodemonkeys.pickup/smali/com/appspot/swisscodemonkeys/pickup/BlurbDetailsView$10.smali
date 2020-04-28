.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;
.super Landroid/os/AsyncTask;
.source "BlurbDetailsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->fetchDetails(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
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
        "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 289
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$3(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDetails(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 4
    .param p1, "details"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$6(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    .line 304
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 305
    if-eqz p1, :cond_3

    .line 306
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasFavorited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getFavorited()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->setFavorited(Z)V

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasRating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$7(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;F)V

    .line 311
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$8(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/widget/RatingBar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getRating()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    .line 315
    .local v0, "author":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getProfile()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->updateProfileFields(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 318
    .end local v0    # "author":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    :cond_2
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$9(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    .line 319
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->setupComment(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Message not found."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->onPostExecute(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 294
    return-void
.end method
