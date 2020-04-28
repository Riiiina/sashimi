.class Lvw/SCMView$1$1;
.super Ljava/lang/Object;
.source "SCMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvw/SCMView$1;

.field private final synthetic val$result:Lvw/SCMView$ViewResult;


# direct methods
.method constructor <init>(Lvw/SCMView$1;Lvw/SCMView$ViewResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    iput-object p2, p0, Lvw/SCMView$1$1;->val$result:Lvw/SCMView$ViewResult;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lvw/SCMView$1$1;->val$result:Lvw/SCMView$ViewResult;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lvw/SCMView$1$1;->val$result:Lvw/SCMView$ViewResult;

    invoke-interface {v2}, Lvw/SCMView$ViewResult;->createView()Landroid/view/View;

    move-result-object v1

    .line 283
    :cond_0
    if-eqz v1, :cond_3

    .line 284
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2}, Lvw/SCMView;->access$6(Lvw/SCMView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2}, Lvw/SCMView;->removeAllViews()V

    .line 286
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvw/SCMView;->addView(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2}, Lvw/SCMView;->access$7(Lvw/SCMView;)Lvw/AnimationHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvw/AnimationHelper;->applyFadeIn(Landroid/view/View;)V

    .line 300
    :goto_0
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2, v4}, Lvw/SCMView;->access$8(Lvw/SCMView;Z)V

    .line 305
    :goto_1
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2}, Lvw/SCMView;->invalidate()V

    .line 306
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2, v3}, Lvw/SCMView;->access$9(Lvw/SCMView;Z)V

    .line 307
    return-void

    .line 289
    :cond_1
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2}, Lvw/SCMView;->getChildCount()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 290
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lvw/SCMView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "oldAd":Landroid/view/View;
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvw/SCMView;->addView(Landroid/view/View;)V

    .line 294
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2}, Lvw/SCMView;->access$7(Lvw/SCMView;)Lvw/AnimationHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lvw/AnimationHelper;->applyMoveAnim(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 296
    .end local v0    # "oldAd":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2}, Lvw/SCMView;->removeAllViews()V

    .line 297
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvw/SCMView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-virtual {v2}, Lvw/SCMView;->removeAllViews()V

    .line 303
    iget-object v2, p0, Lvw/SCMView$1$1;->this$1:Lvw/SCMView$1;

    invoke-static {v2}, Lvw/SCMView$1;->access$0(Lvw/SCMView$1;)Lvw/SCMView;

    move-result-object v2

    invoke-static {v2, v3}, Lvw/SCMView;->access$8(Lvw/SCMView;Z)V

    goto :goto_1
.end method
