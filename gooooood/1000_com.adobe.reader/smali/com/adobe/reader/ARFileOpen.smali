.class public Lcom/adobe/reader/ARFileOpen;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final BACKGROUND_THREAD_PRIORITY:I

.field private static final DIRECTORY_FILTER:Ljava/io/FilenameFilter;

.field private static final PDF_FILES_TAB:Ljava/lang/String; = "pdfFileTab"

.field private static final PDF_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final RECENT_FILES_TAB:Ljava/lang/String; = "recentFilesTab"

.field private static final THREAD_MAX_PRIORITY:I = 0xa

.field private static final THRESHOLD_COUNT:I = 0x5


# instance fields
.field private addFilesToAdapter:Ljava/lang/Runnable;

.field private enumerateFile:Ljava/lang/Runnable;

.field private mBackgroundThread:Ljava/lang/Thread;

.field private mClearRecentFilesMenuItem:Landroid/view/MenuItem;

.field private mFileSelected:Z

.field private mFullScanCompleted:Z

.field private mPdfFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPdfFileTabShadow:Landroid/view/View;

.field private mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

.field private mPdfFilesListView:Landroid/widget/ListView;

.field private mPdfFilesTab:Landroid/widget/TabHost$TabSpec;

.field private mPdfFilesTabHeader:Landroid/view/View;

.field private mRecentFileListView:Landroid/widget/ListView;

.field private mRecentFileTab:Landroid/widget/TabHost$TabSpec;

.field private mRecentFileTextView:Landroid/widget/TextView;

.field private mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

.field private mRecentFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentFilesShadow:Landroid/view/View;

.field private mRecentFilesTabHeader:Landroid/view/View;

.field private mSdCardTextView:Landroid/widget/TextView;

.field private mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUiThread:Ljava/lang/Thread;

.field private mUiThreadInitialPriority:I

.field private postScanComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/adobe/reader/ARFileOpen$7;

    invoke-direct {v0}, Lcom/adobe/reader/ARFileOpen$7;-><init>()V

    sput-object v0, Lcom/adobe/reader/ARFileOpen;->PDF_FILE_FILTER:Ljava/io/FilenameFilter;

    new-instance v0, Lcom/adobe/reader/ARFileOpen$8;

    invoke-direct {v0}, Lcom/adobe/reader/ARFileOpen$8;-><init>()V

    sput-object v0, Lcom/adobe/reader/ARFileOpen;->DIRECTORY_FILTER:Ljava/io/FilenameFilter;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/adobe/reader/ARFileOpen;->BACKGROUND_THREAD_PRIORITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    new-instance v0, Lcom/adobe/reader/ARFileOpen$2;

    invoke-direct {v0, p0}, Lcom/adobe/reader/ARFileOpen$2;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->enumerateFile:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/ARFileOpen$5;

    invoke-direct {v0, p0}, Lcom/adobe/reader/ARFileOpen$5;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->addFilesToAdapter:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/ARFileOpen$6;

    invoke-direct {v0, p0}, Lcom/adobe/reader/ARFileOpen$6;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->postScanComplete:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mClearRecentFilesMenuItem:Landroid/view/MenuItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/adobe/reader/ARFileOpen;->mFullScanCompleted:Z

    iput-boolean v1, p0, Lcom/adobe/reader/ARFileOpen;->mFileSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/reader/ARFileOpen;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->showRecentFilesTab()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/reader/ARFileOpen;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->showPdfFilesTab()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/reader/ARFileOpen;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/reader/ARFileOpen;->addFiles(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/reader/ARFileOpen;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/reader/ARFileOpen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/reader/ARFileOpen;->mFullScanCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/reader/ARFileOpen;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->postScanComplete:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/reader/ARFileOpen;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/reader/ARFileOpen;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/reader/ARFileOpen;)Lcom/adobe/reader/ARFileEntryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/reader/ARFileOpen;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->destroyBackgroundThread()V

    return-void
.end method

