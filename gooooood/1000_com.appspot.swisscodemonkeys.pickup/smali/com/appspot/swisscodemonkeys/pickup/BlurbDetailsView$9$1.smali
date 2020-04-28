.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 277
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    const-string v1, "Deleted. The message will disappear from the app in the next minutes."

    .line 279
    const/4 v2, 0x1

    .line 276
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 281
    return-void
.end method
