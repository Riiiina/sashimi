.class public Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;
.super Landroid/widget/LinearLayout;
.source "BlurbDetailsView.java"


# static fields
.field private static final stars:[Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

.field delete:Landroid/widget/Button;

.field private favorite:Landroid/widget/ImageButton;

.field private favorited:Z

.field flag:Landroid/widget/ImageButton;

.field private final handler:Landroid/os/Handler;

.field private initialRating:F

.field private ratingBar:Landroid/widget/RatingBar;

.field private service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

.field private voteDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Poor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Nothing special"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Worth reading"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 55
    const-string v2, "Pretty cool"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Awesome!"

    aput-object v2, v0, v1

    .line 54
    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->stars:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->handler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialRating:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 79
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->inflate(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->handler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialRating:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .line 74
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->inflate(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorited:Z

    return v0
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->updateRatingText(Landroid/widget/RatingBar;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialRating:F

    return v0
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;I)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->saveRating(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Z)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->saveFavorites(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialRating:F

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->setupMoreOptions(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V

    return-void
.end method

.method private deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 2
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;

    invoke-direct {v1, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    return-void
.end method

.method private fetchDetails(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 2
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 289
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;

    invoke-direct {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 84
    return-void
.end method

.method private saveFavorites(Z)V
    .locals 2
    .param p1, "favorited"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 378
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    invoke-direct {v1, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method

.method private saveRating(I)V
    .locals 3
    .param p1, "rating"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->sendRating(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;I)V

    .line 417
    return-void
.end method

.method public static sendRating(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;I)V
    .locals 2
    .param p0, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "rating"    # I

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 399
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;-><init>(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;ILandroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 413
    return-void
.end method

.method private setupMoreOptions(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 3
    .param p1, "details"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->flag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->delete:Landroid/widget/Button;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$7;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$7;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->flag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->flag:Landroid/widget/ImageButton;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateRatingText(Landroid/widget/RatingBar;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "r"    # Landroid/widget/RatingBar;
    .param p2, "text"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    .line 473
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    float-to-int v1, v1

    sub-int v0, v1, v2

    .line 474
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 477
    :cond_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->stars:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 478
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->stars:[Ljava/lang/String;

    array-length v1, v1

    sub-int v0, v1, v2

    .line 480
    :cond_1
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->stars:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method


# virtual methods
.method protected createSendIntent(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8
    .param p1, "subjectResId"    # I
    .param p2, "footerResId"    # I
    .param p3, "contents"    # Ljava/lang/String;
    .param p4, "dialogTitleResId"    # I
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "appUrl"    # Ljava/lang/String;
    .param p7, "extraLineId"    # I

    .prologue
    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "in":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 218
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "subject"

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "subject":Ljava/lang/String;
    const-string v5, "footer"

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "footer":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 222
    :cond_0
    const-string v1, ""

    .line 226
    :goto_0
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    if-eqz v5, :cond_1

    .line 229
    const-string v5, "REPL_URL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->currentDetails:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    invoke-virtual {v7}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getExternalId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_1
    const-string v5, "app_url"

    invoke-virtual {v2, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lchooser/ResolverActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    return-object v0

    .line 224
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method public initialize(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Landroid/content/Intent;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->activity:Landroid/app/Activity;

    .line 88
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 89
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 91
    .local v4, "extras":Landroid/os/Bundle;
    const v10, 0x7f0b0018

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "activity":Landroid/app/Activity;
    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->flag:Landroid/widget/ImageButton;

    .line 92
    const v10, 0x7f0b0019

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->delete:Landroid/widget/Button;

    .line 94
    if-eqz v4, :cond_0

    const-string v10, "blurb"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 95
    const-string v10, "blurb"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 97
    .local v7, "p":[B
    :try_start_0
    invoke-static {v7}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v10

    iput-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v7    # "p":[B
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-nez v10, :cond_1

    .line 103
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v10

    iput-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 105
    :cond_1
    const v10, 0x7f0b000f

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 106
    .local v8, "preview":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v10}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v10, 0x7f0b0010

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 109
    .local v9, "shortInfo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v10, v11}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbAuthorInfo(Landroid/content/res/Resources;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v10, 0x7f0b0012

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->ratingBar:Landroid/widget/RatingBar;

    .line 112
    const v10, 0x7f0b0016

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    .line 114
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    new-instance v11, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$1;

    invoke-direct {v11, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v10, 0x7f0b0017

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 124
    .local v3, "email":Landroid/widget/ImageButton;
    new-instance v10, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;

    invoke-direct {v10, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v10}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    const v10, 0x7f0b000a

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 156
    .local v6, "nickname":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v10}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v10, 0x7f0b000d

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "about":Landroid/widget/TextView;
    const-string v10, ""

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v0    # "about":Landroid/widget/TextView;
    .end local v6    # "nickname":Landroid/widget/TextView;
    :goto_1
    const v10, 0x7f0b001a

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 166
    .local v5, "more":Landroid/widget/TextView;
    new-instance v10, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$3;

    invoke-direct {v10, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v10, 0x7f0b001d

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 174
    .local v1, "allowComments":Landroid/widget/CheckBox;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 175
    const v10, 0x7f0b001e

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 177
    const v10, 0x7f0b0015

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v10, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$4;

    invoke-direct {v10, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {p1, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->ratingBar:Landroid/widget/RatingBar;

    new-instance v11, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;

    invoke-direct {v11, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 199
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->ratingBar:Landroid/widget/RatingBar;

    new-instance v11, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;

    invoke-direct {v11, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-direct {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->fetchDetails(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 212
    return-void

    .line 161
    .end local v1    # "allowComments":Landroid/widget/CheckBox;
    .end local v5    # "more":Landroid/widget/TextView;
    :cond_2
    const v10, 0x7f0b0009

    invoke-virtual {p0, v10}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "author_section":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 98
    .end local v2    # "author_section":Landroid/view/View;
    .end local v3    # "email":Landroid/widget/ImageButton;
    .end local v8    # "preview":Landroid/widget/TextView;
    .end local v9    # "shortInfo":Landroid/widget/TextView;
    .restart local v7    # "p":[B
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method public setFavorited(Z)V
    .locals 2
    .param p1, "favorited"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorited:Z

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->favorite:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected setupComment(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
    .locals 3
    .param p1, "details"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getOwnedByUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 335
    :cond_0
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 336
    .local v0, "allowComments":Landroid/widget/CheckBox;
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 337
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->getAllowCommenting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 339
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected showDeleteDialog()V
    .locals 6

    .prologue
    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V

    .line 466
    .local v1, "deleteClick":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "Delete message"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 467
    const-string v4, "Are you sure you want to delete?"

    .line 466
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 467
    const-string v4, "Delete"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 468
    const v4, 0x7f070017

    const/4 v5, 0x0

    .line 467
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 468
    const v4, 0x108001d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 469
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 470
    return-void
.end method

.method protected showVoteDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0b0052

    const v9, 0x7f0b0012

    .line 423
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->voteDialog:Landroid/app/Dialog;

    if-nez v6, :cond_0

    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000d

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 426
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 427
    .local v3, "r":Landroid/widget/RatingBar;
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 429
    .local v4, "text":Landroid/widget/TextView;
    new-instance v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;

    invoke-direct {v6, p0, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;

    invoke-direct {v2, p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;)V

    .line 447
    .local v2, "ok":Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "Rate this"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 448
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-virtual {v6, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 449
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f07001c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 449
    const v7, 0x108000c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 450
    .local v1, "dialog":Landroid/app/Dialog;
    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->voteDialog:Landroid/app/Dialog;

    .line 452
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "ok":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "r":Landroid/widget/RatingBar;
    .end local v4    # "text":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->voteDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 453
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->voteDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 454
    .restart local v3    # "r":Landroid/widget/RatingBar;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v6}, Landroid/widget/RatingBar;->getRating()F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 455
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->voteDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->updateRatingText(Landroid/widget/RatingBar;Landroid/widget/TextView;)V

    .line 456
    return-void
.end method
