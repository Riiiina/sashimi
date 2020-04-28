.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    const-class v2, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    return-void
.end method
