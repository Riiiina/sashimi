.class public Lcom/clov4r/android/nil/DetailDialogActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/RadioGroup;

.field b:Landroid/widget/RadioGroup;

.field c:Landroid/widget/RadioButton;

.field d:Landroid/view/WindowManager;

.field e:Landroid/view/Display;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout;

.field i:Lcom/clov4r/android/nil/library/g;

.field j:I

.field k:Landroid/widget/Button;

.field l:Landroid/widget/Button;

.field m:Landroid/widget/TextView;

.field n:Ljava/lang/String;

.field o:Z

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->d:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->e:Landroid/view/Display;

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iput v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->o:Z

    new-instance v0, Lcom/clov4r/android/nil/j;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/j;-><init>(Lcom/clov4r/android/nil/DetailDialogActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/clov4r/android/nil/k;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/k;-><init>(Lcom/clov4r/android/nil/DetailDialogActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->e:Landroid/view/Display;

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->e:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fea8f5c28f5c28fL    # 0.83

    mul-double/2addr v0, v2

    double-to-int v7, v0

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->e:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int v8, v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "open_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->o:Z

    const-string v1, "pathKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0067

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0068

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0069

    invoke-virtual {p0, v5}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0062

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->g:Landroid/widget/LinearLayout;

    const v6, 0x7f0b006d

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->h:Landroid/widget/LinearLayout;

    const v6, 0x7f0b006e

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->k:Landroid/widget/Button;

    const v6, 0x7f0b006f

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->k:Landroid/widget/Button;

    iget-object v10, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->l:Landroid/widget/Button;

    iget-object v10, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b006a

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->m:Landroid/widget/TextView;

    const v6, 0x7f0b0061

    invoke-virtual {p0, v6}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->f:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->f:Landroid/widget/LinearLayout;

    sget v10, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->f:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v10}, Lcom/clov4r/android/nil/DetailDialogActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clov4r/android/nil/library/g;

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    :cond_2
    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v6, v6, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v6, v6, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v6, v6, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->n:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->o:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-boolean v6, v6, Lcom/clov4r/android/nil/library/g;->r:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->g:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->h:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->m:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->m:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/clov4r/android/nil/library/g;->r:Z

    :goto_2
    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v6, v6, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v7, v7, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%,d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-wide v9, v9, Lcom/clov4r/android/nil/library/g;->d:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "B"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-wide v1, v1, Lcom/clov4r/android/nil/library/g;->g:J

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->a:Landroid/widget/RadioGroup;

    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/DetailDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->b:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->a:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->b:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget v1, v1, Lcom/clov4r/android/nil/library/g;->q:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->j:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, v3, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clov4r/android/nil/library/a;

    iget-object v3, p1, Lcom/clov4r/android/nil/library/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CH,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, v3, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clov4r/android/nil/library/a;

    iget-object v3, p1, Lcom/clov4r/android/nil/library/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->b:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_6
    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v6, v6, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->g:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->h:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->m:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->j:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget v1, v1, Lcom/clov4r/android/nil/library/g;->p:I

    if-ne v1, v0, :cond_a

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_a
    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v1, v1, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clov4r/android/nil/library/f;

    iget-object v1, p1, Lcom/clov4r/android/nil/library/f;->b:Ljava/lang/String;

    const-string v2, ""

    const-string v2, "94212"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "ssa"

    :goto_5
    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->a:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const-string v2, "94210"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, "srt"

    goto :goto_5

    :cond_c
    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_d
    const-string v2, "chi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    iget-boolean v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->o:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->h:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/DetailDialogActivity;->m:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    const-string v2, "%,d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%,d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clov4r/android/nil/library/c;

    iget-wide v1, p0, Lcom/clov4r/android/nil/library/c;->b:J

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->d(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/DetailDialogActivity;->finish()V

    return-void
.end method
