.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->createDeleteCommentDialog(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 300
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 325
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$6$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method
