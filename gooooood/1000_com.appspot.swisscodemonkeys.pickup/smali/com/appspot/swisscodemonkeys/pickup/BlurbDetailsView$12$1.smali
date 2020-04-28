.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

.field private final synthetic val$favorited:Z


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    iput-boolean p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->val$favorited:Z

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 387
    iget-boolean v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->val$favorited:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070034

    .line 386
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 389
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$5(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 390
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$10(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 391
    return-void

    .line 387
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const v2, 0x7f070035

    goto :goto_0
.end method
