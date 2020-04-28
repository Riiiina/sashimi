.class Lcom/clov4r/android/nil/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/DetailDialogActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/DetailDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    const v3, 0x7f0b006b

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v3, v1, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/clov4r/android/nil/library/g;->p:I

    iget-object v1, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, v3, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clov4r/android/nil/library/f;

    iget v2, p0, Lcom/clov4r/android/nil/library/f;->a:I

    iput v2, v1, Lcom/clov4r/android/nil/library/g;->k:I

    goto :goto_0

    :cond_2
    const v3, 0x7f0b006c

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/clov4r/android/nil/library/g;->q:I

    iget-object v1, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, p0, Lcom/clov4r/android/nil/k;->a:Lcom/clov4r/android/nil/DetailDialogActivity;

    iget-object v3, v3, Lcom/clov4r/android/nil/DetailDialogActivity;->i:Lcom/clov4r/android/nil/library/g;

    iget-object v3, v3, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clov4r/android/nil/library/a;

    iget-object v2, p0, Lcom/clov4r/android/nil/library/a;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/clov4r/android/nil/library/g;->j:Ljava/lang/String;

    goto :goto_0
.end method
