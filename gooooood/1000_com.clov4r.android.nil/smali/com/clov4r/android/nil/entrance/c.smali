.class public Lcom/clov4r/android/nil/entrance/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field c:Landroid/view/LayoutInflater;

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->c:Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->d:[Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "avi"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rmvb"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wmv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mkv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mlv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m2v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vob"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "asf"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ra"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ram"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hlv"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "f4v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m4v"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->e:[Ljava/lang/String;

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->f:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/c;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/c;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/clov4r/android/nil/ec;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v4

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const v0, 0x7f0b00d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0b00d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/c;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    const v2, 0x7f070008

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/c;->g:Landroid/widget/TextView;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_6
    move-object v1, p2

    goto/16 :goto_1
.end method
