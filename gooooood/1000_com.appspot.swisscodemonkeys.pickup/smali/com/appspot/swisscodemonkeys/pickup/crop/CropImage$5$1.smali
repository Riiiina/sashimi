.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 169
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$9(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->center(ZZ)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 176
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->requestLayout()V

    .line 177
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->invalidate()V

    .line 178
    return-void
.end method
