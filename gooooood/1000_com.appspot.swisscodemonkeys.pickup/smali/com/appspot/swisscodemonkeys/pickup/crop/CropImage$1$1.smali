.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 447
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget v3, v3, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mNumFaces:I

    if-le v3, v4, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mWaitingToPick:Z

    .line 448
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mNumFaces:I

    if-lez v2, :cond_4

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mNumFaces:I

    if-lt v0, v2, :cond_3

    .line 455
    .end local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->requestLayout()V

    .line 456
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->invalidate()V

    .line 457
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 458
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v3

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    iput-object v2, v3, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    .line 459
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    iget-object v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    invoke-virtual {v2, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->setFocus(Z)V

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget v2, v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mNumFaces:I

    if-le v2, v4, :cond_1

    .line 463
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    move-result-object v2

    const-string v3, "Tap a face to begin."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 465
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 467
    .end local v1    # "t":Landroid/widget/Toast;
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 447
    goto :goto_0

    .line 450
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    iget-object v3, v3, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;Landroid/media/FaceDetector$Face;)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;)V

    goto :goto_2
.end method
