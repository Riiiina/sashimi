.class public Lcom/adobe/reader/ARPortfolioUI;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FILE_OPEN_REQUEST_CODE:I = 0x1


# instance fields
.field private mChildFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARChildEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

.field private mChildListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    return-void
.end method

.method private populateList()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getFilesInDirectory()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1}, Lcom/adobe/reader/PageView;->getDirectoriesInDirectory()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "reader populateList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filelist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dirlist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    array-length v3, v1

    sget-object v4, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v4}, Lcom/adobe/reader/PageView;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    new-instance v5, Lcom/adobe/reader/ARChildEntry;

    const-string v6, ".."

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/adobe/reader/ARChildEntry;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    new-instance v6, Lcom/adobe/reader/ARChildEntry;

    aget-object v7, v1, v4

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/adobe/reader/ARChildEntry;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v9

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    new-instance v4, Lcom/adobe/reader/ARChildEntry;

    aget-object v5, v0, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/adobe/reader/ARChildEntry;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_2
    return v0

    :cond_4
    move v0, v9

    goto :goto_2
.end method


# virtual methods
.method public InitializeTopBar()V
    .locals 5

    const-string v4, ""

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0012

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0037

    invoke-virtual {p0, v1}, Lcom/adobe/reader/ARPortfolioUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getDocPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "cache_file.pdf"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string v1, ""

    move-object v1, v4

    :goto_2
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v3, "com.adobe.reader.FileBrowserReturnData"

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.adobe.reader.FileBrowserReturnData"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.adobe.reader.FileBrowserReturnData"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/ARPortfolioUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/ARPortfolioUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/reader/PageView;->mShowPortfolioBrowser:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/ARPortfolioUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->finish()V

    :cond_2
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->changeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/adobe/reader/ARPortfolioUI;->populateList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntryAdapter;->clear()V

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    iget-object v1, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARChildEntryAdapter;->addAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->shareDocument()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/ARPortfolioUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0012 -> :sswitch_1
        0x7f0a0037 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->setContentView(I)V

    new-instance v0, Lcom/adobe/reader/ARChildEntryAdapter;

    const v1, 0x7f030002

    invoke-direct {v0, p0, v1}, Lcom/adobe/reader/ARChildEntryAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->InitializeTopBar()V

    invoke-direct {p0}, Lcom/adobe/reader/ARPortfolioUI;->populateList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntryAdapter;->clear()V

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    iget-object v1, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARChildEntryAdapter;->addAll(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARChildEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntry;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->openFile(Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/ARPortfolioUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->finish()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->changeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/adobe/reader/ARPortfolioUI;->populateList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntryAdapter;->clear()V

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    iget-object v1, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARChildEntryAdapter;->addAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/adobe/reader/ARPortfolioUI;->populateList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARChildEntryAdapter;->clear()V

    iget-object v0, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildListAdapter:Lcom/adobe/reader/ARChildEntryAdapter;

    iget-object v1, p0, Lcom/adobe/reader/ARPortfolioUI;->mChildFilesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARChildEntryAdapter;->addAll(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/adobe/reader/ARPortfolioUI;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARAboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a003f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a0041

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public shareDocument()V
    .locals 5

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getDocPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "application/pdf"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/String;

    const-string v2, "Emailing: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v3}, Lcom/adobe/reader/PageView;->getDocPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adobe/reader/ARPortfolioUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARPortfolioUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2b

    const/4 v1, 0x1

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-static {v0, v1, v2}, Lcom/adobe/reader/AdobeReader;->ShowErrorDlg(IILcom/adobe/reader/PageView;)V

    goto :goto_0
.end method
