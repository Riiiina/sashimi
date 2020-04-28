.class public Lcom/clov4r/android/nil/cp;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Z

.field d:Landroid/view/View;

.field e:Landroid/widget/CheckBox;


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/clov4r/android/nil/cp;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/clov4r/android/nil/cp;->c:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->e:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, p5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->e:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cp;->d:Landroid/view/View;

    return-object v0
.end method
