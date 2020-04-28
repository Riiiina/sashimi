.class public Lcom/clov4r/android/nil/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Landroid/content/Context;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/clov4r/android/nil/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/cp;

    iget-object v1, p0, Lcom/clov4r/android/nil/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/clov4r/android/nil/d;->c:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/clov4r/android/nil/d;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/clov4r/android/nil/cp;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
