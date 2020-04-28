.class public Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "AboutAuthor.java"


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "profile"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field protected static final UPDATED_PROFILE:I = 0x1


# instance fields
.field private authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

.field private userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    .line 22
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 15
    return-void
.end method

.method private showOwner(Z)Landroid/view/View;
    .locals 3
    .param p1, "showFavorites"    # Z

    .prologue
    .line 86
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;)V

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->setEditProfileListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 97
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "blurb"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 28
    const-string v1, "title"

    const v2, 0x7f070033

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v4

    .line 28
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void

    .line 29
    :cond_0
    const-string v5, "anonymous user"

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->setProgressBarIndeterminateVisibility(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 41
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 43
    .local v7, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 44
    .local v6, "referringBlurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    if-eqz v3, :cond_3

    .line 45
    const-string v8, "title"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    const-string v8, "blurb"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    const-string v8, "blurb"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 52
    .local v5, "p":[B
    :try_start_0
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;
    move-object v7, v1

    .line 55
    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v6

    .line 56
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-virtual {v1, v8, v6}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;
    .end local v5    # "p":[B
    :goto_0
    invoke-static {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createViewWithAd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->setContentView(Landroid/view/View;)V

    .line 83
    return-void

    .line 57
    .restart local v5    # "p":[B
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 58
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v7, Landroid/widget/TextView;

    .end local v7    # "view":Landroid/view/View;
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .restart local v7    # "view":Landroid/view/View;
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const-string v9, "Error loading profile."

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v5    # "p":[B
    :cond_1
    const-string v8, "profile"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 62
    const-string v8, "profile"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 64
    .restart local v5    # "p":[B
    :try_start_1
    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 65
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    move-object v7, v1

    .line 68
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v1, v8, v9}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    .end local v1    # "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 70
    .restart local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 71
    new-instance v7, Landroid/widget/TextView;

    .end local v7    # "view":Landroid/view/View;
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v7    # "view":Landroid/view/View;
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const-string v9, "Error loading profile."

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v5    # "p":[B
    :cond_2
    const-string v8, "favorites"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 76
    .local v4, "favorites":Z
    invoke-direct {p0, v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->showOwner(Z)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 79
    .end local v4    # "favorites":Z
    :cond_3
    invoke-direct {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->showOwner(Z)Landroid/view/View;

    move-result-object v7

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "profile"

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 114
    :cond_0
    return-void
.end method
