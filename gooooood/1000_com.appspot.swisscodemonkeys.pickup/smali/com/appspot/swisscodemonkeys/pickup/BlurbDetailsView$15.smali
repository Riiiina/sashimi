.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->showVoteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

.field private final synthetic val$r:Landroid/widget/RatingBar;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$12(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$8(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/widget/RatingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 442
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$7(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;F)V

    .line 443
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$15;->val$r:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$13(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;I)V

    .line 445
    :cond_0
    return-void
.end method
