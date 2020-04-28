.class Lcom/clov4r/android/nil/m;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/clov4r/android/nil/FileListActivity;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/FileListActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/clov4r/android/nil/m;->b:Lcom/clov4r/android/nil/FileListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->b:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/FileListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/m;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/clov4r/android/nil/m;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/clov4r/android/nil/ab;)V
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const v0, 0x7f0b0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0098

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0094

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0093

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b0096

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0b0097

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p2, Lcom/clov4r/android/nil/ab;->b:I

    if-ne v6, v8, :cond_1

    const v1, 0x7f02000f

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p2, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p2, Lcom/clov4r/android/nil/ab;->b:I

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lcom/clov4r/android/nil/ab;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/clov4r/android/nil/m;->b:Lcom/clov4r/android/nil/FileListActivity;

    invoke-static {v6, v4}, Lcom/clov4r/android/nil/FileListActivity;->a(Lcom/clov4r/android/nil/FileListActivity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v4, p2, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f020010

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/clov4r/android/nil/ab;->c:J

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/FileListActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/clov4r/android/nil/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clov4r/android/nil/db;

    if-nez p0, :cond_4

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v6, 0x7f020042

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/clov4r/android/nil/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcom/clov4r/android/nil/db;->b:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_5

    iget-wide v2, p0, Lcom/clov4r/android/nil/db;->a:J

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    :cond_5
    const-string v0, "  [%s / %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/clov4r/android/nil/db;->b:J

    invoke-static {v4, v5}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v3, p0, Lcom/clov4r/android/nil/db;->a:J

    invoke-static {v3, v4}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)Lcom/clov4r/android/nil/ab;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clov4r/android/nil/ab;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public a(Lcom/clov4r/android/nil/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v0

    iget v0, v0, Lcom/clov4r/android/nil/ab;->b:I

    return v0
.end method

.method public getCount()I
    .locals 1

    sget-boolean v0, Lcom/clov4r/android/nil/FileListActivity;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/m;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/m;->b:Lcom/clov4r/android/nil/FileListActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/m;->b:Lcom/clov4r/android/nil/FileListActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Landroid/app/Activity;)Lcom/admob/android/ads/AdView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/clov4r/android/nil/m;->a(Landroid/view/View;Lcom/clov4r/android/nil/ab;)V

    goto :goto_0
.end method
