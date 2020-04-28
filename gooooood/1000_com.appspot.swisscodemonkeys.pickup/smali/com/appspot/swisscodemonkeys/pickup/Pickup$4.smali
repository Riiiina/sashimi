.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

.field private final synthetic val$array:[Ljava/lang/String;

.field private final synthetic val$leftIn:Landroid/view/animation/Animation;

.field private final synthetic val$leftOut:Landroid/view/animation/Animation;

.field private final synthetic val$spinner1:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;Landroid/widget/Spinner;[Ljava/lang/String;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$spinner1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$array:[Ljava/lang/String;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$leftOut:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$leftIn:Landroid/view/animation/Animation;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$spinner1:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$array:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 188
    .local v0, "pos":I
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$leftOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$leftIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;->val$spinner1:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 191
    return-void
.end method
