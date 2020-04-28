.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createEditCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$text:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$context:Landroid/app/Activity;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "newLine"    # Ljava/lang/String;
    .param p2, "parentBlurb"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$text:Landroid/widget/EditText;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Ljava/lang/String;Ljava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/EditText;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 387
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 388
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->sanitizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "newLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "comment/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$7;->postComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method
