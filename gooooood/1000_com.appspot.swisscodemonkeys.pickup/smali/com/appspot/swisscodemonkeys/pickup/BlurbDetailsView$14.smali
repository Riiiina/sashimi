.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->val$r:Landroid/widget/RatingBar;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->val$text:Landroid/widget/TextView;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->val$r:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$14;->val$text:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$11(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Landroid/widget/RatingBar;Landroid/widget/TextView;)V

    .line 433
    const/4 v0, 0x0

    return v0
.end method
