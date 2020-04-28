.class public Lcom/clov4r/android/nil/p;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field g:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/p;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/p;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/p;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/p;->e:I

    iput-object v1, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    iput-object p1, p0, Lcom/clov4r/android/nil/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/clov4r/android/nil/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/clov4r/android/nil/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/clov4r/android/nil/p;->d:Ljava/lang/String;

    iput p5, p0, Lcom/clov4r/android/nil/p;->e:I

    iput-boolean p6, p0, Lcom/clov4r/android/nil/p;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/clov4r/android/nil/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/clov4r/android/nil/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/p;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "00:00:00/00:00:00"

    iput-object v1, p0, Lcom/clov4r/android/nil/p;->c:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/clov4r/android/nil/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/p;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/clov4r/android/nil/p;->f:Z

    if-eqz v1, :cond_1

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/p;->e:I

    if-ne v0, v7, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/p;->g:Landroid/view/View;

    return-object v0
.end method