.method private addFiles(Ljava/io/File;)V
    .locals 14

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARFileOpen;->PDF_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v0, Lcom/adobe/reader/ARFileOpen$3;

    invoke-direct {v0, p0}, Lcom/adobe/reader/ARFileOpen$3;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v8, v7

    const/4 v2, 0x0

    move v9, v2

    move v10, v1

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v5, v7, v9

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_2
    if-nez v0, :cond_7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    new-instance v3, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/adobe/reader/ARFileEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v11, v0

    :goto_2
    iget-object v12, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    monitor-enter v12

    :try_start_3
    iget-object v13, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    new-instance v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/ARFileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int/lit8 v0, v10, 0x1

    const/4 v1, 0x5

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->addFilesToAdapter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :cond_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v0

    move v0, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->addFilesToAdapter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    sget-object v0, Lcom/adobe/reader/ARFileOpen;->DIRECTORY_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adobe/reader/ARFileOpen$4;

    invoke-direct {v1, p0}, Lcom/adobe/reader/ARFileOpen$4;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :cond_6
    invoke-direct {p0, v3}, Lcom/adobe/reader/ARFileOpen;->addFiles(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v11, v0

    goto/16 :goto_2
.end method

.method private clearRecentFileList()V
    .locals 2

    invoke-static {p0}, Lcom/adobe/reader/ARFileBrowserUtils;->clearRecentFileList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntryAdapter;->clear()V

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private destroyBackgroundThread()V
    .locals 2

    iget-boolean v0, p0, Lcom/adobe/reader/ARFileOpen;->mFullScanCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntryAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/reader/ARFileOpen;->mFileSelected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntryAdapter;->clear()V

    :cond_1
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mUiThread:Ljava/lang/Thread;

    iget v1, p0, Lcom/adobe/reader/ARFileOpen;->mUiThreadInitialPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method private initializeTabs()V
    .locals 8

    const/4 v6, 0x0

    const v5, 0x7f0a002e

    const v4, 0x7f0a002c

    const v3, 0x7f030004

    const-string v7, "pdfFileTab"

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "recentFilesTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTab:Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesShadow:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTab:Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v1, Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-direct {v1, p0, v3}, Lcom/adobe/reader/ARFileEntryAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {p0, v4}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    const-string v2, "pdfFileTab"

    invoke-virtual {v1, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTab:Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileTabShadow:Landroid/view/View;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mSdCardTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTab:Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v0, Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-direct {v0, p0, v3}, Lcom/adobe/reader/ARFileEntryAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {p0, v5}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "recentFilesTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "pdfFileTab"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.adobe.reader.FileBrowserReturnData"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/ARFileOpen;->setResult(ILandroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/adobe/reader/ARFileOpen;->mFileSelected:Z

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->finish()V

    return-void
.end method

.method private recentFilesExist()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/adobe/reader/ARFileBrowserUtils;->getRecentFilesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPdfFilesTab()V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->updateTabHeaders()V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/adobe/reader/ARFileOpen;->mFullScanCompleted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v1}, Lcom/adobe/reader/ARFileEntryAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mUiThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntryAdapter;->clear()V

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->enumerateFile:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    sget v1, Lcom/adobe/reader/ARFileOpen;->BACKGROUND_THREAD_PRIORITY:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showRecentFilesTab()V
    .locals 4

    const/4 v3, 0x4

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->updateTabHeaders()V

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->recentFilesExist()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v1}, Lcom/adobe/reader/ARFileEntryAdapter;->clear()V

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/adobe/reader/ARFileEntryAdapter;->addAll(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTabHeaders()V
    .locals 7

    const/high16 v6, 0x7f060000

    const v5, 0x7f020033

    const v4, 0x7f020023

    const/4 v3, 0x4

    const/4 v2, 0x0

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileTabShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mSdCardTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesTabHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesTabHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFileTabShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFileTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mSdCardTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/ARFileOpen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->setContentView(I)V

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->initializeTabs()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mBackgroundThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mUiThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mUiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/adobe/reader/ARFileOpen;->mUiThreadInitialPriority:I

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    new-instance v1, Lcom/adobe/reader/ARFileOpen$1;

    invoke-direct {v1, p0}, Lcom/adobe/reader/ARFileOpen$1;-><init>(Lcom/adobe/reader/ARFileOpen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mClearRecentFilesMenuItem:Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    long-to-int v0, p4

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v2, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v1, v2}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/reader/ARFileOpen;->mRecentFilesList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/adobe/reader/ARFileOpen;->openFile(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    invoke-virtual {v1}, Lcom/adobe/reader/ARFileEntryAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mPdfFilesAdapter:Lcom/adobe/reader/ARFileEntryAdapter;

    long-to-int v2, p4

    invoke-virtual {v0, v2}, Lcom/adobe/reader/ARFileEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/adobe/reader/ARFileOpen;->openFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->openOptionsMenu()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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
    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->clearRecentFileList()V

    move v0, v2

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARAboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/ARFileOpen;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mThreadTerminationRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->destroyBackgroundThread()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mClearRecentFilesMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->recentFilesExist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mClearRecentFilesMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen;->mClearRecentFilesMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const-string v3, "pdfFileTab"

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/ARFileOpen;->mFullScanCompleted:Z

    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v2, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v1, v2}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->recentFilesExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->showRecentFilesTab()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "pdfFileTab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/reader/ARFileOpen;->showPdfFilesTab()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/ARFileOpen;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "pdfFileTab"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method
