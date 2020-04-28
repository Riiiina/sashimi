.class public Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "CommentActivity.java"


# static fields
.field private static final NEW_LINE_DIALOG:I = 0x2


# instance fields
.field private listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    return-void
.end method

.method public static createCommentLoader(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    .locals 2
    .param p0, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 31
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;-><init>(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 38
    .local v0, "commentsLoader":Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    return-object v0
.end method


# virtual methods
.method protected addExtraMenuItems(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 74
    add-int/lit8 v1, p1, 0x1

    const v2, 0x7f070049

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 75
    const v2, 0x1080033

    .line 74
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 79
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->setShowShare(Z)V

    .line 45
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 47
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "blurb"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 53
    .local v3, "p":[B
    :try_start_0
    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v5

    iput-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->createCommentLoader(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    move-result-object v2

    .line 63
    .local v2, "favLoader":Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    new-instance v5, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-direct {v5, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 65
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-static {p0, v5, v6, v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setupCommentClickHandlers(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V

    .line 67
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v5, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 69
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createViewWithAd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->setContentView(Landroid/view/View;)V

    .line 70
    .end local v2    # "favLoader":Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 55
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "tv":Landroid/widget/TextView;
    const-string v5, "Error loading profile."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 99
    :goto_0
    return-object v1

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown dialog "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 100
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->listView:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 99
    invoke-static {p0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createEditCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected selectMenuItem(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 83
    sub-int v0, p2, p1

    .line 84
    .local v0, "pos":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->showDialog(I)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
