.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 316
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isPlayingLivePodcast:Z

    if-nez v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$12()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$6(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_1
    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$2(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Z)V

    .line 336
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    :cond_0
    :goto_2
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$8()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$8()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 335
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 338
    :cond_5
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isPlayingLivePodcast:Z

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 340
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
