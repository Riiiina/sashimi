.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$7;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->addAboutAuthor(Landroid/widget/ViewFlipper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$7;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->showDialog(I)V

    .line 272
    return-void
.end method
