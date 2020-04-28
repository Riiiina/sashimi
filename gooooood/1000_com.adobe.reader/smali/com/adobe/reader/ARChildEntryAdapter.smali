.class public Lcom/adobe/reader/ARChildEntryAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/reader/ARChildEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARChildEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARChildEntry;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARChildEntryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARChildEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;

    invoke-direct {v2}, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;-><init>()V

    const v0, 0x7f0a0023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0a0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/reader/ARChildEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARChildEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileIconView:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;

    move-object v1, v0

    move-object v2, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileIconView:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileIconView:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileIconView:Landroid/widget/ImageView;

    const v3, 0x7f020016

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v1, Lcom/adobe/reader/ARChildEntryAdapter$ARChildEntryWrapper;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARChildEntryAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
