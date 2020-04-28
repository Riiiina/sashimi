.class public Lcom/adobe/reader/ARFileEntryAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/reader/ARFileEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIRECTORY:I = 0x1

.field private static final PDF_FILE:I = 0x0

.field private static final VIEW_COUNT:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mContext:Landroid/content/Context;

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
            "Lcom/adobe/reader/ARFileEntry;",
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

    check-cast v0, Lcom/adobe/reader/ARFileEntry;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileEntryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/adobe/reader/ARFileEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/reader/ARFileEntryAdapter;->getItemViewType(I)I

    move-result v0

    if-nez p2, :cond_1

    new-instance v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;

    invoke-direct {v1}, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;-><init>()V

    packed-switch v0, :pswitch_data_0

    move-object v0, p2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/adobe/reader/ARFileEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mDirectoryPathView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0024

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mDirectoryPathView:Landroid/widget/TextView;

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/reader/ARFileEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0a0027

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mModifiedDateTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0028

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mFileSizeView:Landroid/widget/TextView;

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;

    move-object v1, v0

    move-object v0, p2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mModifiedDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->getModifiedDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->getFileSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/reader/ARFileEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
