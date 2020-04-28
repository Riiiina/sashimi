.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->setupComment(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 344
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;

    invoke-direct {v0, p0, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 371
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$11$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    return-void
.end method
