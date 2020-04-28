.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$6(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$2(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Z)V

    .line 238
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$12()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$8()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$8()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 237
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
