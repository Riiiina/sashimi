.class public Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "BlurbDetailsActivity.java"


# static fields
.field public static final BLURB_PARAM:Ljava/lang/String; = "blurb"

.field private static final NEW_LINE_DIALOG:I = 0x2

.field private static final PREF_SHOW_COMMENTS:Ljava/lang/String; = "showComments"

.field private static count:I


# instance fields
.field private blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->count:I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 291
    invoke-static {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createDeleteCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private static createDeleteCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p3, "blurbList"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .prologue
    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070047

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 296
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;-><init>(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    .line 328
    .local v1, "clicklistener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f07004a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 329
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 328
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 330
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 331
    const v3, 0x108003c

    .line 330
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 328
    return-object v2
.end method

.method public static createEditCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p3, "blurbList"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .prologue
    const/4 v3, 0x5

    .line 346
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, "text":Landroid/widget/EditText;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 349
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 350
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 351
    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 352
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;-><init>(Landroid/widget/EditText;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    .line 390
    .local v0, "clicklistener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f070049

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 391
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 390
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 392
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 392
    const v3, 0x1080033

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 390
    return-object v2
.end method

.method public static createViewWithAd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 154
    invoke-static {}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->register()V

    .line 155
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "main":Landroid/widget/RelativeLayout;
    new-instance v2, Lvw/SCMView;

    invoke-direct {v2, p0}, Lvw/SCMView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v2, "vw":Lvw/SCMView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    const/16 v3, 0x10e1

    invoke-virtual {v2, v3}, Lvw/SCMView;->setId(I)V

    .line 165
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {v2}, Lvw/SCMView;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 167
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-object v0
.end method

.method public static setupCommentClickHandlers(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "blurbList"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    .param p2, "detailBlurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p3, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .prologue
    .line 210
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;

    invoke-direct {v0, p1, p0, p3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V

    invoke-virtual {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V

    invoke-virtual {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 250
    return-void
.end method

.method private setupCommentSection(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 7
    .param p1, "blurbList"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    .param p2, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    const/16 v6, 0x8

    .line 172
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "showComments"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 173
    .local v2, "showComments":Z
    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 175
    .local v1, "hasComments":Z
    :goto_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v4, 0x7f0b001c

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, "comments":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    if-nez v1, :cond_2

    .line 182
    sget-object v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p1, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    .line 183
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-static {p0, p1, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setupCommentClickHandlers(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V

    .line 199
    return-void

    .line 173
    .end local v0    # "comments":Landroid/widget/TextView;
    .end local v1    # "hasComments":Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 184
    .restart local v0    # "comments":Landroid/widget/TextView;
    .restart local v1    # "hasComments":Z
    :cond_2
    if-nez v2, :cond_3

    .line 185
    sget-object v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p1, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    .line 186
    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;

    invoke-direct {v3, p0, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    goto :goto_1
.end method

.method private showOfferWall(I)V
    .locals 10
    .param p1, "everyXDays"    # I

    .prologue
    .line 64
    sget v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->count:I

    .line 65
    sget v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->count:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_offer_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 69
    .local v2, "lastShow":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x15180

    mul-int/2addr v6, p1

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "last_offer_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v4

    const-string v5, "bda"

    const-string v6, "show_offer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "We have some cool recommended apps for you, would you like to look at them?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    const-string v4, "Yes"

    new-instance v5, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;I)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 83
    const-string v5, "Not now"

    new-instance v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$2;

    invoke-direct {v6, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static startDetailsActivity(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "blurb"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected addExtraMenuItems(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 259
    add-int/lit8 v1, p1, 0x1

    const v2, 0x7f070049

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 260
    const v2, 0x1080033

    .line 259
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAllowCommenting()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 264
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/16 v10, 0x8

    .line 97
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "topbar"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    .local v1, "buttonsOnTop":Z
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "offerwall"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, "showOfferWall":I
    if-lez v6, :cond_0

    .line 103
    invoke-direct {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->showOfferWall(I)V

    .line 106
    :cond_0
    invoke-virtual {p0, v12}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setShowShare(Z)V

    .line 107
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->requestWindowFeature(I)Z

    .line 108
    invoke-virtual {p0, v12}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 110
    new-instance v7, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-direct {v7, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 111
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, p0, v8, v9}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialize(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Landroid/content/Intent;)V

    .line 112
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v7

    iput-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 113
    invoke-static {p0}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "db_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lstats/StatsTracker;->track(Ljava/lang/String;)V

    .line 115
    new-instance v7, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-direct {v7, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 117
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 119
    .local v4, "mainView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 120
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 121
    .local v5, "newMain":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v8, 0x7f0b0014

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    .local v0, "buttonGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v8, 0x7f0b0013

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 124
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 125
    const/4 v8, -0x2

    invoke-direct {v7, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, "listParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    const/4 v7, 0x3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v5, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v8, 0x7f0b0011

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v8, 0x7f0b0012

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 133
    move-object v4, v5

    .line 138
    .end local v0    # "buttonGroup":Landroid/view/ViewGroup;
    .end local v2    # "listParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "newMain":Landroid/widget/RelativeLayout;
    :goto_0
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 139
    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v9

    .line 138
    invoke-static {v8, v9}, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->createCommentLoader(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 140
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHeaderView(Landroid/view/View;)V

    .line 141
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbs(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 143
    invoke-static {p0, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createViewWithAd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 145
    .local v3, "main":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 147
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-direct {p0, v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setupCommentSection(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 148
    return-void

    .line 135
    .end local v3    # "main":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v8, 0x7f0b0015

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 279
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 284
    :goto_0
    return-object v1

    .line 282
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 287
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

    .line 284
    :pswitch_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailsView:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getBlurb()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {p0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createEditCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 203
    invoke-static {p0}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sb_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstats/StatsTracker;->track(Ljava/lang/String;)V

    .line 204
    invoke-super {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onStop()V

    .line 205
    return-void
.end method

.method protected selectMenuItem(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 268
    sub-int v0, p2, p1

    .line 269
    .local v0, "pos":I
    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->showDialog(I)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
