.class public Lcom/clov4r/android/nil/entrance/FileTypeListActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/clov4r/android/nil/entrance/c;

.field c:Ljava/lang/String;

.field d:I

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/EditText;

.field g:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->d:I

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->g:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clov4r/android/nil/ec;->d:[Ljava/lang/String;

    sget-object v1, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v5

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/clov4r/android/nil/ec;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    new-instance v1, Lcom/clov4r/android/nil/entrance/c;

    invoke-direct {v1, p0, v0}, Lcom/clov4r/android/nil/entrance/c;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/entrance/ac;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/ac;-><init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/16 v3, 0x32

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    new-instance v2, Lcom/clov4r/android/nil/entrance/ae;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/entrance/ae;-><init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    new-instance v2, Lcom/clov4r/android/nil/entrance/ab;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/entrance/ab;-><init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000e

    new-instance v2, Lcom/clov4r/android/nil/entrance/ad;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/entrance/ad;-><init>(Lcom/clov4r/android/nil/entrance/FileTypeListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->g:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->g:Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_3
    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    iget-object v1, v1, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->b:Lcom/clov4r/android/nil/entrance/c;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/c;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->i(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->j(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->l(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->d:[Ljava/lang/String;

    return-void
.end method
