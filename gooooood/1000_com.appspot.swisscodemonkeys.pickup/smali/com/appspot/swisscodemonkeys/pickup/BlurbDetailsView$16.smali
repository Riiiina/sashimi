.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$16;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$14(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 464
    return-void
.end method
