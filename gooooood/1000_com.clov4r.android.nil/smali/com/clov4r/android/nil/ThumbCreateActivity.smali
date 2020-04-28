.class public Lcom/clov4r/android/nil/ThumbCreateActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/SeekBar;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/LinearLayout;

.field i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->g:Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->h:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/clov4r/android/nil/br;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/br;-><init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->i:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/ThumbCreateActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    :goto_0
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->c:Landroid/widget/SeekBar;

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/bs;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/bs;-><init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/bq;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/bq;-><init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->h:Landroid/widget/LinearLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/clov4r/android/nil/ThumbCreateActivity;->i:Landroid/os/Handler;

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->g:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/clov4r/android/nil/library/MediaLibrary;->e:Z

    new-instance v0, Lcom/clov4r/android/nil/bx;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/bx;-><init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/bx;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->g:Landroid/os/Handler;

    return-void
.end method
