.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$activity:Landroid/app/Activity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    const/4 v0, -0x1

    .line 221
    .local v0, "change":I
    packed-switch p2, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 223
    :pswitch_0
    const/4 v0, 0x1

    .line 227
    :pswitch_1
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v2, v3, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->sendRating(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;I)V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthor;->start(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
